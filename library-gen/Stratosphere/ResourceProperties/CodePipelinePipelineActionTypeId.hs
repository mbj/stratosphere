{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html

module Stratosphere.ResourceProperties.CodePipelinePipelineActionTypeId where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineActionTypeId. See
-- | 'codePipelinePipelineActionTypeId' for a more convenient constructor.
data CodePipelinePipelineActionTypeId =
  CodePipelinePipelineActionTypeId
  { _codePipelinePipelineActionTypeIdCategory :: Val Text
  , _codePipelinePipelineActionTypeIdOwner :: Val Text
  , _codePipelinePipelineActionTypeIdProvider :: Val Text
  , _codePipelinePipelineActionTypeIdVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineActionTypeId where
  toJSON CodePipelinePipelineActionTypeId{..} =
    object
    [ "Category" .= _codePipelinePipelineActionTypeIdCategory
    , "Owner" .= _codePipelinePipelineActionTypeIdOwner
    , "Provider" .= _codePipelinePipelineActionTypeIdProvider
    , "Version" .= _codePipelinePipelineActionTypeIdVersion
    ]

instance FromJSON CodePipelinePipelineActionTypeId where
  parseJSON (Object obj) =
    CodePipelinePipelineActionTypeId <$>
      obj .: "Category" <*>
      obj .: "Owner" <*>
      obj .: "Provider" <*>
      obj .: "Version"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelinePipelineActionTypeId' containing required
-- | fields as arguments.
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
