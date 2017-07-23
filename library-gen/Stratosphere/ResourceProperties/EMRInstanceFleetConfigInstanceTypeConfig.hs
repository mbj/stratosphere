{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigInstanceTypeConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigConfiguration
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigEbsConfiguration

-- | Full data type definition for EMRInstanceFleetConfigInstanceTypeConfig.
-- See 'emrInstanceFleetConfigInstanceTypeConfig' for a more convenient
-- constructor.
data EMRInstanceFleetConfigInstanceTypeConfig =
  EMRInstanceFleetConfigInstanceTypeConfig
  { _eMRInstanceFleetConfigInstanceTypeConfigBidPrice :: Maybe (Val Text)
  , _eMRInstanceFleetConfigInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice :: Maybe (Val Double)
  , _eMRInstanceFleetConfigInstanceTypeConfigConfigurations :: Maybe [EMRInstanceFleetConfigConfiguration]
  , _eMRInstanceFleetConfigInstanceTypeConfigEbsConfiguration :: Maybe EMRInstanceFleetConfigEbsConfiguration
  , _eMRInstanceFleetConfigInstanceTypeConfigInstanceType :: Val Text
  , _eMRInstanceFleetConfigInstanceTypeConfigWeightedCapacity :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigInstanceTypeConfig where
  toJSON EMRInstanceFleetConfigInstanceTypeConfig{..} =
    object $
    catMaybes
    [ fmap (("BidPrice",) . toJSON) _eMRInstanceFleetConfigInstanceTypeConfigBidPrice
    , fmap (("BidPriceAsPercentageOfOnDemandPrice",) . toJSON . fmap Double') _eMRInstanceFleetConfigInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice
    , fmap (("Configurations",) . toJSON) _eMRInstanceFleetConfigInstanceTypeConfigConfigurations
    , fmap (("EbsConfiguration",) . toJSON) _eMRInstanceFleetConfigInstanceTypeConfigEbsConfiguration
    , (Just . ("InstanceType",) . toJSON) _eMRInstanceFleetConfigInstanceTypeConfigInstanceType
    , fmap (("WeightedCapacity",) . toJSON . fmap Integer') _eMRInstanceFleetConfigInstanceTypeConfigWeightedCapacity
    ]

instance FromJSON EMRInstanceFleetConfigInstanceTypeConfig where
  parseJSON (Object obj) =
    EMRInstanceFleetConfigInstanceTypeConfig <$>
      (obj .:? "BidPrice") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "BidPriceAsPercentageOfOnDemandPrice") <*>
      (obj .:? "Configurations") <*>
      (obj .:? "EbsConfiguration") <*>
      (obj .: "InstanceType") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "WeightedCapacity")
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceFleetConfigInstanceTypeConfig' containing
-- required fields as arguments.
emrInstanceFleetConfigInstanceTypeConfig
  :: Val Text -- ^ 'emrifcitcInstanceType'
  -> EMRInstanceFleetConfigInstanceTypeConfig
emrInstanceFleetConfigInstanceTypeConfig instanceTypearg =
  EMRInstanceFleetConfigInstanceTypeConfig
  { _eMRInstanceFleetConfigInstanceTypeConfigBidPrice = Nothing
  , _eMRInstanceFleetConfigInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice = Nothing
  , _eMRInstanceFleetConfigInstanceTypeConfigConfigurations = Nothing
  , _eMRInstanceFleetConfigInstanceTypeConfigEbsConfiguration = Nothing
  , _eMRInstanceFleetConfigInstanceTypeConfigInstanceType = instanceTypearg
  , _eMRInstanceFleetConfigInstanceTypeConfigWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-bidprice
emrifcitcBidPrice :: Lens' EMRInstanceFleetConfigInstanceTypeConfig (Maybe (Val Text))
emrifcitcBidPrice = lens _eMRInstanceFleetConfigInstanceTypeConfigBidPrice (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigBidPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-bidpriceaspercentageofondemandprice
emrifcitcBidPriceAsPercentageOfOnDemandPrice :: Lens' EMRInstanceFleetConfigInstanceTypeConfig (Maybe (Val Double))
emrifcitcBidPriceAsPercentageOfOnDemandPrice = lens _eMRInstanceFleetConfigInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigBidPriceAsPercentageOfOnDemandPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-configurations
emrifcitcConfigurations :: Lens' EMRInstanceFleetConfigInstanceTypeConfig (Maybe [EMRInstanceFleetConfigConfiguration])
emrifcitcConfigurations = lens _eMRInstanceFleetConfigInstanceTypeConfigConfigurations (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-ebsconfiguration
emrifcitcEbsConfiguration :: Lens' EMRInstanceFleetConfigInstanceTypeConfig (Maybe EMRInstanceFleetConfigEbsConfiguration)
emrifcitcEbsConfiguration = lens _eMRInstanceFleetConfigInstanceTypeConfigEbsConfiguration (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigEbsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-instancetype
emrifcitcInstanceType :: Lens' EMRInstanceFleetConfigInstanceTypeConfig (Val Text)
emrifcitcInstanceType = lens _eMRInstanceFleetConfigInstanceTypeConfigInstanceType (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancetypeconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfig-weightedcapacity
emrifcitcWeightedCapacity :: Lens' EMRInstanceFleetConfigInstanceTypeConfig (Maybe (Val Integer))
emrifcitcWeightedCapacity = lens _eMRInstanceFleetConfigInstanceTypeConfigWeightedCapacity (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigWeightedCapacity = a })
