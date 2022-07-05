{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html

module Stratosphere.Resources.EMRInstanceFleetConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigInstanceTypeConfig
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications

-- | Full data type definition for EMRInstanceFleetConfig. See
-- 'emrInstanceFleetConfig' for a more convenient constructor.
data EMRInstanceFleetConfig =
  EMRInstanceFleetConfig
  { _eMRInstanceFleetConfigClusterId :: Val Text
  , _eMRInstanceFleetConfigInstanceFleetType :: Val Text
  , _eMRInstanceFleetConfigInstanceTypeConfigs :: Maybe [EMRInstanceFleetConfigInstanceTypeConfig]
  , _eMRInstanceFleetConfigLaunchSpecifications :: Maybe EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications
  , _eMRInstanceFleetConfigName :: Maybe (Val Text)
  , _eMRInstanceFleetConfigTargetOnDemandCapacity :: Maybe (Val Integer)
  , _eMRInstanceFleetConfigTargetSpotCapacity :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties EMRInstanceFleetConfig where
  toResourceProperties EMRInstanceFleetConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EMR::InstanceFleetConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ClusterId",) . toJSON) _eMRInstanceFleetConfigClusterId
        , (Just . ("InstanceFleetType",) . toJSON) _eMRInstanceFleetConfigInstanceFleetType
        , fmap (("InstanceTypeConfigs",) . toJSON) _eMRInstanceFleetConfigInstanceTypeConfigs
        , fmap (("LaunchSpecifications",) . toJSON) _eMRInstanceFleetConfigLaunchSpecifications
        , fmap (("Name",) . toJSON) _eMRInstanceFleetConfigName
        , fmap (("TargetOnDemandCapacity",) . toJSON) _eMRInstanceFleetConfigTargetOnDemandCapacity
        , fmap (("TargetSpotCapacity",) . toJSON) _eMRInstanceFleetConfigTargetSpotCapacity
        ]
    }

-- | Constructor for 'EMRInstanceFleetConfig' containing required fields as
-- arguments.
emrInstanceFleetConfig
  :: Val Text -- ^ 'emrifcClusterId'
  -> Val Text -- ^ 'emrifcInstanceFleetType'
  -> EMRInstanceFleetConfig
emrInstanceFleetConfig clusterIdarg instanceFleetTypearg =
  EMRInstanceFleetConfig
  { _eMRInstanceFleetConfigClusterId = clusterIdarg
  , _eMRInstanceFleetConfigInstanceFleetType = instanceFleetTypearg
  , _eMRInstanceFleetConfigInstanceTypeConfigs = Nothing
  , _eMRInstanceFleetConfigLaunchSpecifications = Nothing
  , _eMRInstanceFleetConfigName = Nothing
  , _eMRInstanceFleetConfigTargetOnDemandCapacity = Nothing
  , _eMRInstanceFleetConfigTargetSpotCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-clusterid
emrifcClusterId :: Lens' EMRInstanceFleetConfig (Val Text)
emrifcClusterId = lens _eMRInstanceFleetConfigClusterId (\s a -> s { _eMRInstanceFleetConfigClusterId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancefleettype
emrifcInstanceFleetType :: Lens' EMRInstanceFleetConfig (Val Text)
emrifcInstanceFleetType = lens _eMRInstanceFleetConfigInstanceFleetType (\s a -> s { _eMRInstanceFleetConfigInstanceFleetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-instancetypeconfigs
emrifcInstanceTypeConfigs :: Lens' EMRInstanceFleetConfig (Maybe [EMRInstanceFleetConfigInstanceTypeConfig])
emrifcInstanceTypeConfigs = lens _eMRInstanceFleetConfigInstanceTypeConfigs (\s a -> s { _eMRInstanceFleetConfigInstanceTypeConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-launchspecifications
emrifcLaunchSpecifications :: Lens' EMRInstanceFleetConfig (Maybe EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications)
emrifcLaunchSpecifications = lens _eMRInstanceFleetConfigLaunchSpecifications (\s a -> s { _eMRInstanceFleetConfigLaunchSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-name
emrifcName :: Lens' EMRInstanceFleetConfig (Maybe (Val Text))
emrifcName = lens _eMRInstanceFleetConfigName (\s a -> s { _eMRInstanceFleetConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-targetondemandcapacity
emrifcTargetOnDemandCapacity :: Lens' EMRInstanceFleetConfig (Maybe (Val Integer))
emrifcTargetOnDemandCapacity = lens _eMRInstanceFleetConfigTargetOnDemandCapacity (\s a -> s { _eMRInstanceFleetConfigTargetOnDemandCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-instancefleetconfig.html#cfn-elasticmapreduce-instancefleetconfig-targetspotcapacity
emrifcTargetSpotCapacity :: Lens' EMRInstanceFleetConfig (Maybe (Val Integer))
emrifcTargetSpotCapacity = lens _eMRInstanceFleetConfigTargetSpotCapacity (\s a -> s { _eMRInstanceFleetConfigTargetSpotCapacity = a })
