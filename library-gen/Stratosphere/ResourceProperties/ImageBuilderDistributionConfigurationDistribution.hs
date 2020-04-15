{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html

module Stratosphere.ResourceProperties.ImageBuilderDistributionConfigurationDistribution where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ImageBuilderDistributionConfigurationDistribution. See
-- 'imageBuilderDistributionConfigurationDistribution' for a more convenient
-- constructor.
data ImageBuilderDistributionConfigurationDistribution =
  ImageBuilderDistributionConfigurationDistribution
  { _imageBuilderDistributionConfigurationDistributionAmiDistributionConfiguration :: Maybe Object
  , _imageBuilderDistributionConfigurationDistributionLicenseConfigurationArns :: Maybe (ValList Text)
  , _imageBuilderDistributionConfigurationDistributionRegion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderDistributionConfigurationDistribution where
  toJSON ImageBuilderDistributionConfigurationDistribution{..} =
    object $
    catMaybes
    [ fmap (("AmiDistributionConfiguration",) . toJSON) _imageBuilderDistributionConfigurationDistributionAmiDistributionConfiguration
    , fmap (("LicenseConfigurationArns",) . toJSON) _imageBuilderDistributionConfigurationDistributionLicenseConfigurationArns
    , fmap (("Region",) . toJSON) _imageBuilderDistributionConfigurationDistributionRegion
    ]

-- | Constructor for 'ImageBuilderDistributionConfigurationDistribution'
-- containing required fields as arguments.
imageBuilderDistributionConfigurationDistribution
  :: ImageBuilderDistributionConfigurationDistribution
imageBuilderDistributionConfigurationDistribution  =
  ImageBuilderDistributionConfigurationDistribution
  { _imageBuilderDistributionConfigurationDistributionAmiDistributionConfiguration = Nothing
  , _imageBuilderDistributionConfigurationDistributionLicenseConfigurationArns = Nothing
  , _imageBuilderDistributionConfigurationDistributionRegion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-amidistributionconfiguration
ibdcdAmiDistributionConfiguration :: Lens' ImageBuilderDistributionConfigurationDistribution (Maybe Object)
ibdcdAmiDistributionConfiguration = lens _imageBuilderDistributionConfigurationDistributionAmiDistributionConfiguration (\s a -> s { _imageBuilderDistributionConfigurationDistributionAmiDistributionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-licenseconfigurationarns
ibdcdLicenseConfigurationArns :: Lens' ImageBuilderDistributionConfigurationDistribution (Maybe (ValList Text))
ibdcdLicenseConfigurationArns = lens _imageBuilderDistributionConfigurationDistributionLicenseConfigurationArns (\s a -> s { _imageBuilderDistributionConfigurationDistributionLicenseConfigurationArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-region
ibdcdRegion :: Lens' ImageBuilderDistributionConfigurationDistribution (Maybe (Val Text))
ibdcdRegion = lens _imageBuilderDistributionConfigurationDistributionRegion (\s a -> s { _imageBuilderDistributionConfigurationDistributionRegion = a })
