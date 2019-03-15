{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html

module Stratosphere.ResourceProperties.ConfigConfigurationAggregatorAccountAggregationSource where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigConfigurationAggregatorAccountAggregationSource. See
-- 'configConfigurationAggregatorAccountAggregationSource' for a more
-- convenient constructor.
data ConfigConfigurationAggregatorAccountAggregationSource =
  ConfigConfigurationAggregatorAccountAggregationSource
  { _configConfigurationAggregatorAccountAggregationSourceAccountIds :: ValList Text
  , _configConfigurationAggregatorAccountAggregationSourceAllAwsRegions :: Maybe (Val Bool)
  , _configConfigurationAggregatorAccountAggregationSourceAwsRegions :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ConfigConfigurationAggregatorAccountAggregationSource where
  toJSON ConfigConfigurationAggregatorAccountAggregationSource{..} =
    object $
    catMaybes
    [ (Just . ("AccountIds",) . toJSON) _configConfigurationAggregatorAccountAggregationSourceAccountIds
    , fmap (("AllAwsRegions",) . toJSON) _configConfigurationAggregatorAccountAggregationSourceAllAwsRegions
    , fmap (("AwsRegions",) . toJSON) _configConfigurationAggregatorAccountAggregationSourceAwsRegions
    ]

-- | Constructor for 'ConfigConfigurationAggregatorAccountAggregationSource'
-- containing required fields as arguments.
configConfigurationAggregatorAccountAggregationSource
  :: ValList Text -- ^ 'ccaaasAccountIds'
  -> ConfigConfigurationAggregatorAccountAggregationSource
configConfigurationAggregatorAccountAggregationSource accountIdsarg =
  ConfigConfigurationAggregatorAccountAggregationSource
  { _configConfigurationAggregatorAccountAggregationSourceAccountIds = accountIdsarg
  , _configConfigurationAggregatorAccountAggregationSourceAllAwsRegions = Nothing
  , _configConfigurationAggregatorAccountAggregationSourceAwsRegions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-accountids
ccaaasAccountIds :: Lens' ConfigConfigurationAggregatorAccountAggregationSource (ValList Text)
ccaaasAccountIds = lens _configConfigurationAggregatorAccountAggregationSourceAccountIds (\s a -> s { _configConfigurationAggregatorAccountAggregationSourceAccountIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-allawsregions
ccaaasAllAwsRegions :: Lens' ConfigConfigurationAggregatorAccountAggregationSource (Maybe (Val Bool))
ccaaasAllAwsRegions = lens _configConfigurationAggregatorAccountAggregationSourceAllAwsRegions (\s a -> s { _configConfigurationAggregatorAccountAggregationSourceAllAwsRegions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-awsregions
ccaaasAwsRegions :: Lens' ConfigConfigurationAggregatorAccountAggregationSource (Maybe (ValList Text))
ccaaasAwsRegions = lens _configConfigurationAggregatorAccountAggregationSourceAwsRegions (\s a -> s { _configConfigurationAggregatorAccountAggregationSourceAwsRegions = a })
