{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html

module Stratosphere.Resources.ImageBuilderImagePipeline where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderImagePipelineImageTestsConfiguration
import Stratosphere.ResourceProperties.ImageBuilderImagePipelineSchedule

-- | Full data type definition for ImageBuilderImagePipeline. See
-- 'imageBuilderImagePipeline' for a more convenient constructor.
data ImageBuilderImagePipeline =
  ImageBuilderImagePipeline
  { _imageBuilderImagePipelineDescription :: Maybe (Val Text)
  , _imageBuilderImagePipelineDistributionConfigurationArn :: Maybe (Val Text)
  , _imageBuilderImagePipelineEnhancedImageMetadataEnabled :: Maybe (Val Bool)
  , _imageBuilderImagePipelineImageRecipeArn :: Val Text
  , _imageBuilderImagePipelineImageTestsConfiguration :: Maybe ImageBuilderImagePipelineImageTestsConfiguration
  , _imageBuilderImagePipelineInfrastructureConfigurationArn :: Val Text
  , _imageBuilderImagePipelineName :: Val Text
  , _imageBuilderImagePipelineSchedule :: Maybe ImageBuilderImagePipelineSchedule
  , _imageBuilderImagePipelineStatus :: Maybe (Val Text)
  , _imageBuilderImagePipelineTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties ImageBuilderImagePipeline where
  toResourceProperties ImageBuilderImagePipeline{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ImageBuilder::ImagePipeline"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _imageBuilderImagePipelineDescription
        , fmap (("DistributionConfigurationArn",) . toJSON) _imageBuilderImagePipelineDistributionConfigurationArn
        , fmap (("EnhancedImageMetadataEnabled",) . toJSON) _imageBuilderImagePipelineEnhancedImageMetadataEnabled
        , (Just . ("ImageRecipeArn",) . toJSON) _imageBuilderImagePipelineImageRecipeArn
        , fmap (("ImageTestsConfiguration",) . toJSON) _imageBuilderImagePipelineImageTestsConfiguration
        , (Just . ("InfrastructureConfigurationArn",) . toJSON) _imageBuilderImagePipelineInfrastructureConfigurationArn
        , (Just . ("Name",) . toJSON) _imageBuilderImagePipelineName
        , fmap (("Schedule",) . toJSON) _imageBuilderImagePipelineSchedule
        , fmap (("Status",) . toJSON) _imageBuilderImagePipelineStatus
        , fmap (("Tags",) . toJSON) _imageBuilderImagePipelineTags
        ]
    }

-- | Constructor for 'ImageBuilderImagePipeline' containing required fields as
-- arguments.
imageBuilderImagePipeline
  :: Val Text -- ^ 'ibipImageRecipeArn'
  -> Val Text -- ^ 'ibipInfrastructureConfigurationArn'
  -> Val Text -- ^ 'ibipName'
  -> ImageBuilderImagePipeline
imageBuilderImagePipeline imageRecipeArnarg infrastructureConfigurationArnarg namearg =
  ImageBuilderImagePipeline
  { _imageBuilderImagePipelineDescription = Nothing
  , _imageBuilderImagePipelineDistributionConfigurationArn = Nothing
  , _imageBuilderImagePipelineEnhancedImageMetadataEnabled = Nothing
  , _imageBuilderImagePipelineImageRecipeArn = imageRecipeArnarg
  , _imageBuilderImagePipelineImageTestsConfiguration = Nothing
  , _imageBuilderImagePipelineInfrastructureConfigurationArn = infrastructureConfigurationArnarg
  , _imageBuilderImagePipelineName = namearg
  , _imageBuilderImagePipelineSchedule = Nothing
  , _imageBuilderImagePipelineStatus = Nothing
  , _imageBuilderImagePipelineTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-description
ibipDescription :: Lens' ImageBuilderImagePipeline (Maybe (Val Text))
ibipDescription = lens _imageBuilderImagePipelineDescription (\s a -> s { _imageBuilderImagePipelineDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-distributionconfigurationarn
ibipDistributionConfigurationArn :: Lens' ImageBuilderImagePipeline (Maybe (Val Text))
ibipDistributionConfigurationArn = lens _imageBuilderImagePipelineDistributionConfigurationArn (\s a -> s { _imageBuilderImagePipelineDistributionConfigurationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-enhancedimagemetadataenabled
ibipEnhancedImageMetadataEnabled :: Lens' ImageBuilderImagePipeline (Maybe (Val Bool))
ibipEnhancedImageMetadataEnabled = lens _imageBuilderImagePipelineEnhancedImageMetadataEnabled (\s a -> s { _imageBuilderImagePipelineEnhancedImageMetadataEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-imagerecipearn
ibipImageRecipeArn :: Lens' ImageBuilderImagePipeline (Val Text)
ibipImageRecipeArn = lens _imageBuilderImagePipelineImageRecipeArn (\s a -> s { _imageBuilderImagePipelineImageRecipeArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-imagetestsconfiguration
ibipImageTestsConfiguration :: Lens' ImageBuilderImagePipeline (Maybe ImageBuilderImagePipelineImageTestsConfiguration)
ibipImageTestsConfiguration = lens _imageBuilderImagePipelineImageTestsConfiguration (\s a -> s { _imageBuilderImagePipelineImageTestsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-infrastructureconfigurationarn
ibipInfrastructureConfigurationArn :: Lens' ImageBuilderImagePipeline (Val Text)
ibipInfrastructureConfigurationArn = lens _imageBuilderImagePipelineInfrastructureConfigurationArn (\s a -> s { _imageBuilderImagePipelineInfrastructureConfigurationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-name
ibipName :: Lens' ImageBuilderImagePipeline (Val Text)
ibipName = lens _imageBuilderImagePipelineName (\s a -> s { _imageBuilderImagePipelineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-schedule
ibipSchedule :: Lens' ImageBuilderImagePipeline (Maybe ImageBuilderImagePipelineSchedule)
ibipSchedule = lens _imageBuilderImagePipelineSchedule (\s a -> s { _imageBuilderImagePipelineSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-status
ibipStatus :: Lens' ImageBuilderImagePipeline (Maybe (Val Text))
ibipStatus = lens _imageBuilderImagePipelineStatus (\s a -> s { _imageBuilderImagePipelineStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-tags
ibipTags :: Lens' ImageBuilderImagePipeline (Maybe Object)
ibipTags = lens _imageBuilderImagePipelineTags (\s a -> s { _imageBuilderImagePipelineTags = a })
