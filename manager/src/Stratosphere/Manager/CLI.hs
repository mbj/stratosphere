module Stratosphere.Manager.CLI
  ( main
  ) where

import Prelude

import Control.Exception (catch, displayException)
import Network.HTTP.Client (newManager)
import Network.HTTP.Client.TLS (tlsManagerSettings)
import Options.Applicative
import Stratosphere.Manager.ModelPath (modelFilePath)
import System.Exit (exitFailure)
import System.IO (hPutStrLn, stderr)

import qualified Data.Map                            as Map
import qualified Data.Set                            as Set
import qualified Data.Text.IO                        as Text
import qualified Stratosphere.Manager.Download       as Download
import qualified Stratosphere.Manager.Generator.Main as Generator
import qualified Stratosphere.Manager.Generator.Raw  as Raw
import qualified Stratosphere.Manager.Release        as Release
import qualified Stratosphere.Manager.StackConfig    as StackConfig

-- | Top-level command structure
data Command
  = Download
  | Generate
  | GenerateStackConfigs
  | ListServices
  | Release ReleaseOptions
  deriving (Eq, Show)

-- | Release command options
data ReleaseOptions = ReleaseOptions
  { releaseCandidate :: Bool
  } deriving (Eq, Show)

-- | Main entry point
main :: IO ()
main = do
  cmd <- execParser opts
  runCommand cmd `catch` \e -> do
    hPutStrLn stderr $ "Error: " <> displayException (e :: IOError)
    exitFailure
  where
    opts = info (commandParser <**> helper)
      ( fullDesc
     <> progDesc "Stratosphere Manager - Tool for managing Stratosphere project"
     <> header "stratosphere-manager - Stratosphere project manager"
      )

-- | Execute the selected command
runCommand :: Command -> IO ()
runCommand Download = do
  manager <- newManager tlsManagerSettings
  Download.downloadModelFile manager
runCommand Generate = Generator.main
runCommand GenerateStackConfigs = StackConfig.generateStackConfigs
runCommand ListServices = listServices
runCommand (Release options) =
  let mode = if options.releaseCandidate
             then Release.Candidate
             else Release.Publish
  in Release.releasePackages mode

-- | Parser for all commands
commandParser :: Parser Command
commandParser = hsubparser
  ( command "download"
    ( info (pure Download)
      ( progDesc "Download CloudFormation model file" )
    )
 <> command "generate"
    ( info (pure Generate)
      ( progDesc "Generate Haskell code from CloudFormation specification" )
    )
 <> command "generate-stack-configs"
    ( info (pure GenerateStackConfigs)
      ( progDesc "Generate stack.yaml configuration files for all GHC versions" )
    )
 <> command "list-services"
    ( info (pure ListServices)
      ( progDesc "List available AWS services from the model file" )
    )
 <> command "release"
    ( info releaseParser
      ( progDesc "Release all non-manager packages to Hackage using stack upload" )
    )
  )

-- | Parser for release command options
releaseParser :: Parser Command
releaseParser = Release <$> (ReleaseOptions <$> candidateFlag)
  where
    candidateFlag = switch
      ( long "candidate"
     <> help "Upload as package candidates (allows review before publishing)"
      )

-- | List all services available in the CloudFormation model
listServices :: IO ()
listServices = do
  rawSpec <- either error id <$> Raw.readSpec modelFilePath
  mapM_ (Text.putStrLn . Raw.toText) $ Set.toList . Set.fromList $ (.service) <$> Map.keys rawSpec.specResourceTypes
