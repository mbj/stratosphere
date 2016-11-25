module Main where

import Data.Aeson
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import Extra (whenM)
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

  whenM (FS.isDirectory (".." FP.</> "library-gen")) $
    FS.removeTree (".." FP.</> "library-gen")
  FS.createDirectory True (".." FP.</> "library-gen")
  FS.createDirectory True (".." FP.</> "library-gen" FP.</> "Stratosphere")

  renderModules $
    createModules
    (cloudFormationSpecPropertyTypes spec)
    (cloudFormationSpecResourceTypes spec)
  -- resources <- genModule ("models" FP.</> "resources") "Stratosphere.Resources"
  -- resourceProperties <- genModule ("models" FP.</> "resource-properties") "Stratosphere.ResourceProperties"
  -- resourceAttributes <- genModule ("models" FP.</> "resource-attributes") "Stratosphere.ResourceAttributes"

  -- renderTopLevelModule resources resourceProperties resourceAttributes

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
      , "dependencies" .= renderDependencies moduleProperties
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

renderDependencies :: [Property] -> T.Text
renderDependencies props = T.intercalate "\n" deps
  where
    depTypes = nonPrimitivePropertyDependencies props
    deps = fmap (\d -> T.concat ["import Stratosphere.ResourceProperties.", d]) depTypes

readTemplate :: FP.FilePath -> IO Template
readTemplate fp =
  do tempResult <- eitherParseFile (FP.encodeString fp)
     either fail return tempResult

-- renderTopLevelModule :: [Resource] -> [Resource] -> [Resource] -> IO ()
-- renderTopLevelModule resources resourceProps resourceAttributes =
--   do let params = [ "resourceImports" .=
--                     renderImports "Stratosphere.Resources." resources
--                   , "resourcePropImports" .=
--                     renderImports "Stratosphere.ResourceProperties." resourceProps
--                   , "resourceAttributeImports" .=
--                     renderImports "Stratosphere.ResourceAttributes." resourceAttributes
--                   , "resourceADT" .= renderADT resources
--                   , "toJSONFuncs" .= renderToJSONFuncs resources
--                   , "fromJSONCases" .= renderFromJSONCases resources
--                   ]

--      template <- readTemplate "templates/Resources.hs.ede"
--      modText <- case render template (fromPairs params) of
--                   (Text.EDE.Success r) -> return (TL.toStrict r)
--                   (Failure f) -> fail $ "Failure rendering: " ++ show f

--      let modPath = ".." FP.</> "library-gen" FP.</> "Stratosphere" FP.</> "Resources.hs"
--      putStrLn ("Writing: " ++ show modPath)
--      FS.writeTextFile modPath modText
