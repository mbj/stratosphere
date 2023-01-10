{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import Control.Monad (when)
import Data.List (nub)
import Data.Text (Text)
import Gen.ReadRawSpecFile
import Gen.Render
import Gen.Specifications
import Prelude
import System.Directory
import System.FilePath.Posix
import Text.Shakespeare.Text (st)

import qualified Data.Text as T
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
  rawSpec <- either error id <$> decodeFile ("gen" </> "model" </> "sorted-spec.json")

  let
    spec = specFromRaw rawSpec
    !modules =
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
    moduleDir = "library-gen" </> foldl1 (</>) (T.unpack <$> T.splitOn "." modulePath)
    fileName = T.unpack moduleName <.> "hs"
    filePath = moduleDir </> fileName
    toJsonOrProps =
      if moduleIsResource
      then renderToResourceProperties module'
      else renderToJSON module'

  createDirectoryIfMissing True moduleDir
  putStrLn ("Writing: " ++ show filePath)
  TIO.writeFile filePath [st|{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

#{renderDocstring moduleDocumentation}

module #{modulePath}.#{moduleName} where

import Stratosphere.ResourceImports
#{renderDependencies module' moduleProperties}

#{renderResourceTypeDecl module'}

#{toJsonOrProps}

#{renderConstructor module'}

#{renderLenses module'}
|]

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


renderTopLevelModule :: [Module] -> IO ()
renderTopLevelModule modules = do
  let
    paths = fmap (\Module{..} -> modulePath <> "." <> moduleName) modules
    modPath = "library-gen" </> "Stratosphere" </> "Resources.hs"
  putStrLn ("Writing: " ++ show modPath)
  TIO.writeFile modPath [st|{-# LANGUAGE CPP #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html
--
-- The required Resources section declare the AWS resources that you want as
-- part of your stack, such as an Amazon EC2 instance or an Amazon S3 bucket.
-- You must declare each resource separately; however, you can specify multiple
-- resources of the same type. If you declare multiple resources, separate them
-- with commas.

module Stratosphere.Resources (module X) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Semigroup (Semigroup)
import qualified Data.Text as T
import GHC.Exts (IsList(..))
import GHC.Generics (Generic)

#{renderImports paths}
import Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy as X
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy as X
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy as X
import Stratosphere.ResourceAttributes.CreationPolicy as X
import Stratosphere.ResourceAttributes.ResourceSignal as X
import Stratosphere.ResourceAttributes.UpdatePolicy as X
import Stratosphere.Helpers
import Stratosphere.Resource as X
import Stratosphere.ResourceProperties
import Stratosphere.Values
|]

renderImports :: [Text] -> Text
renderImports paths = T.unlines $ fmap mkImport paths
  where
    mkImport :: Text -> Text
    mkImport path = "import " <> path <> " as X"
