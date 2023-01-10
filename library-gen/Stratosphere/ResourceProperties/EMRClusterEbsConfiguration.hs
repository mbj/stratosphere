
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html

module Stratosphere.ResourceProperties.EMRClusterEbsConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig

-- | Full data type definition for EMRClusterEbsConfiguration. See
-- 'emrClusterEbsConfiguration' for a more convenient constructor.
data EMRClusterEbsConfiguration =
  EMRClusterEbsConfiguration
  { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs :: Maybe [EMRClusterEbsBlockDeviceConfig]
  , _eMRClusterEbsConfigurationEbsOptimized :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EMRClusterEbsConfiguration where
  toJSON EMRClusterEbsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("EbsBlockDeviceConfigs",) . toJSON) _eMRClusterEbsConfigurationEbsBlockDeviceConfigs
    , fmap (("EbsOptimized",) . toJSON) _eMRClusterEbsConfigurationEbsOptimized
    ]

-- | Constructor for 'EMRClusterEbsConfiguration' containing required fields
-- as arguments.
emrClusterEbsConfiguration
  :: EMRClusterEbsConfiguration
emrClusterEbsConfiguration  =
  EMRClusterEbsConfiguration
  { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs = Nothing
  , _eMRClusterEbsConfigurationEbsOptimized = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html#cfn-elasticmapreduce-cluster-ebsconfiguration-ebsblockdeviceconfigs
emrcecEbsBlockDeviceConfigs :: Lens' EMRClusterEbsConfiguration (Maybe [EMRClusterEbsBlockDeviceConfig])
emrcecEbsBlockDeviceConfigs = lens _eMRClusterEbsConfigurationEbsBlockDeviceConfigs (\s a -> s { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html#cfn-elasticmapreduce-cluster-ebsconfiguration-ebsoptimized
emrcecEbsOptimized :: Lens' EMRClusterEbsConfiguration (Maybe (Val Bool))
emrcecEbsOptimized = lens _eMRClusterEbsConfigurationEbsOptimized (\s a -> s { _eMRClusterEbsConfigurationEbsOptimized = a })
