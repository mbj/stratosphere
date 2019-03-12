{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html

module Stratosphere.ResourceProperties.CodePipelinePipelineActionTypeId where

import Stratosphere.ResourceImports


-- | Full data type definition for CodePipelinePipelineActionTypeId. See
-- 'codePipelinePipelineActionTypeId' for a more convenient constructor.
data CodePipelinePipelineActionTypeId =
  CodePipelinePipelineActionTypeId
  { _codePipelinePipelineActionTypeIdCategory :: Val Text
  , _codePipelinePipelineActionTypeIdOwner :: Val Text
  , _codePipelinePipelineActionTypeIdProvider :: Val Text
  , _codePipelinePipelineActionTypeIdVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineActionTypeId where
  toJSON CodePipelinePipelineActionTypeId{..} =
    object $
    catMaybes
    [ (Just . ("Category",) . toJSON) _codePipelinePipelineActionTypeIdCategory
    , (Just . ("Owner",) . toJSON) _codePipelinePipelineActionTypeIdOwner
    , (Just . ("Provider",) . toJSON) _codePipelinePipelineActionTypeIdProvider
    , (Just . ("Version",) . toJSON) _codePipelinePipelineActionTypeIdVersion
    ]

-- | Constructor for 'CodePipelinePipelineActionTypeId' containing required
-- fields as arguments.
codePipelinePipelineActionTypeId
  :: Val Text -- ^ 'cppatiCategory'
  -> Val Text -- ^ 'cppatiOwner'
  -> Val Text -- ^ 'cppatiProvider'
  -> Val Text -- ^ 'cppatiVersion'
  -> CodePipelinePipelineActionTypeId
codePipelinePipelineActionTypeId categoryarg ownerarg providerarg versionarg =
  CodePipelinePipelineActionTypeId
  { _codePipelinePipelineActionTypeIdCategory = categoryarg
  , _codePipelinePipelineActionTypeIdOwner = ownerarg
  , _codePipelinePipelineActionTypeIdProvider = providerarg
  , _codePipelinePipelineActionTypeIdVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-category
cppatiCategory :: Lens' CodePipelinePipelineActionTypeId (Val Text)
cppatiCategory = lens _codePipelinePipelineActionTypeIdCategory (\s a -> s { _codePipelinePipelineActionTypeIdCategory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-owner
cppatiOwner :: Lens' CodePipelinePipelineActionTypeId (Val Text)
cppatiOwner = lens _codePipelinePipelineActionTypeIdOwner (\s a -> s { _codePipelinePipelineActionTypeIdOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-provider
cppatiProvider :: Lens' CodePipelinePipelineActionTypeId (Val Text)
cppatiProvider = lens _codePipelinePipelineActionTypeIdProvider (\s a -> s { _codePipelinePipelineActionTypeIdProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-version
cppatiVersion :: Lens' CodePipelinePipelineActionTypeId (Val Text)
cppatiVersion = lens _codePipelinePipelineActionTypeIdVersion (\s a -> s { _codePipelinePipelineActionTypeIdVersion = a })
