{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import Control.Monad (when)
import Data.List (nub)
import Gen.Prelude
import Gen.RawSpec
import Gen.Render
import Gen.Specifications
import System.Directory
import System.FilePath.Posix
import Text.Shakespeare.Text (st)

import qualified Data.Text    as Text
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
  rawSpec <- either error id <$> readRawSpec ("gen" </> "model" </> "sorted-spec.json")

  let
    spec = specFromRaw rawSpec
    modules =
      createModules
      (cloudFormationSpecPropertyTypes spec)
      (cloudFormationSpecResourceTypes spec)

  genExists <- doesDirectoryExist ("library-gen")
  when genExists $
    removeDirectoryRecursive ("library-gen")
  createDirectory ("library-gen")
  createDirectory ("library-gen" </> "Stratosphere")

  mapM_ renderModule modules
  renderTopLevelModule modules

renderModule :: Module -> IO ()
renderModule module'@Module {..} = do
  let
    moduleDir = "library-gen" </> foldl1 (</>) (Text.unpack <$> Text.splitOn "." modulePath)
    fileName = Text.unpack moduleName <.> "hs"
    filePath = moduleDir </> fileName
    toJsonOrProps =
      if moduleIsResource
      then renderToResourceProperties module'
      else renderToJSON module'

  createDirectoryIfMissing True moduleDir
  putStrLn ("Writing: " <> filePath)
  TIO.writeFile filePath [st|
#{renderDocstring moduleDocumentation}

module #{modulePath}.#{moduleName} where

import Prelude
import Stratosphere.ResourceImports
#{renderDependencies module' moduleProperties}

#{renderResourceTypeDecl module'}

#{toJsonOrProps}

#{renderConstructor module'}

#{renderLenses module'}
|]

renderDependencies :: Module -> [Property] -> Text.Text
renderDependencies Module {..} props = Text.intercalate "\n" deps
  where
    customDeps = customTypeNames props
    propertyDeps = subPropertyTypeNames props
    -- The EMR Cluster configurations references itself, so we have to filter
    -- out the case where things reference themselves.
    nonRecursivePropertyDeps = nub $ filter (/= moduleName) propertyDeps
    deps =
      (if null customDeps then [] else ["import Stratosphere.Types"]) ++
      fmap (\d -> Text.concat ["import Stratosphere.ResourceProperties.", d]) nonRecursivePropertyDeps

renderTopLevelModule :: [Module] -> IO ()
renderTopLevelModule modules = do
  let
    paths = fmap (\Module{..} -> modulePath <> "." <> moduleName) modules
    modPath = "library-gen" </> "Stratosphere" </> "Resources.hs"
  putStrLn ("Writing: " <> modPath)
  TIO.writeFile modPath [st|-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html
--
-- The required Resources section declare the AWS resources that you want as
-- part of your stack, such as an Amazon EC2 instance or an Amazon S3 bucket.
-- You must declare each resource separately; however, you can specify multiple
-- resources of the same type. If you declare multiple resources, separate them
-- with commas.

module Stratosphere.Resources (module X) where

#{renderImports paths}
import Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy as X
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy as X
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy as X
import Stratosphere.ResourceAttributes.CreationPolicy as X
import Stratosphere.ResourceAttributes.ResourceSignal as X
import Stratosphere.ResourceAttributes.UpdatePolicy as X
import Stratosphere.Resource as X
|]

renderImports :: [Text] -> Text
renderImports paths = Text.unlines $ fmap mkImport paths
  where
    mkImport :: Text -> Text
    mkImport path = "import " <> path <> " as X"
