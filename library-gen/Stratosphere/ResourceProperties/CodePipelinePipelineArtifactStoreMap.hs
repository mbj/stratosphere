{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html

module Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStoreMap where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStore

-- | Full data type definition for CodePipelinePipelineArtifactStoreMap. See
-- 'codePipelinePipelineArtifactStoreMap' for a more convenient constructor.
data CodePipelinePipelineArtifactStoreMap =
  CodePipelinePipelineArtifactStoreMap
  { _codePipelinePipelineArtifactStoreMapArtifactStore :: CodePipelinePipelineArtifactStore
  , _codePipelinePipelineArtifactStoreMapRegion :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineArtifactStoreMap where
  toJSON CodePipelinePipelineArtifactStoreMap{..} =
    object $
    catMaybes
    [ (Just . ("ArtifactStore",) . toJSON) _codePipelinePipelineArtifactStoreMapArtifactStore
    , (Just . ("Region",) . toJSON) _codePipelinePipelineArtifactStoreMapRegion
    ]

-- | Constructor for 'CodePipelinePipelineArtifactStoreMap' containing
-- required fields as arguments.
codePipelinePipelineArtifactStoreMap
  :: CodePipelinePipelineArtifactStore -- ^ 'cppasmArtifactStore'
  -> Val Text -- ^ 'cppasmRegion'
  -> CodePipelinePipelineArtifactStoreMap
codePipelinePipelineArtifactStoreMap artifactStorearg regionarg =
  CodePipelinePipelineArtifactStoreMap
  { _codePipelinePipelineArtifactStoreMapArtifactStore = artifactStorearg
  , _codePipelinePipelineArtifactStoreMapRegion = regionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-artifactstore
cppasmArtifactStore :: Lens' CodePipelinePipelineArtifactStoreMap CodePipelinePipelineArtifactStore
cppasmArtifactStore = lens _codePipelinePipelineArtifactStoreMapArtifactStore (\s a -> s { _codePipelinePipelineArtifactStoreMapArtifactStore = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-region
cppasmRegion :: Lens' CodePipelinePipelineArtifactStoreMap (Val Text)
cppasmRegion = lens _codePipelinePipelineArtifactStoreMapRegion (\s a -> s { _codePipelinePipelineArtifactStoreMapRegion = a })
