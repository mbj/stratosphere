{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html

module Stratosphere.Resources.CodePipelinePipeline where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStore
import Stratosphere.ResourceProperties.CodePipelinePipelineStageTransition
import Stratosphere.ResourceProperties.CodePipelinePipelineStageDeclaration

-- | Full data type definition for CodePipelinePipeline. See
-- | 'codePipelinePipeline' for a more convenient constructor.
data CodePipelinePipeline =
  CodePipelinePipeline
  { _codePipelinePipelineArtifactStore :: CodePipelinePipelineArtifactStore
  , _codePipelinePipelineDisableInboundStageTransitions :: Maybe [CodePipelinePipelineStageTransition]
  , _codePipelinePipelineName :: Maybe (Val Text)
  , _codePipelinePipelineRestartExecutionOnUpdate :: Maybe (Val Bool')
  , _codePipelinePipelineRoleArn :: Val Text
  , _codePipelinePipelineStages :: [CodePipelinePipelineStageDeclaration]
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipeline where
  toJSON CodePipelinePipeline{..} =
    object
    [ "ArtifactStore" .= _codePipelinePipelineArtifactStore
    , "DisableInboundStageTransitions" .= _codePipelinePipelineDisableInboundStageTransitions
    , "Name" .= _codePipelinePipelineName
    , "RestartExecutionOnUpdate" .= _codePipelinePipelineRestartExecutionOnUpdate
    , "RoleArn" .= _codePipelinePipelineRoleArn
    , "Stages" .= _codePipelinePipelineStages
    ]

instance FromJSON CodePipelinePipeline where
  parseJSON (Object obj) =
    CodePipelinePipeline <$>
      obj .: "ArtifactStore" <*>
      obj .: "DisableInboundStageTransitions" <*>
      obj .: "Name" <*>
      obj .: "RestartExecutionOnUpdate" <*>
      obj .: "RoleArn" <*>
      obj .: "Stages"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelinePipeline' containing required fields as
-- | arguments.
codePipelinePipeline
  :: CodePipelinePipelineArtifactStore -- ^ 'cppArtifactStore'
  -> Val Text -- ^ 'cppRoleArn'
  -> [CodePipelinePipelineStageDeclaration] -- ^ 'cppStages'
  -> CodePipelinePipeline
codePipelinePipeline artifactStorearg roleArnarg stagesarg =
  CodePipelinePipeline
  { _codePipelinePipelineArtifactStore = artifactStorearg
  , _codePipelinePipelineDisableInboundStageTransitions = Nothing
  , _codePipelinePipelineName = Nothing
  , _codePipelinePipelineRestartExecutionOnUpdate = Nothing
  , _codePipelinePipelineRoleArn = roleArnarg
  , _codePipelinePipelineStages = stagesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-artifactstore
cppArtifactStore :: Lens' CodePipelinePipeline CodePipelinePipelineArtifactStore
cppArtifactStore = lens _codePipelinePipelineArtifactStore (\s a -> s { _codePipelinePipelineArtifactStore = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-disableinboundstagetransitions
cppDisableInboundStageTransitions :: Lens' CodePipelinePipeline (Maybe [CodePipelinePipelineStageTransition])
cppDisableInboundStageTransitions = lens _codePipelinePipelineDisableInboundStageTransitions (\s a -> s { _codePipelinePipelineDisableInboundStageTransitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-name
cppName :: Lens' CodePipelinePipeline (Maybe (Val Text))
cppName = lens _codePipelinePipelineName (\s a -> s { _codePipelinePipelineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-restartexecutiononupdate
cppRestartExecutionOnUpdate :: Lens' CodePipelinePipeline (Maybe (Val Bool'))
cppRestartExecutionOnUpdate = lens _codePipelinePipelineRestartExecutionOnUpdate (\s a -> s { _codePipelinePipelineRestartExecutionOnUpdate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-rolearn
cppRoleArn :: Lens' CodePipelinePipeline (Val Text)
cppRoleArn = lens _codePipelinePipelineRoleArn (\s a -> s { _codePipelinePipelineRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-stages
cppStages :: Lens' CodePipelinePipeline [CodePipelinePipelineStageDeclaration]
cppStages = lens _codePipelinePipelineStages (\s a -> s { _codePipelinePipelineStages = a })
