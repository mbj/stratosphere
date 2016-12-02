{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html

module Stratosphere.ResourceProperties.CodePipelineCustomActionTypeArtifactDetails where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | CodePipelineCustomActionTypeArtifactDetails. See
-- | 'codePipelineCustomActionTypeArtifactDetails' for a more convenient
-- | constructor.
data CodePipelineCustomActionTypeArtifactDetails =
  CodePipelineCustomActionTypeArtifactDetails
  { _codePipelineCustomActionTypeArtifactDetailsMaximumCount :: Val Integer'
  , _codePipelineCustomActionTypeArtifactDetailsMinimumCount :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON CodePipelineCustomActionTypeArtifactDetails where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 44, omitNothingFields = True }

instance FromJSON CodePipelineCustomActionTypeArtifactDetails where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 44, omitNothingFields = True }

-- | Constructor for 'CodePipelineCustomActionTypeArtifactDetails' containing
-- | required fields as arguments.
codePipelineCustomActionTypeArtifactDetails
  :: Val Integer' -- ^ 'cpcatadMaximumCount'
  -> Val Integer' -- ^ 'cpcatadMinimumCount'
  -> CodePipelineCustomActionTypeArtifactDetails
codePipelineCustomActionTypeArtifactDetails maximumCountarg minimumCountarg =
  CodePipelineCustomActionTypeArtifactDetails
  { _codePipelineCustomActionTypeArtifactDetailsMaximumCount = maximumCountarg
  , _codePipelineCustomActionTypeArtifactDetailsMinimumCount = minimumCountarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-maximumcount
cpcatadMaximumCount :: Lens' CodePipelineCustomActionTypeArtifactDetails (Val Integer')
cpcatadMaximumCount = lens _codePipelineCustomActionTypeArtifactDetailsMaximumCount (\s a -> s { _codePipelineCustomActionTypeArtifactDetailsMaximumCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-minimumcount
cpcatadMinimumCount :: Lens' CodePipelineCustomActionTypeArtifactDetails (Val Integer')
cpcatadMinimumCount = lens _codePipelineCustomActionTypeArtifactDetailsMinimumCount (\s a -> s { _codePipelineCustomActionTypeArtifactDetailsMinimumCount = a })
