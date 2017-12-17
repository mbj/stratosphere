module Main where

import Control.Monad (when)
import Data.Aeson
import Data.List (nub)
import Data.Monoid ((<>))
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import qualified Filesystem as FS
import Filesystem.Path.CurrentOS ((</>))
import qualified Filesystem.Path.CurrentOS as FP
import Text.EDE

import Gen.ReadRawSpecFile
import Gen.Render
import Gen.Specifications

main :: IO ()
main = do
  specEither :: Either String RawCloudFormationSpec <- decodeFile $ "model" </> "CloudFormationResourceSpecification.json"
  let
    rawSpec = either error id specEither
    spec = specFromRaw rawSpec

  genExists <- FS.isDirectory (".." FP.</> "library-gen")
  when genExists $
    FS.removeTree (".." FP.</> "library-gen")
  FS.createDirectory True (".." FP.</> "library-gen")
  FS.createDirectory True (".." FP.</> "library-gen" FP.</> "Stratosphere")

  let
    modules =
      createModules
      (cloudFormationSpecPropertyTypes spec)
      (cloudFormationSpecResourceTypes spec)
  renderModules modules
  renderTopLevelModule modules

renderModules :: [Module] -> IO ()
renderModules modules = do
  template <- readTemplate "templates/resource-module.ede"
  mapM_ (renderModule template) modules

renderModule :: Template -> Module -> IO ()
renderModule template module'@Module {..} = do
  let
    params =
      [ "name" .= moduleName
      , "docstring" .= renderDocstring moduleDocumentation
      , "moduleBase" .= modulePath
      , "dependencies" .= renderDependencies module' moduleProperties
      , "typeDecl" .= renderResourceTypeDecl module'
      , "jsonInstances" .= renderToFromJSON module'
      , "constructor" .= renderConstructor module'
      , "lenses" .= renderLenses module'
      , "type" .= fromPairs [ "hasType" .= moduleIsResource
                            , "value" .= moduleResourceType
                            ]
      ]
    moduleText =
      case render template (fromPairs params) of
        (Text.EDE.Success r) -> TL.toStrict r
        (Failure f) -> error $ "Failure rendering: " ++ show f
    modDir = ".." FP.</> "library-gen" FP.</>
             FP.concat (FP.fromText <$> T.splitOn "." modulePath)
    fileName = FP.fromText moduleName FP.<.> "hs"
    filePath = modDir FP.</> fileName
  FS.createDirectory True modDir
  putStrLn ("Writing: " ++ show filePath)
  FS.writeTextFile filePath moduleText

renderDependencies :: Module -> [Property] -> T.Text
renderDependencies Module {..} props = T.intercalate "\n" deps
  where
    customDeps = customTypeNames props
    propertyDeps = subPropertyTypeNames props
    -- The EMR Cluster configurations references itself, so we have to filter
    -- out the case where things reference themselves.
    nonRecursivePropertyDeps = nub $ filter (/= moduleName) propertyDeps
    deps =
      (if null customDeps then [] else ["import Stratosphere.Types"]) ++
      fmap (\d -> T.concat ["import Stratosphere.ResourceProperties.", d]) nonRecursivePropertyDeps


readTemplate :: FP.FilePath -> IO Template
readTemplate fp =
  do tempResult <- eitherParseFile (FP.encodeString fp)
     either fail return tempResult

renderTopLevelModule :: [Module] -> IO ()
renderTopLevelModule modules = do
  let
    paths = fmap (\Module{..} -> modulePath <> "." <> moduleName) modules
    resourceModules = filter moduleIsResource modules
    params =
      [ "moduleImports" .= renderImports paths
      , "resourceADT" .= renderADT resourceModules
      , "toJSONFuncs" .= renderToJSONFuncs resourceModules
      , "fromJSONCases" .= renderFromJSONCases resourceModules
      ]

  template <- readTemplate "templates/Resources.hs.ede"
  let
    modText =
      case render template (fromPairs params) of
        (Text.EDE.Success r) -> TL.toStrict r
        (Failure f) -> error $ "Failure rendering: " ++ show f
    modPath = ".." FP.</> "library-gen" FP.</> "Stratosphere" FP.</> "Resources.hs"
  putStrLn ("Writing: " ++ show modPath)
  FS.writeTextFile modPath modText
