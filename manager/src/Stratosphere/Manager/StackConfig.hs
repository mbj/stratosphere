{-# LANGUAGE DeriveGeneric #-}

module Stratosphere.Manager.StackConfig
  ( generateStackConfigs
  ) where

import Prelude

import Data.Aeson (ToJSON(..), object, (.=))
import Data.List (sort)
import Data.Yaml (encodeFile)
import GHC.Generics (Generic)
import Stratosphere.Manager.ModelPath (modelFilePath)

import qualified Data.Map                           as Map
import qualified Data.Set                           as Set
import qualified Data.Text                          as Text
import qualified Data.Text.IO                       as Text
import qualified Stratosphere.Manager.Generator.Raw as Raw

-- | Stack configuration file structure
data StackConfig = StackConfig
  { resolver           :: String
  , extraDependencies  :: Maybe [ExtraDependency]
  , flags              :: Map.Map String PackageFlags
  , packages           :: [String]
  } deriving (Generic)

instance ToJSON StackConfig where
  toJSON (StackConfig resolverValue extraDependenciesValue flagsValue packagesValue) =
    object $
      [ "resolver" .= resolverValue ]
      ++ maybe [] (\dependencies -> ["extra-deps" .= dependencies]) extraDependenciesValue
      ++ [ "flags" .= flagsValue
         , "packages" .= packagesValue
         ]

-- | Extra dependency entry (can be string or object)
data ExtraDependency
  = ExtraDependencyString String
  | ExtraDependencyGit GitDependency
  deriving (Generic)

instance ToJSON ExtraDependency where
  toJSON (ExtraDependencyString stringValue) = toJSON stringValue
  toJSON (ExtraDependencyGit gitDependency) = toJSON gitDependency

data GitDependency = GitDependency
  { git    :: String
  , commit :: String
  } deriving (Generic)

instance ToJSON GitDependency

-- | Package flags
newtype PackageFlags = PackageFlags
  { development :: Bool
  } deriving (Generic)

instance ToJSON PackageFlags

data StackVersion = StackVersion
  { ghcVersion                 :: String
  , versionResolver            :: String
  , versionExtraDependencies   :: Maybe [ExtraDependency]
  }

-- | Stack configurations for different GHC versions
stackVersions :: [StackVersion]
stackVersions =
  [ StackVersion
      { ghcVersion = "9.12"
      , versionResolver = "nightly-2025-10-26"
      , versionExtraDependencies = Just
          [ ExtraDependencyGit $ GitDependency
              { git = "https://github.com/google/ghc-source-gen.git"
              , commit = "42d650d3b62c6bc4e3d33d1abc91e3e60f446941"
              }
          ]
      }
  , StackVersion
      { ghcVersion = "9.10"
      , versionResolver = "lts-24.18"
      , versionExtraDependencies = Nothing
      }
  , StackVersion
      { ghcVersion = "9.8"
      , versionResolver = "lts-23.28"
      , versionExtraDependencies = Nothing
      }
  , StackVersion
      { ghcVersion = "9.6"
      , versionResolver = "lts-22.44"
      , versionExtraDependencies = Nothing
      }
  , StackVersion
      { ghcVersion = "9.4"
      , versionResolver = "lts-21.25"
      , versionExtraDependencies = Nothing
      }
  ]

-- | Generate all stack configuration files
generateStackConfigs :: IO ()
generateStackConfigs = do
  -- Read the model file to get service names
  rawSpec <- either error id <$> Raw.readSpec modelFilePath
  let services = extractServices rawSpec

  -- Generate each stack config file
  mapM_ (generateStackConfig services) stackVersions

  Text.putStrLn "Generated stack configuration files successfully"

-- | Extract unique services from the specification
extractServices :: Raw.Spec -> [Raw.Service]
extractServices rawSpec =
  sort . Set.toList . Set.fromList $ (.service) <$> Map.keys rawSpec.specResourceTypes

-- | Generate a single stack configuration file
generateStackConfig :: [Raw.Service] -> StackVersion -> IO ()
generateStackConfig services version = do
  let fileName = "stack-" <> version.ghcVersion <> ".yaml"
      config = buildStackConfig services version

  Text.putStrLn $ "Writing: " <> Text.pack fileName
  encodeFile fileName config

-- | Build the stack configuration data structure
buildStackConfig :: [Raw.Service] -> StackVersion -> StackConfig
buildStackConfig services version = StackConfig
  { resolver = version.versionResolver
  , extraDependencies = version.versionExtraDependencies
  , flags = buildFlags services version
  , packages = buildPackages services version
  }

-- | Build the flags map
buildFlags :: [Raw.Service] -> StackVersion -> Map.Map String PackageFlags
buildFlags services version =
  Map.fromList $
    [ ("stratosphere", PackageFlags True) ]
    ++ managerFlag
    ++ map buildServiceFlag services
  where
    managerFlag = if version.ghcVersion == "9.12"
                  then [("stratosphere-manager", PackageFlags True)]
                  else []

-- | Build flag entry for a service
buildServiceFlag :: Raw.Service -> (String, PackageFlags)
buildServiceFlag service =
  (Text.unpack $ "stratosphere-" <> Text.toLower service.service, PackageFlags True)

-- | Build the packages list
buildPackages :: [Raw.Service] -> StackVersion -> [String]
buildPackages services version =
  [ "."
  , "examples"
  ]
  ++ managerPackage
  ++ map buildServicePackage services
  where
    managerPackage = if version.ghcVersion == "9.12"
                     then ["manager"]
                     else []

-- | Build package path for a service
buildServicePackage :: Raw.Service -> String
buildServicePackage service =
  Text.unpack $ "services/" <> Text.toLower service.service
