
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-networkconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleNetworkConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleVpcConfig

-- | Full data type definition for SageMakerMonitoringScheduleNetworkConfig.
-- See 'sageMakerMonitoringScheduleNetworkConfig' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleNetworkConfig =
  SageMakerMonitoringScheduleNetworkConfig
  { _sageMakerMonitoringScheduleNetworkConfigEnableInterContainerTrafficEncryption :: Maybe (Val Bool)
  , _sageMakerMonitoringScheduleNetworkConfigEnableNetworkIsolation :: Maybe (Val Bool)
  , _sageMakerMonitoringScheduleNetworkConfigVpcConfig :: Maybe SageMakerMonitoringScheduleVpcConfig
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleNetworkConfig where
  toJSON SageMakerMonitoringScheduleNetworkConfig{..} =
    object $
    catMaybes
    [ fmap (("EnableInterContainerTrafficEncryption",) . toJSON) _sageMakerMonitoringScheduleNetworkConfigEnableInterContainerTrafficEncryption
    , fmap (("EnableNetworkIsolation",) . toJSON) _sageMakerMonitoringScheduleNetworkConfigEnableNetworkIsolation
    , fmap (("VpcConfig",) . toJSON) _sageMakerMonitoringScheduleNetworkConfigVpcConfig
    ]

-- | Constructor for 'SageMakerMonitoringScheduleNetworkConfig' containing
-- required fields as arguments.
sageMakerMonitoringScheduleNetworkConfig
  :: SageMakerMonitoringScheduleNetworkConfig
sageMakerMonitoringScheduleNetworkConfig  =
  SageMakerMonitoringScheduleNetworkConfig
  { _sageMakerMonitoringScheduleNetworkConfigEnableInterContainerTrafficEncryption = Nothing
  , _sageMakerMonitoringScheduleNetworkConfigEnableNetworkIsolation = Nothing
  , _sageMakerMonitoringScheduleNetworkConfigVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-networkconfig.html#cfn-sagemaker-monitoringschedule-networkconfig-enableintercontainertrafficencryption
smmsncEnableInterContainerTrafficEncryption :: Lens' SageMakerMonitoringScheduleNetworkConfig (Maybe (Val Bool))
smmsncEnableInterContainerTrafficEncryption = lens _sageMakerMonitoringScheduleNetworkConfigEnableInterContainerTrafficEncryption (\s a -> s { _sageMakerMonitoringScheduleNetworkConfigEnableInterContainerTrafficEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-networkconfig.html#cfn-sagemaker-monitoringschedule-networkconfig-enablenetworkisolation
smmsncEnableNetworkIsolation :: Lens' SageMakerMonitoringScheduleNetworkConfig (Maybe (Val Bool))
smmsncEnableNetworkIsolation = lens _sageMakerMonitoringScheduleNetworkConfigEnableNetworkIsolation (\s a -> s { _sageMakerMonitoringScheduleNetworkConfigEnableNetworkIsolation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-networkconfig.html#cfn-sagemaker-monitoringschedule-networkconfig-vpcconfig
smmsncVpcConfig :: Lens' SageMakerMonitoringScheduleNetworkConfig (Maybe SageMakerMonitoringScheduleVpcConfig)
smmsncVpcConfig = lens _sageMakerMonitoringScheduleNetworkConfigVpcConfig (\s a -> s { _sageMakerMonitoringScheduleNetworkConfigVpcConfig = a })
