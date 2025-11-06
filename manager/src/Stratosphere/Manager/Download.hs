module Stratosphere.Manager.Download
  ( downloadModelFile
  ) where

import Prelude

import Control.Exception (Exception, throwIO)
import Control.Monad (unless)
import Network.HTTP.Client (Manager, httpLbs, parseRequest, responseBody, responseStatus)
import Network.HTTP.Types.Status (statusCode)
import Stratosphere.Manager.ModelPath (modelFilePath, modelUrl)
import System.Directory (createDirectoryIfMissing)
import System.FilePath (takeDirectory)
import System.IO (hPutStrLn, stderr)

import qualified Data.ByteString.Lazy as LBS

data DownloadError
  = NetworkError String
  deriving (Eq, Show)

instance Exception DownloadError

-- | Download the CloudFormation model file
downloadModelFile :: Manager -> IO ()
downloadModelFile manager = do
  hPutStrLn stderr $ "Downloading from: " <> modelUrl
  hPutStrLn stderr $ "Saving to: " <> modelFilePath

  -- Create output directory if it doesn't exist
  createDirectoryIfMissing True (takeDirectory modelFilePath)

  -- Parse URL and make request
  request <- parseRequest modelUrl
  response <- httpLbs request manager

  -- Check response status
  let status = statusCode $ responseStatus response
  unless (status >= 200 && status < 300) $
    throwIO $ NetworkError $ "HTTP error: " <> show status

  -- Write response body to file
  LBS.writeFile modelFilePath (responseBody response)
  hPutStrLn stderr "Download completed successfully"
