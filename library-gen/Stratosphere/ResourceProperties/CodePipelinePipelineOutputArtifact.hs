{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html

module Stratosphere.ResourceProperties.CodePipelinePipelineOutputArtifact where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineOutputArtifact. See
-- | 'codePipelinePipelineOutputArtifact' for a more convenient constructor.
data CodePipelinePipelineOutputArtifact =
  CodePipelinePipelineOutputArtifact
  { _codePipelinePipelineOutputArtifactName :: Val Text
  } deriving (Show, Generic)

instance ToJSON CodePipelinePipelineOutputArtifact where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON CodePipelinePipelineOutputArtifact where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'CodePipelinePipelineOutputArtifact' containing required
-- | fields as arguments.
codePipelinePipelineOutputArtifact
  :: Val Text -- ^ 'cppoaName'
  -> CodePipelinePipelineOutputArtifact
codePipelinePipelineOutputArtifact namearg =
  CodePipelinePipelineOutputArtifact
  { _codePipelinePipelineOutputArtifactName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts-name
cppoaName :: Lens' CodePipelinePipelineOutputArtifact (Val Text)
cppoaName = lens _codePipelinePipelineOutputArtifactName (\s a -> s { _codePipelinePipelineOutputArtifactName = a })
