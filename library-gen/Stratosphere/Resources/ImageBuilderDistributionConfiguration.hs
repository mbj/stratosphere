{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-distributionconfiguration.html

module Stratosphere.Resources.ImageBuilderDistributionConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderDistributionConfigurationDistribution

-- | Full data type definition for ImageBuilderDistributionConfiguration. See
-- 'imageBuilderDistributionConfiguration' for a more convenient
-- constructor.
data ImageBuilderDistributionConfiguration =
  ImageBuilderDistributionConfiguration
  { _imageBuilderDistributionConfigurationDescription :: Maybe (Val Text)
  , _imageBuilderDistributionConfigurationDistributions :: [ImageBuilderDistributionConfigurationDistribution]
  , _imageBuilderDistributionConfigurationName :: Val Text
  , _imageBuilderDistributionConfigurationTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties ImageBuilderDistributionConfiguration where
  toResourceProperties ImageBuilderDistributionConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ImageBuilder::DistributionConfiguration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _imageBuilderDistributionConfigurationDescription
        , (Just . ("Distributions",) . toJSON) _imageBuilderDistributionConfigurationDistributions
        , (Just . ("Name",) . toJSON) _imageBuilderDistributionConfigurationName
        , fmap (("Tags",) . toJSON) _imageBuilderDistributionConfigurationTags
        ]
    }

-- | Constructor for 'ImageBuilderDistributionConfiguration' containing
-- required fields as arguments.
imageBuilderDistributionConfiguration
  :: [ImageBuilderDistributionConfigurationDistribution] -- ^ 'ibdcDistributions'
  -> Val Text -- ^ 'ibdcName'
  -> ImageBuilderDistributionConfiguration
imageBuilderDistributionConfiguration distributionsarg namearg =
  ImageBuilderDistributionConfiguration
  { _imageBuilderDistributionConfigurationDescription = Nothing
  , _imageBuilderDistributionConfigurationDistributions = distributionsarg
  , _imageBuilderDistributionConfigurationName = namearg
  , _imageBuilderDistributionConfigurationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-distributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-description
ibdcDescription :: Lens' ImageBuilderDistributionConfiguration (Maybe (Val Text))
ibdcDescription = lens _imageBuilderDistributionConfigurationDescription (\s a -> s { _imageBuilderDistributionConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-distributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-distributions
ibdcDistributions :: Lens' ImageBuilderDistributionConfiguration [ImageBuilderDistributionConfigurationDistribution]
ibdcDistributions = lens _imageBuilderDistributionConfigurationDistributions (\s a -> s { _imageBuilderDistributionConfigurationDistributions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-distributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-name
ibdcName :: Lens' ImageBuilderDistributionConfiguration (Val Text)
ibdcName = lens _imageBuilderDistributionConfigurationName (\s a -> s { _imageBuilderDistributionConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-distributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-tags
ibdcTags :: Lens' ImageBuilderDistributionConfiguration (Maybe Object)
ibdcTags = lens _imageBuilderDistributionConfigurationTags (\s a -> s { _imageBuilderDistributionConfigurationTags = a })
