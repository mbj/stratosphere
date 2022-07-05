{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html

module Stratosphere.Resources.CodePipelineCustomActionType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeConfigurationProperties
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeArtifactDetails
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeSettings
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CodePipelineCustomActionType. See
-- 'codePipelineCustomActionType' for a more convenient constructor.
data CodePipelineCustomActionType =
  CodePipelineCustomActionType
  { _codePipelineCustomActionTypeCategory :: Val Text
  , _codePipelineCustomActionTypeConfigurationProperties :: Maybe [CodePipelineCustomActionTypeConfigurationProperties]
  , _codePipelineCustomActionTypeInputArtifactDetails :: CodePipelineCustomActionTypeArtifactDetails
  , _codePipelineCustomActionTypeOutputArtifactDetails :: CodePipelineCustomActionTypeArtifactDetails
  , _codePipelineCustomActionTypeProvider :: Val Text
  , _codePipelineCustomActionTypeSettings :: Maybe CodePipelineCustomActionTypeSettings
  , _codePipelineCustomActionTypeTags :: Maybe [Tag]
  , _codePipelineCustomActionTypeVersion :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodePipelineCustomActionType where
  toResourceProperties CodePipelineCustomActionType{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodePipeline::CustomActionType"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Category",) . toJSON) _codePipelineCustomActionTypeCategory
        , fmap (("ConfigurationProperties",) . toJSON) _codePipelineCustomActionTypeConfigurationProperties
        , (Just . ("InputArtifactDetails",) . toJSON) _codePipelineCustomActionTypeInputArtifactDetails
        , (Just . ("OutputArtifactDetails",) . toJSON) _codePipelineCustomActionTypeOutputArtifactDetails
        , (Just . ("Provider",) . toJSON) _codePipelineCustomActionTypeProvider
        , fmap (("Settings",) . toJSON) _codePipelineCustomActionTypeSettings
        , fmap (("Tags",) . toJSON) _codePipelineCustomActionTypeTags
        , (Just . ("Version",) . toJSON) _codePipelineCustomActionTypeVersion
        ]
    }

-- | Constructor for 'CodePipelineCustomActionType' containing required fields
-- as arguments.
codePipelineCustomActionType
  :: Val Text -- ^ 'cpcatCategory'
  -> CodePipelineCustomActionTypeArtifactDetails -- ^ 'cpcatInputArtifactDetails'
  -> CodePipelineCustomActionTypeArtifactDetails -- ^ 'cpcatOutputArtifactDetails'
  -> Val Text -- ^ 'cpcatProvider'
  -> Val Text -- ^ 'cpcatVersion'
  -> CodePipelineCustomActionType
codePipelineCustomActionType categoryarg inputArtifactDetailsarg outputArtifactDetailsarg providerarg versionarg =
  CodePipelineCustomActionType
  { _codePipelineCustomActionTypeCategory = categoryarg
  , _codePipelineCustomActionTypeConfigurationProperties = Nothing
  , _codePipelineCustomActionTypeInputArtifactDetails = inputArtifactDetailsarg
  , _codePipelineCustomActionTypeOutputArtifactDetails = outputArtifactDetailsarg
  , _codePipelineCustomActionTypeProvider = providerarg
  , _codePipelineCustomActionTypeSettings = Nothing
  , _codePipelineCustomActionTypeTags = Nothing
  , _codePipelineCustomActionTypeVersion = versionarg
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-tags
cpcatTags :: Lens' CodePipelineCustomActionType (Maybe [Tag])
cpcatTags = lens _codePipelineCustomActionTypeTags (\s a -> s { _codePipelineCustomActionTypeTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-version
cpcatVersion :: Lens' CodePipelineCustomActionType (Val Text)
cpcatVersion = lens _codePipelineCustomActionTypeVersion (\s a -> s { _codePipelineCustomActionTypeVersion = a })
