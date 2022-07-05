{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html

module Stratosphere.Resources.EMRInstanceGroupConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigAutoScalingPolicy
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigConfiguration
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsConfiguration

-- | Full data type definition for EMRInstanceGroupConfig. See
-- 'emrInstanceGroupConfig' for a more convenient constructor.
data EMRInstanceGroupConfig =
  EMRInstanceGroupConfig
  { _eMRInstanceGroupConfigAutoScalingPolicy :: Maybe EMRInstanceGroupConfigAutoScalingPolicy
  , _eMRInstanceGroupConfigBidPrice :: Maybe (Val Text)
  , _eMRInstanceGroupConfigConfigurations :: Maybe [EMRInstanceGroupConfigConfiguration]
  , _eMRInstanceGroupConfigEbsConfiguration :: Maybe EMRInstanceGroupConfigEbsConfiguration
  , _eMRInstanceGroupConfigInstanceCount :: Val Integer
  , _eMRInstanceGroupConfigInstanceRole :: Val Text
  , _eMRInstanceGroupConfigInstanceType :: Val Text
  , _eMRInstanceGroupConfigJobFlowId :: Val Text
  , _eMRInstanceGroupConfigMarket :: Maybe (Val Text)
  , _eMRInstanceGroupConfigName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EMRInstanceGroupConfig where
  toResourceProperties EMRInstanceGroupConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EMR::InstanceGroupConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoScalingPolicy",) . toJSON) _eMRInstanceGroupConfigAutoScalingPolicy
        , fmap (("BidPrice",) . toJSON) _eMRInstanceGroupConfigBidPrice
        , fmap (("Configurations",) . toJSON) _eMRInstanceGroupConfigConfigurations
        , fmap (("EbsConfiguration",) . toJSON) _eMRInstanceGroupConfigEbsConfiguration
        , (Just . ("InstanceCount",) . toJSON) _eMRInstanceGroupConfigInstanceCount
        , (Just . ("InstanceRole",) . toJSON) _eMRInstanceGroupConfigInstanceRole
        , (Just . ("InstanceType",) . toJSON) _eMRInstanceGroupConfigInstanceType
        , (Just . ("JobFlowId",) . toJSON) _eMRInstanceGroupConfigJobFlowId
        , fmap (("Market",) . toJSON) _eMRInstanceGroupConfigMarket
        , fmap (("Name",) . toJSON) _eMRInstanceGroupConfigName
        ]
    }

-- | Constructor for 'EMRInstanceGroupConfig' containing required fields as
-- arguments.
emrInstanceGroupConfig
  :: Val Integer -- ^ 'emrigcInstanceCount'
  -> Val Text -- ^ 'emrigcInstanceRole'
  -> Val Text -- ^ 'emrigcInstanceType'
  -> Val Text -- ^ 'emrigcJobFlowId'
  -> EMRInstanceGroupConfig
emrInstanceGroupConfig instanceCountarg instanceRolearg instanceTypearg jobFlowIdarg =
  EMRInstanceGroupConfig
  { _eMRInstanceGroupConfigAutoScalingPolicy = Nothing
  , _eMRInstanceGroupConfigBidPrice = Nothing
  , _eMRInstanceGroupConfigConfigurations = Nothing
  , _eMRInstanceGroupConfigEbsConfiguration = Nothing
  , _eMRInstanceGroupConfigInstanceCount = instanceCountarg
  , _eMRInstanceGroupConfigInstanceRole = instanceRolearg
  , _eMRInstanceGroupConfigInstanceType = instanceTypearg
  , _eMRInstanceGroupConfigJobFlowId = jobFlowIdarg
  , _eMRInstanceGroupConfigMarket = Nothing
  , _eMRInstanceGroupConfigName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy
emrigcAutoScalingPolicy :: Lens' EMRInstanceGroupConfig (Maybe EMRInstanceGroupConfigAutoScalingPolicy)
emrigcAutoScalingPolicy = lens _eMRInstanceGroupConfigAutoScalingPolicy (\s a -> s { _eMRInstanceGroupConfigAutoScalingPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-bidprice
emrigcBidPrice :: Lens' EMRInstanceGroupConfig (Maybe (Val Text))
emrigcBidPrice = lens _eMRInstanceGroupConfigBidPrice (\s a -> s { _eMRInstanceGroupConfigBidPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-configurations
emrigcConfigurations :: Lens' EMRInstanceGroupConfig (Maybe [EMRInstanceGroupConfigConfiguration])
emrigcConfigurations = lens _eMRInstanceGroupConfigConfigurations (\s a -> s { _eMRInstanceGroupConfigConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-ebsconfiguration
emrigcEbsConfiguration :: Lens' EMRInstanceGroupConfig (Maybe EMRInstanceGroupConfigEbsConfiguration)
emrigcEbsConfiguration = lens _eMRInstanceGroupConfigEbsConfiguration (\s a -> s { _eMRInstanceGroupConfigEbsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfiginstancecount-
emrigcInstanceCount :: Lens' EMRInstanceGroupConfig (Val Integer)
emrigcInstanceCount = lens _eMRInstanceGroupConfigInstanceCount (\s a -> s { _eMRInstanceGroupConfigInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-instancerole
emrigcInstanceRole :: Lens' EMRInstanceGroupConfig (Val Text)
emrigcInstanceRole = lens _eMRInstanceGroupConfigInstanceRole (\s a -> s { _eMRInstanceGroupConfigInstanceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-instancetype
emrigcInstanceType :: Lens' EMRInstanceGroupConfig (Val Text)
emrigcInstanceType = lens _eMRInstanceGroupConfigInstanceType (\s a -> s { _eMRInstanceGroupConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-jobflowid
emrigcJobFlowId :: Lens' EMRInstanceGroupConfig (Val Text)
emrigcJobFlowId = lens _eMRInstanceGroupConfigJobFlowId (\s a -> s { _eMRInstanceGroupConfigJobFlowId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-market
emrigcMarket :: Lens' EMRInstanceGroupConfig (Maybe (Val Text))
emrigcMarket = lens _eMRInstanceGroupConfigMarket (\s a -> s { _eMRInstanceGroupConfigMarket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-instancegroupconfig.html#cfn-emr-instancegroupconfig-name
emrigcName :: Lens' EMRInstanceGroupConfig (Maybe (Val Text))
emrigcName = lens _eMRInstanceGroupConfigName (\s a -> s { _eMRInstanceGroupConfigName = a })
