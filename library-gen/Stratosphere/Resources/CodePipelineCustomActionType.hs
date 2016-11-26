{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html

module Stratosphere.Resources.CodePipelineCustomActionType where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeConfigurationProperties
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeArtifactDetails
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeArtifactDetails
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeSettings

-- | Full data type definition for CodePipelineCustomActionType. See
-- | 'codePipelineCustomActionType' for a more convenient constructor.
data CodePipelineCustomActionType =
  CodePipelineCustomActionType
  { _codePipelineCustomActionTypeCategory :: Val Text
  , _codePipelineCustomActionTypeConfigurationProperties :: Maybe [CodePipelineCustomActionTypeConfigurationProperties]
  , _codePipelineCustomActionTypeInputArtifactDetails :: CodePipelineCustomActionTypeArtifactDetails
  , _codePipelineCustomActionTypeOutputArtifactDetails :: CodePipelineCustomActionTypeArtifactDetails
  , _codePipelineCustomActionTypeProvider :: Val Text
  , _codePipelineCustomActionTypeSettings :: Maybe CodePipelineCustomActionTypeSettings
  , _codePipelineCustomActionTypeVersion :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodePipelineCustomActionType where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON CodePipelineCustomActionType where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'CodePipelineCustomActionType' containing required fields
-- | as arguments.
codePipelineCustomActionType
  :: Val Text -- ^ 'cpcatCategory'
  -> CodePipelineCustomActionTypeArtifactDetails -- ^ 'cpcatInputArtifactDetails'
  -> CodePipelineCustomActionTypeArtifactDetails -- ^ 'cpcatOutputArtifactDetails'
  -> Val Text -- ^ 'cpcatProvider'
  -> CodePipelineCustomActionType
codePipelineCustomActionType categoryarg inputArtifactDetailsarg outputArtifactDetailsarg providerarg =
  CodePipelineCustomActionType
  { _codePipelineCustomActionTypeCategory = categoryarg
  , _codePipelineCustomActionTypeConfigurationProperties = Nothing
  , _codePipelineCustomActionTypeInputArtifactDetails = inputArtifactDetailsarg
  , _codePipelineCustomActionTypeOutputArtifactDetails = outputArtifactDetailsarg
  , _codePipelineCustomActionTypeProvider = providerarg
  , _codePipelineCustomActionTypeSettings = Nothing
  , _codePipelineCustomActionTypeVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-category
cpcatCategory :: Lens' CodePipelineCustomActionType (Val Text)
cpcatCategory = lens _codePipelineCustomActionTypeCategory (\s a -> s { _codePipelineCustomActionTypeCategory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-configurationproperties
cpcatConfigurationProperties :: Lens' CodePipelineCustomActionType (Maybe [CodePipelineCustomActionTypeConfigurationProperties])
cpcatConfigurationProperties = lens _codePipelineCustomActionTypeConfigurationProperties (\s a -> s { _codePipelineCustomActionTypeConfigurationProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-inputartifactdetails
cpcatInputArtifactDetails :: Lens' CodePipelineCustomActionType CodePipelineCustomActionTypeArtifactDetails
cpcatInputArtifactDetails = lens _codePipelineCustomActionTypeInputArtifactDetails (\s a -> s { _codePipelineCustomActionTypeInputArtifactDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-outputartifactdetails
cpcatOutputArtifactDetails :: Lens' CodePipelineCustomActionType CodePipelineCustomActionTypeArtifactDetails
cpcatOutputArtifactDetails = lens _codePipelineCustomActionTypeOutputArtifactDetails (\s a -> s { _codePipelineCustomActionTypeOutputArtifactDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-provider
cpcatProvider :: Lens' CodePipelineCustomActionType (Val Text)
cpcatProvider = lens _codePipelineCustomActionTypeProvider (\s a -> s { _codePipelineCustomActionTypeProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-settings
cpcatSettings :: Lens' CodePipelineCustomActionType (Maybe CodePipelineCustomActionTypeSettings)
cpcatSettings = lens _codePipelineCustomActionTypeSettings (\s a -> s { _codePipelineCustomActionTypeSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-version
cpcatVersion :: Lens' CodePipelineCustomActionType (Maybe (Val Text))
cpcatVersion = lens _codePipelineCustomActionTypeVersion (\s a -> s { _codePipelineCustomActionTypeVersion = a })
