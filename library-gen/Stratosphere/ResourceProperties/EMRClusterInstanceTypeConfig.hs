{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html

module Stratosphere.ResourceProperties.EMRClusterInstanceTypeConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterConfiguration
import Stratosphere.ResourceProperties.EMRClusterEbsConfiguration

-- | Full data type definition for EMRClusterInstanceTypeConfig. See
-- 'emrClusterInstanceTypeConfig' for a more convenient constructor.
data EMRClusterInstanceTypeConfig =
  EMRClusterInstanceTypeConfig
  { _eMRClusterInstanceTypeConfigBidPrice :: Maybe (Val Text)
  , _eMRClusterInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice :: Maybe (Val Double)
  , _eMRClusterInstanceTypeConfigConfigurations :: Maybe [EMRClusterConfiguration]
  , _eMRClusterInstanceTypeConfigEbsConfiguration :: Maybe EMRClusterEbsConfiguration
  , _eMRClusterInstanceTypeConfigInstanceType :: Val Text
  , _eMRClusterInstanceTypeConfigWeightedCapacity :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EMRClusterInstanceTypeConfig where
  toJSON EMRClusterInstanceTypeConfig{..} =
    object $
    catMaybes
    [ fmap (("BidPrice",) . toJSON) _eMRClusterInstanceTypeConfigBidPrice
    , fmap (("BidPriceAsPercentageOfOnDemandPrice",) . toJSON) _eMRClusterInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice
    , fmap (("Configurations",) . toJSON) _eMRClusterInstanceTypeConfigConfigurations
    , fmap (("EbsConfiguration",) . toJSON) _eMRClusterInstanceTypeConfigEbsConfiguration
    , (Just . ("InstanceType",) . toJSON) _eMRClusterInstanceTypeConfigInstanceType
    , fmap (("WeightedCapacity",) . toJSON) _eMRClusterInstanceTypeConfigWeightedCapacity
    ]

-- | Constructor for 'EMRClusterInstanceTypeConfig' containing required fields
-- as arguments.
emrClusterInstanceTypeConfig
  :: Val Text -- ^ 'emrcitcInstanceType'
  -> EMRClusterInstanceTypeConfig
emrClusterInstanceTypeConfig instanceTypearg =
  EMRClusterInstanceTypeConfig
  { _eMRClusterInstanceTypeConfigBidPrice = Nothing
  , _eMRClusterInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice = Nothing
  , _eMRClusterInstanceTypeConfigConfigurations = Nothing
  , _eMRClusterInstanceTypeConfigEbsConfiguration = Nothing
  , _eMRClusterInstanceTypeConfigInstanceType = instanceTypearg
  , _eMRClusterInstanceTypeConfigWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html#cfn-elasticmapreduce-cluster-instancetypeconfig-bidprice
emrcitcBidPrice :: Lens' EMRClusterInstanceTypeConfig (Maybe (Val Text))
emrcitcBidPrice = lens _eMRClusterInstanceTypeConfigBidPrice (\s a -> s { _eMRClusterInstanceTypeConfigBidPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html#cfn-elasticmapreduce-cluster-instancetypeconfig-bidpriceaspercentageofondemandprice
emrcitcBidPriceAsPercentageOfOnDemandPrice :: Lens' EMRClusterInstanceTypeConfig (Maybe (Val Double))
emrcitcBidPriceAsPercentageOfOnDemandPrice = lens _eMRClusterInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice (\s a -> s { _eMRClusterInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html#cfn-elasticmapreduce-cluster-instancetypeconfig-configurations
emrcitcConfigurations :: Lens' EMRClusterInstanceTypeConfig (Maybe [EMRClusterConfiguration])
emrcitcConfigurations = lens _eMRClusterInstanceTypeConfigConfigurations (\s a -> s { _eMRClusterInstanceTypeConfigConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html#cfn-elasticmapreduce-cluster-instancetypeconfig-ebsconfiguration
emrcitcEbsConfiguration :: Lens' EMRClusterInstanceTypeConfig (Maybe EMRClusterEbsConfiguration)
emrcitcEbsConfiguration = lens _eMRClusterInstanceTypeConfigEbsConfiguration (\s a -> s { _eMRClusterInstanceTypeConfigEbsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html#cfn-elasticmapreduce-cluster-instancetypeconfig-instancetype
emrcitcInstanceType :: Lens' EMRClusterInstanceTypeConfig (Val Text)
emrcitcInstanceType = lens _eMRClusterInstanceTypeConfigInstanceType (\s a -> s { _eMRClusterInstanceTypeConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html#cfn-elasticmapreduce-cluster-instancetypeconfig-weightedcapacity
emrcitcWeightedCapacity :: Lens' EMRClusterInstanceTypeConfig (Maybe (Val Integer))
emrcitcWeightedCapacity = lens _eMRClusterInstanceTypeConfigWeightedCapacity (\s a -> s { _eMRClusterInstanceTypeConfigWeightedCapacity = a })
