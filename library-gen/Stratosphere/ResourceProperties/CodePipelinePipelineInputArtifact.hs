{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html

module Stratosphere.ResourceProperties.CodePipelinePipelineInputArtifact where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineInputArtifact. See
-- | 'codePipelinePipelineInputArtifact' for a more convenient constructor.
data CodePipelinePipelineInputArtifact =
  CodePipelinePipelineInputArtifact
  { _codePipelinePipelineInputArtifactName :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineInputArtifact where
  toJSON CodePipelinePipelineInputArtifact{..} =
    object
    [ "Name" .= _codePipelinePipelineInputArtifactName
    ]

instance FromJSON CodePipelinePipelineInputArtifact where
  parseJSON (Object obj) =
    CodePipelinePipelineInputArtifact <$>
      obj .: "Name"
  parseJSON _ = mempty

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
