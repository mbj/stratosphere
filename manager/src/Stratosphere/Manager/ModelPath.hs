module Stratosphere.Manager.ModelPath
  ( modelFilePath
  , modelUrl
  ) where

import Prelude

import System.FilePath.Posix ((</>))

-- | Path to the CloudFormation resource specification file
modelFilePath :: FilePath
modelFilePath = "manager" </> "model" </> "CloudFormationResourceSpecification.json"

-- | URL for the CloudFormation resource specification
modelUrl :: String
modelUrl = "https://d1uauaxba7bl26.cloudfront.net/latest/CloudFormationResourceSpecification.json"
