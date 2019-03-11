{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html

module Stratosphere.ResourceProperties.ConfigConfigurationAggregatorOrganizationAggregationSource where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigConfigurationAggregatorOrganizationAggregationSource. See
-- 'configConfigurationAggregatorOrganizationAggregationSource' for a more
-- convenient constructor.
data ConfigConfigurationAggregatorOrganizationAggregationSource =
  ConfigConfigurationAggregatorOrganizationAggregationSource
  { _configConfigurationAggregatorOrganizationAggregationSourceAllAwsRegions :: Maybe (Val Bool)
  , _configConfigurationAggregatorOrganizationAggregationSourceAwsRegions :: Maybe (ValList Text)
  , _configConfigurationAggregatorOrganizationAggregationSourceRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigConfigurationAggregatorOrganizationAggregationSource where
  toJSON ConfigConfigurationAggregatorOrganizationAggregationSource{..} =
    object $
    catMaybes
    [ fmap (("AllAwsRegions",) . toJSON . fmap Bool') _configConfigurationAggregatorOrganizationAggregationSourceAllAwsRegions
    , fmap (("AwsRegions",) . toJSON) _configConfigurationAggregatorOrganizationAggregationSourceAwsRegions
    , (Just . ("RoleArn",) . toJSON) _configConfigurationAggregatorOrganizationAggregationSourceRoleArn
    ]

-- | Constructor for
-- 'ConfigConfigurationAggregatorOrganizationAggregationSource' containing
-- required fields as arguments.
configConfigurationAggregatorOrganizationAggregationSource
  :: Val Text -- ^ 'ccaoasRoleArn'
  -> ConfigConfigurationAggregatorOrganizationAggregationSource
configConfigurationAggregatorOrganizationAggregationSource roleArnarg =
  ConfigConfigurationAggregatorOrganizationAggregationSource
  { _configConfigurationAggregatorOrganizationAggregationSourceAllAwsRegions = Nothing
  , _configConfigurationAggregatorOrganizationAggregationSourceAwsRegions = Nothing
  , _configConfigurationAggregatorOrganizationAggregationSourceRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-allawsregions
ccaoasAllAwsRegions :: Lens' ConfigConfigurationAggregatorOrganizationAggregationSource (Maybe (Val Bool))
ccaoasAllAwsRegions = lens _configConfigurationAggregatorOrganizationAggregationSourceAllAwsRegions (\s a -> s { _configConfigurationAggregatorOrganizationAggregationSourceAllAwsRegions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-awsregions
ccaoasAwsRegions :: Lens' ConfigConfigurationAggregatorOrganizationAggregationSource (Maybe (ValList Text))
ccaoasAwsRegions = lens _configConfigurationAggregatorOrganizationAggregationSourceAwsRegions (\s a -> s { _configConfigurationAggregatorOrganizationAggregationSourceAwsRegions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-rolearn
ccaoasRoleArn :: Lens' ConfigConfigurationAggregatorOrganizationAggregationSource (Val Text)
ccaoasRoleArn = lens _configConfigurationAggregatorOrganizationAggregationSourceRoleArn (\s a -> s { _configConfigurationAggregatorOrganizationAggregationSourceRoleArn = a })
