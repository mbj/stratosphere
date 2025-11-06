module Stratosphere.Manager.Release
  ( releasePackages
  , ReleaseMode(..)
  ) where

import Prelude

import Data.List (sort)
import Stratosphere.Manager.ModelPath (modelFilePath)
import System.Exit (ExitCode(..))
import System.Process.Typed (proc, runProcess)

import qualified Data.Map                           as Map
import qualified Data.Set                           as Set
import qualified Data.Text                          as Text
import qualified Data.Text.IO                       as Text
import qualified Stratosphere.Manager.Generator.Raw as Raw

-- | Release mode: candidate vs full release
data ReleaseMode
  = Candidate  -- ^ Upload as candidates (can review before publishing)
  | Publish    -- ^ Upload and publish immediately
  deriving (Eq, Show)

-- | Release all packages except manager using stack upload
releasePackages :: ReleaseMode -> IO ()
releasePackages releaseMode = do
  -- Read the model file to get service names
  rawSpec <- either error id <$> Raw.readSpec modelFilePath
  let services = extractServices rawSpec
      packages = buildPackageList services

  let modeText = case releaseMode of
        Candidate -> "candidate"
        Publish -> "published"

  Text.putStrLn $ "Releasing packages to Hackage as " <> modeText <> " using stack upload..."
  Text.putStrLn $ "Total packages to release: " <> Text.pack (show (length packages))
  Text.putStrLn ""

  -- Release each package
  mapM_ (releasePackage releaseMode) packages

  Text.putStrLn ""
  case releaseMode of
    Candidate -> Text.putStrLn "All packages uploaded as candidates successfully. Review at https://hackage.haskell.org/packages/candidates/ and publish via Hackage web interface."
    Publish -> Text.putStrLn "All packages released successfully"

-- | Extract unique services from the specification
extractServices :: Raw.Spec -> [Raw.Service]
extractServices rawSpec =
  sort . Set.toList . Set.fromList $ (.service) <$> Map.keys rawSpec.specResourceTypes

-- | Build the list of packages to release (excludes manager)
buildPackageList :: [Raw.Service] -> [String]
buildPackageList services = "stratosphere" : map buildServicePackageName services

-- | Build package name for a service
buildServicePackageName :: Raw.Service -> String
buildServicePackageName service =
  Text.unpack $ "stratosphere-" <> Text.toLower service.service

-- | Release a single package using stack upload
releasePackage :: ReleaseMode -> String -> IO ()
releasePackage releaseMode packageName = do
  let args = case releaseMode of
        Candidate -> ["upload", "--candidate", packageName]
        Publish -> ["upload", packageName]
      action = case releaseMode of
        Candidate -> "Uploading candidate"
        Publish -> "Releasing"

  Text.putStrLn $ action <> ": " <> Text.pack packageName
  exitCode <- runProcess $ proc "stack" args
  case exitCode of
    ExitSuccess -> Text.putStrLn $ "✓ Successfully " <> (if releaseMode == Candidate then "uploaded candidate" else "released") <> " " <> Text.pack packageName
    ExitFailure code -> do
      Text.putStrLn $ "✗ Failed to " <> (if releaseMode == Candidate then "upload candidate" else "release") <> " " <> Text.pack packageName <> " (exit code: " <> Text.pack (show code) <> ")"
      error $ "Failed to release package: " <> packageName
