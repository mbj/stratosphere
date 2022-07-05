{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html

module Stratosphere.Resources.CodePipelinePipeline where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStore
import Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStoreMap
import Stratosphere.ResourceProperties.CodePipelinePipelineStageTransition
import Stratosphere.ResourceProperties.CodePipelinePipelineStageDeclaration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CodePipelinePipeline. See
-- 'codePipelinePipeline' for a more convenient constructor.
data CodePipelinePipeline =
  CodePipelinePipeline
  { _codePipelinePipelineArtifactStore :: Maybe CodePipelinePipelineArtifactStore
  , _codePipelinePipelineArtifactStores :: Maybe [CodePipelinePipelineArtifactStoreMap]
  , _codePipelinePipelineDisableInboundStageTransitions :: Maybe [CodePipelinePipelineStageTransition]
  , _codePipelinePipelineName :: Maybe (Val Text)
  , _codePipelinePipelineRestartExecutionOnUpdate :: Maybe (Val Bool)
  , _codePipelinePipelineRoleArn :: Val Text
  , _codePipelinePipelineStages :: [CodePipelinePipelineStageDeclaration]
  , _codePipelinePipelineTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties CodePipelinePipeline where
  toResourceProperties CodePipelinePipeline{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodePipeline::Pipeline"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ArtifactStore",) . toJSON) _codePipelinePipelineArtifactStore
        , fmap (("ArtifactStores",) . toJSON) _codePipelinePipelineArtifactStores
        , fmap (("DisableInboundStageTransitions",) . toJSON) _codePipelinePipelineDisableInboundStageTransitions
        , fmap (("Name",) . toJSON) _codePipelinePipelineName
        , fmap (("RestartExecutionOnUpdate",) . toJSON) _codePipelinePipelineRestartExecutionOnUpdate
        , (Just . ("RoleArn",) . toJSON) _codePipelinePipelineRoleArn
        , (Just . ("Stages",) . toJSON) _codePipelinePipelineStages
        , fmap (("Tags",) . toJSON) _codePipelinePipelineTags
        ]
    }

-- | Constructor for 'CodePipelinePipeline' containing required fields as
-- arguments.
codePipelinePipeline
  :: Val Text -- ^ 'cppRoleArn'
  -> [CodePipelinePipelineStageDeclaration] -- ^ 'cppStages'
  -> CodePipelinePipeline
codePipelinePipeline roleArnarg stagesarg =
  CodePipelinePipeline
  { _codePipelinePipelineArtifactStore = Nothing
  , _codePipelinePipelineArtifactStores = Nothing
  , _codePipelinePipelineDisableInboundStageTransitions = Nothing
  , _codePipelinePipelineName = Nothing
  , _codePipelinePipelineRestartExecutionOnUpdate = Nothing
  , _codePipelinePipelineRoleArn = roleArnarg
  , _codePipelinePipelineStages = stagesarg
  , _codePipelinePipelineTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-artifactstore
cppArtifactStore :: Lens' CodePipelinePipeline (Maybe CodePipelinePipelineArtifactStore)
cppArtifactStore = lens _codePipelinePipelineArtifactStore (\s a -> s { _codePipelinePipelineArtifactStore = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-artifactstores
cppArtifactStores :: Lens' CodePipelinePipeline (Maybe [CodePipelinePipelineArtifactStoreMap])
cppArtifactStores = lens _codePipelinePipelineArtifactStores (\s a -> s { _codePipelinePipelineArtifactStores = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-disableinboundstagetransitions
cppDisableInboundStageTransitions :: Lens' CodePipelinePipeline (Maybe [CodePipelinePipelineStageTransition])
cppDisableInboundStageTransitions = lens _codePipelinePipelineDisableInboundStageTransitions (\s a -> s { _codePipelinePipelineDisableInboundStageTransitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-name
cppName :: Lens' CodePipelinePipeline (Maybe (Val Text))
cppName = lens _codePipelinePipelineName (\s a -> s { _codePipelinePipelineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-restartexecutiononupdate
cppRestartExecutionOnUpdate :: Lens' CodePipelinePipeline (Maybe (Val Bool))
cppRestartExecutionOnUpdate = lens _codePipelinePipelineRestartExecutionOnUpdate (\s a -> s { _codePipelinePipelineRestartExecutionOnUpdate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-rolearn
cppRoleArn :: Lens' CodePipelinePipeline (Val Text)
cppRoleArn = lens _codePipelinePipelineRoleArn (\s a -> s { _codePipelinePipelineRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-stages
cppStages :: Lens' CodePipelinePipeline [CodePipelinePipelineStageDeclaration]
cppStages = lens _codePipelinePipelineStages (\s a -> s { _codePipelinePipelineStages = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-tags
cppTags :: Lens' CodePipelinePipeline (Maybe [Tag])
cppTags = lens _codePipelinePipelineTags (\s a -> s { _codePipelinePipelineTags = a })
