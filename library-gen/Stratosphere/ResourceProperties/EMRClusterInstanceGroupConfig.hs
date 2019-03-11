{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html

module Stratosphere.ResourceProperties.EMRClusterInstanceGroupConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterAutoScalingPolicy
import Stratosphere.ResourceProperties.EMRClusterConfiguration
import Stratosphere.ResourceProperties.EMRClusterEbsConfiguration

-- | Full data type definition for EMRClusterInstanceGroupConfig. See
-- 'emrClusterInstanceGroupConfig' for a more convenient constructor.
data EMRClusterInstanceGroupConfig =
  EMRClusterInstanceGroupConfig
  { _eMRClusterInstanceGroupConfigAutoScalingPolicy :: Maybe EMRClusterAutoScalingPolicy
  , _eMRClusterInstanceGroupConfigBidPrice :: Maybe (Val Text)
  , _eMRClusterInstanceGroupConfigConfigurations :: Maybe [EMRClusterConfiguration]
  , _eMRClusterInstanceGroupConfigEbsConfiguration :: Maybe EMRClusterEbsConfiguration
  , _eMRClusterInstanceGroupConfigInstanceCount :: Val Integer
  , _eMRClusterInstanceGroupConfigInstanceType :: Val Text
  , _eMRClusterInstanceGroupConfigMarket :: Maybe (Val Text)
  , _eMRClusterInstanceGroupConfigName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRClusterInstanceGroupConfig where
  toJSON EMRClusterInstanceGroupConfig{..} =
    object $
    catMaybes
    [ fmap (("AutoScalingPolicy",) . toJSON) _eMRClusterInstanceGroupConfigAutoScalingPolicy
    , fmap (("BidPrice",) . toJSON) _eMRClusterInstanceGroupConfigBidPrice
    , fmap (("Configurations",) . toJSON) _eMRClusterInstanceGroupConfigConfigurations
    , fmap (("EbsConfiguration",) . toJSON) _eMRClusterInstanceGroupConfigEbsConfiguration
    , (Just . ("InstanceCount",) . toJSON . fmap Integer') _eMRClusterInstanceGroupConfigInstanceCount
    , (Just . ("InstanceType",) . toJSON) _eMRClusterInstanceGroupConfigInstanceType
    , fmap (("Market",) . toJSON) _eMRClusterInstanceGroupConfigMarket
    , fmap (("Name",) . toJSON) _eMRClusterInstanceGroupConfigName
    ]

-- | Constructor for 'EMRClusterInstanceGroupConfig' containing required
-- fields as arguments.
emrClusterInstanceGroupConfig
  :: Val Integer -- ^ 'emrcigcInstanceCount'
  -> Val Text -- ^ 'emrcigcInstanceType'
  -> EMRClusterInstanceGroupConfig
emrClusterInstanceGroupConfig instanceCountarg instanceTypearg =
  EMRClusterInstanceGroupConfig
  { _eMRClusterInstanceGroupConfigAutoScalingPolicy = Nothing
  , _eMRClusterInstanceGroupConfigBidPrice = Nothing
  , _eMRClusterInstanceGroupConfigConfigurations = Nothing
  , _eMRClusterInstanceGroupConfigEbsConfiguration = Nothing
  , _eMRClusterInstanceGroupConfigInstanceCount = instanceCountarg
  , _eMRClusterInstanceGroupConfigInstanceType = instanceTypearg
  , _eMRClusterInstanceGroupConfigMarket = Nothing
  , _eMRClusterInstanceGroupConfigName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-autoscalingpolicy
emrcigcAutoScalingPolicy :: Lens' EMRClusterInstanceGroupConfig (Maybe EMRClusterAutoScalingPolicy)
emrcigcAutoScalingPolicy = lens _eMRClusterInstanceGroupConfigAutoScalingPolicy (\s a -> s { _eMRClusterInstanceGroupConfigAutoScalingPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-bidprice
emrcigcBidPrice :: Lens' EMRClusterInstanceGroupConfig (Maybe (Val Text))
emrcigcBidPrice = lens _eMRClusterInstanceGroupConfigBidPrice (\s a -> s { _eMRClusterInstanceGroupConfigBidPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-configurations
emrcigcConfigurations :: Lens' EMRClusterInstanceGroupConfig (Maybe [EMRClusterConfiguration])
emrcigcConfigurations = lens _eMRClusterInstanceGroupConfigConfigurations (\s a -> s { _eMRClusterInstanceGroupConfigConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-ebsconfiguration
emrcigcEbsConfiguration :: Lens' EMRClusterInstanceGroupConfig (Maybe EMRClusterEbsConfiguration)
emrcigcEbsConfiguration = lens _eMRClusterInstanceGroupConfigEbsConfiguration (\s a -> s { _eMRClusterInstanceGroupConfigEbsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-instancecount
emrcigcInstanceCount :: Lens' EMRClusterInstanceGroupConfig (Val Integer)
emrcigcInstanceCount = lens _eMRClusterInstanceGroupConfigInstanceCount (\s a -> s { _eMRClusterInstanceGroupConfigInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-instancetype
emrcigcInstanceType :: Lens' EMRClusterInstanceGroupConfig (Val Text)
emrcigcInstanceType = lens _eMRClusterInstanceGroupConfigInstanceType (\s a -> s { _eMRClusterInstanceGroupConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-market
emrcigcMarket :: Lens' EMRClusterInstanceGroupConfig (Maybe (Val Text))
emrcigcMarket = lens _eMRClusterInstanceGroupConfigMarket (\s a -> s { _eMRClusterInstanceGroupConfigMarket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-name
emrcigcName :: Lens' EMRClusterInstanceGroupConfig (Maybe (Val Text))
emrcigcName = lens _eMRClusterInstanceGroupConfigName (\s a -> s { _eMRClusterInstanceGroupConfigName = a })
