{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html

module Stratosphere.ResourceProperties.CodePipelinePipelineInputArtifact where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineInputArtifact. See
-- | 'codePipelinePipelineInputArtifact' for a more convenient constructor.
data CodePipelinePipelineInputArtifact =
  CodePipelinePipelineInputArtifact
  { _codePipelinePipelineInputArtifactName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CodePipelinePipelineInputArtifact where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON CodePipelinePipelineInputArtifact where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'CodePipelinePipelineInputArtifact' containing required
-- | fields as arguments.
codePipelinePipelineInputArtifact
  :: Val Text -- ^ 'cppiaName'
  -> CodePipelinePipelineInputArtifact
codePipelinePipelineInputArtifact namearg =
  CodePipelinePipelineInputArtifact
  { _codePipelinePipelineInputArtifactName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts-name
cppiaName :: Lens' CodePipelinePipelineInputArtifact (Val Text)
cppiaName = lens _codePipelinePipelineInputArtifactName (\s a -> s { _codePipelinePipelineInputArtifactName = a })
