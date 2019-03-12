{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html

module Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStore where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodePipelinePipelineEncryptionKey

-- | Full data type definition for CodePipelinePipelineArtifactStore. See
-- 'codePipelinePipelineArtifactStore' for a more convenient constructor.
data CodePipelinePipelineArtifactStore =
  CodePipelinePipelineArtifactStore
  { _codePipelinePipelineArtifactStoreEncryptionKey :: Maybe CodePipelinePipelineEncryptionKey
  , _codePipelinePipelineArtifactStoreLocation :: Val Text
  , _codePipelinePipelineArtifactStoreType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineArtifactStore where
  toJSON CodePipelinePipelineArtifactStore{..} =
    object $
    catMaybes
    [ fmap (("EncryptionKey",) . toJSON) _codePipelinePipelineArtifactStoreEncryptionKey
    , (Just . ("Location",) . toJSON) _codePipelinePipelineArtifactStoreLocation
    , (Just . ("Type",) . toJSON) _codePipelinePipelineArtifactStoreType
    ]

-- | Constructor for 'CodePipelinePipelineArtifactStore' containing required
-- fields as arguments.
codePipelinePipelineArtifactStore
  :: Val Text -- ^ 'cppasLocation'
  -> Val Text -- ^ 'cppasType'
  -> CodePipelinePipelineArtifactStore
codePipelinePipelineArtifactStore locationarg typearg =
  CodePipelinePipelineArtifactStore
  { _codePipelinePipelineArtifactStoreEncryptionKey = Nothing
  , _codePipelinePipelineArtifactStoreLocation = locationarg
  , _codePipelinePipelineArtifactStoreType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey
cppasEncryptionKey :: Lens' CodePipelinePipelineArtifactStore (Maybe CodePipelinePipelineEncryptionKey)
cppasEncryptionKey = lens _codePipelinePipelineArtifactStoreEncryptionKey (\s a -> s { _codePipelinePipelineArtifactStoreEncryptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-location
cppasLocation :: Lens' CodePipelinePipelineArtifactStore (Val Text)
cppasLocation = lens _codePipelinePipelineArtifactStoreLocation (\s a -> s { _codePipelinePipelineArtifactStoreLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-type
cppasType :: Lens' CodePipelinePipelineArtifactStore (Val Text)
cppasType = lens _codePipelinePipelineArtifactStoreType (\s a -> s { _codePipelinePipelineArtifactStoreType = a })
