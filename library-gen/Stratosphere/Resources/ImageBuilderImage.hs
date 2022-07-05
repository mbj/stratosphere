{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html

module Stratosphere.Resources.ImageBuilderImage where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderImageImageTestsConfiguration

-- | Full data type definition for ImageBuilderImage. See 'imageBuilderImage'
-- for a more convenient constructor.
data ImageBuilderImage =
  ImageBuilderImage
  { _imageBuilderImageDistributionConfigurationArn :: Maybe (Val Text)
  , _imageBuilderImageEnhancedImageMetadataEnabled :: Maybe (Val Bool)
  , _imageBuilderImageImageRecipeArn :: Val Text
  , _imageBuilderImageImageTestsConfiguration :: Maybe ImageBuilderImageImageTestsConfiguration
  , _imageBuilderImageInfrastructureConfigurationArn :: Val Text
  , _imageBuilderImageTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties ImageBuilderImage where
  toResourceProperties ImageBuilderImage{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ImageBuilder::Image"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DistributionConfigurationArn",) . toJSON) _imageBuilderImageDistributionConfigurationArn
        , fmap (("EnhancedImageMetadataEnabled",) . toJSON) _imageBuilderImageEnhancedImageMetadataEnabled
        , (Just . ("ImageRecipeArn",) . toJSON) _imageBuilderImageImageRecipeArn
        , fmap (("ImageTestsConfiguration",) . toJSON) _imageBuilderImageImageTestsConfiguration
        , (Just . ("InfrastructureConfigurationArn",) . toJSON) _imageBuilderImageInfrastructureConfigurationArn
        , fmap (("Tags",) . toJSON) _imageBuilderImageTags
        ]
    }

-- | Constructor for 'ImageBuilderImage' containing required fields as
-- arguments.
imageBuilderImage
  :: Val Text -- ^ 'ibiImageRecipeArn'
  -> Val Text -- ^ 'ibiInfrastructureConfigurationArn'
  -> ImageBuilderImage
imageBuilderImage imageRecipeArnarg infrastructureConfigurationArnarg =
  ImageBuilderImage
  { _imageBuilderImageDistributionConfigurationArn = Nothing
  , _imageBuilderImageEnhancedImageMetadataEnabled = Nothing
  , _imageBuilderImageImageRecipeArn = imageRecipeArnarg
  , _imageBuilderImageImageTestsConfiguration = Nothing
  , _imageBuilderImageInfrastructureConfigurationArn = infrastructureConfigurationArnarg
  , _imageBuilderImageTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-distributionconfigurationarn
ibiDistributionConfigurationArn :: Lens' ImageBuilderImage (Maybe (Val Text))
ibiDistributionConfigurationArn = lens _imageBuilderImageDistributionConfigurationArn (\s a -> s { _imageBuilderImageDistributionConfigurationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-enhancedimagemetadataenabled
ibiEnhancedImageMetadataEnabled :: Lens' ImageBuilderImage (Maybe (Val Bool))
ibiEnhancedImageMetadataEnabled = lens _imageBuilderImageEnhancedImageMetadataEnabled (\s a -> s { _imageBuilderImageEnhancedImageMetadataEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-imagerecipearn
ibiImageRecipeArn :: Lens' ImageBuilderImage (Val Text)
ibiImageRecipeArn = lens _imageBuilderImageImageRecipeArn (\s a -> s { _imageBuilderImageImageRecipeArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-imagetestsconfiguration
ibiImageTestsConfiguration :: Lens' ImageBuilderImage (Maybe ImageBuilderImageImageTestsConfiguration)
ibiImageTestsConfiguration = lens _imageBuilderImageImageTestsConfiguration (\s a -> s { _imageBuilderImageImageTestsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-infrastructureconfigurationarn
ibiInfrastructureConfigurationArn :: Lens' ImageBuilderImage (Val Text)
ibiInfrastructureConfigurationArn = lens _imageBuilderImageInfrastructureConfigurationArn (\s a -> s { _imageBuilderImageInfrastructureConfigurationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-tags
ibiTags :: Lens' ImageBuilderImage (Maybe Object)
ibiTags = lens _imageBuilderImageTags (\s a -> s { _imageBuilderImageTags = a })
