{-# LANGUAGE QuasiQuotes #-}

module Main where

import Control.Monad (when)
import Data.List (nub)
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import System.Directory
import System.FilePath.Posix
import Text.Shakespeare.Text (st)

import Gen.ReadRawSpecFile
import Gen.Render
import Gen.Specifications

main :: IO ()
main = do
  specEither :: Either String RawCloudFormationSpec <- decodeFile $ "model" </> "CloudFormationResourceSpecification.json"
  let
    rawSpec = either error id specEither
    spec = specFromRaw rawSpec

  genExists <- doesDirectoryExist (".." </> "library-gen")
  when genExists $
    removeDirectoryRecursive (".." </> "library-gen")
  createDirectory (".." </> "library-gen")
  createDirectory (".." </> "library-gen" </> "Stratosphere")

  let
    modules =
      createModules
      (cloudFormationSpecPropertyTypes spec)
      (cloudFormationSpecResourceTypes spec)
  mapM_ renderModule modules
  renderTopLevelModule modules

renderModule :: Module -> IO ()
renderModule module'@Module {..} = do
  let
    moduleDir = ".." </> "library-gen" </> foldl1 (</>) (T.unpack <$> T.splitOn "." modulePath)
    fileName = T.unpack moduleName <.> "hs"
    filePath = moduleDir </> fileName
  createDirectoryIfMissing True moduleDir
  putStrLn ("Writing: " ++ show filePath)
  TIO.writeFile filePath [st|{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

#{renderDocstring moduleDocumentation}

module #{modulePath}.#{moduleName} where

import Stratosphere.ResourceImports
#{renderDependencies module' moduleProperties}

#{renderResourceTypeDecl module'}

#{renderToJSON module'}

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
    resourceModules = filter moduleIsResource modules
    modPath = ".." </> "library-gen" </> "Stratosphere" </> "Resources.hs"
  putStrLn ("Writing: " ++ show modPath)
  TIO.writeFile modPath [st|{-# LANGUAGE CPP #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

#if MIN_VERSION_GLASGOW_HASKELL(8,0,1,0)
{-# OPTIONS_GHC -fmax-pmcheck-iterations=40000000 #-}
#endif

-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html
--
-- The required Resources section declare the AWS resources that you want as
-- part of your stack, such as an Amazon EC2 instance or an Amazon S3 bucket.
-- You must declare each resource separately; however, you can specify multiple
-- resources of the same type. If you declare multiple resources, separate them
-- with commas.

module Stratosphere.Resources
  ( module X
  , Resource (..)
  , resource
  , resourceName
  , resourceProperties
  , resourceDeletionPolicy
  , resourceCreationPolicy
  , resourceUpdatePolicy
  , resourceDependsOn
  , resourceMetadata
  , resourceCondition
  , ResourceProperties (..)
  , DeletionPolicy (..)
  , Resources (..)
  ) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types
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
import Stratosphere.Values

data ResourceProperties
#{renderADT resourceModules}
  deriving (Show, Eq)

data DeletionPolicy
  = Delete
  | Retain
  | Snapshot
  deriving (Show, Eq, Generic)

instance ToJSON DeletionPolicy where

data Resource =
  Resource
  { _resourceName :: T.Text
  , _resourceProperties :: ResourceProperties
  , _resourceDeletionPolicy :: Maybe DeletionPolicy
  , _resourceCreationPolicy :: Maybe CreationPolicy
  , _resourceUpdatePolicy :: Maybe UpdatePolicy
  , _resourceDependsOn :: Maybe [T.Text]
  , _resourceMetadata :: Maybe Object
  , _resourceCondition :: Maybe T.Text
  } deriving (Show, Eq)

instance ToRef Resource b where
  toRef r = Ref (_resourceName r)

-- | Convenient constructor for 'Resource' with required arguments.
resource
  :: T.Text -- ^ Logical name
  -> ResourceProperties
  -> Resource
resource rn rp =
  Resource
  { _resourceName = rn
  , _resourceProperties = rp
  , _resourceDeletionPolicy = Nothing
  , _resourceCreationPolicy = Nothing
  , _resourceUpdatePolicy = Nothing
  , _resourceDependsOn = Nothing
  , _resourceMetadata = Nothing
  , _resourceCondition = Nothing
  }

$(makeLenses ''Resource)

resourceToJSON :: Resource -> Value
resourceToJSON (Resource _ props dp cp up deps meta cond) =
    object $ resourcePropertiesJSON props ++ catMaybes
    [ maybeField "DeletionPolicy" dp
    , maybeField "CreationPolicy" cp
    , maybeField "UpdatePolicy" up
    , maybeField "DependsOn" deps
    , maybeField "Metadata" meta
    , maybeField "Condition" cond
    ]

resourcePropertiesJSON :: ResourceProperties -> [Pair]
#{renderToJSONFuncs resourceModules}

-- | Wrapper around a list of 'Resources's to we can modify the aeson
-- instances.
newtype Resources = Resources { unResources :: [Resource] }
  deriving (Show, Eq, Semigroup, Monoid)

instance IsList Resources where
  type Item Resources = Resource
  fromList = Resources
  toList = unResources

instance NamedItem Resource where
  itemName = _resourceName
  nameToJSON = resourceToJSON

instance ToJSON Resources where
  toJSON = namedItemToJSON . unResources
|]
