{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancetypeconfig.html

module Stratosphere.ResourceProperties.EMRClusterInstanceTypeConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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
    , fmap (("BidPriceAsPercentageOfOnDemandPrice",) . toJSON . fmap Double') _eMRClusterInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice
    , fmap (("Configurations",) . toJSON) _eMRClusterInstanceTypeConfigConfigurations
    , fmap (("EbsConfiguration",) . toJSON) _eMRClusterInstanceTypeConfigEbsConfiguration
    , (Just . ("InstanceType",) . toJSON) _eMRClusterInstanceTypeConfigInstanceType
    , fmap (("WeightedCapacity",) . toJSON . fmap Integer') _eMRClusterInstanceTypeConfigWeightedCapacity
    ]

instance FromJSON EMRClusterInstanceTypeConfig where
  parseJSON (Object obj) =
    EMRClusterInstanceTypeConfig <$>
      (obj .:? "BidPrice") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "BidPriceAsPercentageOfOnDemandPrice") <*>
      (obj .:? "Configurations") <*>
      (obj .:? "EbsConfiguration") <*>
      (obj .: "InstanceType") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "WeightedCapacity")
  parseJSON _ = mempty

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
