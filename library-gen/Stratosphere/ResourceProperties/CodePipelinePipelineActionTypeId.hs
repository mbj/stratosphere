{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html

module Stratosphere.ResourceProperties.CodePipelinePipelineActionTypeId where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineActionTypeId. See
-- | 'codePipelinePipelineActionTypeId' for a more convenient constructor.
data CodePipelinePipelineActionTypeId =
  CodePipelinePipelineActionTypeId
  { _codePipelinePipelineActionTypeIdCategory :: Val Text
  , _codePipelinePipelineActionTypeIdOwner :: Val Text
  , _codePipelinePipelineActionTypeIdProvider :: Val Text
  , _codePipelinePipelineActionTypeIdVersion :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CodePipelinePipelineActionTypeId where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON CodePipelinePipelineActionTypeId where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

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
