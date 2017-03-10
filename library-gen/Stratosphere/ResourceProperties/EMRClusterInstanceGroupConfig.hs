{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html

module Stratosphere.ResourceProperties.EMRClusterInstanceGroupConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterConfiguration
import Stratosphere.ResourceProperties.EMRClusterEbsConfiguration

-- | Full data type definition for EMRClusterInstanceGroupConfig. See
-- 'emrClusterInstanceGroupConfig' for a more convenient constructor.
data EMRClusterInstanceGroupConfig =
  EMRClusterInstanceGroupConfig
  { _eMRClusterInstanceGroupConfigBidPrice :: Maybe (Val Text)
  , _eMRClusterInstanceGroupConfigConfigurations :: Maybe [EMRClusterConfiguration]
  , _eMRClusterInstanceGroupConfigEbsConfiguration :: Maybe EMRClusterEbsConfiguration
  , _eMRClusterInstanceGroupConfigInstanceCount :: Val Integer'
  , _eMRClusterInstanceGroupConfigInstanceType :: Val Text
  , _eMRClusterInstanceGroupConfigMarket :: Maybe (Val Text)
  , _eMRClusterInstanceGroupConfigName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRClusterInstanceGroupConfig where
  toJSON EMRClusterInstanceGroupConfig{..} =
    object $
    catMaybes
    [ ("BidPrice" .=) <$> _eMRClusterInstanceGroupConfigBidPrice
    , ("Configurations" .=) <$> _eMRClusterInstanceGroupConfigConfigurations
    , ("EbsConfiguration" .=) <$> _eMRClusterInstanceGroupConfigEbsConfiguration
    , Just ("InstanceCount" .= _eMRClusterInstanceGroupConfigInstanceCount)
    , Just ("InstanceType" .= _eMRClusterInstanceGroupConfigInstanceType)
    , ("Market" .=) <$> _eMRClusterInstanceGroupConfigMarket
    , ("Name" .=) <$> _eMRClusterInstanceGroupConfigName
    ]

instance FromJSON EMRClusterInstanceGroupConfig where
  parseJSON (Object obj) =
    EMRClusterInstanceGroupConfig <$>
      obj .:? "BidPrice" <*>
      obj .:? "Configurations" <*>
      obj .:? "EbsConfiguration" <*>
      obj .: "InstanceCount" <*>
      obj .: "InstanceType" <*>
      obj .:? "Market" <*>
      obj .:? "Name"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterInstanceGroupConfig' containing required
-- fields as arguments.
emrClusterInstanceGroupConfig
  :: Val Integer' -- ^ 'emrcigcInstanceCount'
  -> Val Text -- ^ 'emrcigcInstanceType'
  -> EMRClusterInstanceGroupConfig
emrClusterInstanceGroupConfig instanceCountarg instanceTypearg =
  EMRClusterInstanceGroupConfig
  { _eMRClusterInstanceGroupConfigBidPrice = Nothing
  , _eMRClusterInstanceGroupConfigConfigurations = Nothing
  , _eMRClusterInstanceGroupConfigEbsConfiguration = Nothing
  , _eMRClusterInstanceGroupConfigInstanceCount = instanceCountarg
  , _eMRClusterInstanceGroupConfigInstanceType = instanceTypearg
  , _eMRClusterInstanceGroupConfigMarket = Nothing
  , _eMRClusterInstanceGroupConfigName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-bidprice
emrcigcBidPrice :: Lens' EMRClusterInstanceGroupConfig (Maybe (Val Text))
emrcigcBidPrice = lens _eMRClusterInstanceGroupConfigBidPrice (\s a -> s { _eMRClusterInstanceGroupConfigBidPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-configurations
emrcigcConfigurations :: Lens' EMRClusterInstanceGroupConfig (Maybe [EMRClusterConfiguration])
emrcigcConfigurations = lens _eMRClusterInstanceGroupConfigConfigurations (\s a -> s { _eMRClusterInstanceGroupConfigConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfigConfigurations-ebsconfiguration
emrcigcEbsConfiguration :: Lens' EMRClusterInstanceGroupConfig (Maybe EMRClusterEbsConfiguration)
emrcigcEbsConfiguration = lens _eMRClusterInstanceGroupConfigEbsConfiguration (\s a -> s { _eMRClusterInstanceGroupConfigEbsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-instancecount
emrcigcInstanceCount :: Lens' EMRClusterInstanceGroupConfig (Val Integer')
emrcigcInstanceCount = lens _eMRClusterInstanceGroupConfigInstanceCount (\s a -> s { _eMRClusterInstanceGroupConfigInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-instancetype
emrcigcInstanceType :: Lens' EMRClusterInstanceGroupConfig (Val Text)
emrcigcInstanceType = lens _eMRClusterInstanceGroupConfigInstanceType (\s a -> s { _eMRClusterInstanceGroupConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-market
emrcigcMarket :: Lens' EMRClusterInstanceGroupConfig (Maybe (Val Text))
emrcigcMarket = lens _eMRClusterInstanceGroupConfigMarket (\s a -> s { _eMRClusterInstanceGroupConfigMarket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-name
emrcigcName :: Lens' EMRClusterInstanceGroupConfig (Maybe (Val Text))
emrcigcName = lens _eMRClusterInstanceGroupConfigName (\s a -> s { _eMRClusterInstanceGroupConfigName = a })
