module Stratosphere.Manager.Release
  ( releasePackages
  , ReleaseMode(..)
  ) where

import Prelude

import Data.List (sort)
import Data.Text (Text)
import Stratosphere.Manager.ModelPath (modelFilePath)
import System.Process.Typed (proc, runProcess_)
import System.FilePath ((</>))

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

  let definitions = buildPackageDefinitions $ extractServices rawSpec

  let modeText = case releaseMode of
        Candidate -> "candidate"
        Publish -> "published"

  Text.putStrLn $ "Releasing packages to Hackage as " <> modeText <> " using stack upload..."
  Text.putStrLn $ "Total packages to release: " <> Text.pack (show (length definitions))
  Text.putStrLn ""

  mapM_ (releasePackage releaseMode) definitions

  Text.putStrLn ""
  case releaseMode of
    Candidate -> Text.putStrLn "All packages uploaded as candidates successfully. Review at https://hackage.haskell.org/packages/candidates/ and publish via Hackage web interface."
    Publish -> Text.putStrLn "All packages released successfully"

-- | Extract unique services from the specification
extractServices :: Raw.Spec -> [Raw.Service]
extractServices rawSpec =
  sort . Set.toList . Set.fromList $ (.service) <$> Map.keys rawSpec.specResourceTypes

buildPackageDefinitions :: [Raw.Service] -> [(Text, FilePath)]
buildPackageDefinitions services = ("stratosphere", ".") : map buildDefinition services
  where
    buildDefinition :: Raw.Service -> (Text, FilePath)
    buildDefinition service =
      ("stratosphere-" <> slug, "services" </> Text.unpack slug)
     where
       slug = Text.toLower service.service

-- | Release a single package using stack upload
releasePackage :: ReleaseMode -> (Text, FilePath) -> IO ()
releasePackage releaseMode (packageName, directory) = do
  Text.putStrLn $ "Processing " <> message <> ": " <> packageName

  runProcess_ $ proc "stack" arguments
  where
     (arguments, message) = case releaseMode of
        Candidate -> (["upload", "--candidate", directory], "candidate")
        Publish   -> (["upload", directory], "release")
