
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskSetNetworkConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskSetAwsVpcConfiguration

-- | Full data type definition for ECSTaskSetNetworkConfiguration. See
-- 'ecsTaskSetNetworkConfiguration' for a more convenient constructor.
data ECSTaskSetNetworkConfiguration =
  ECSTaskSetNetworkConfiguration
  { _eCSTaskSetNetworkConfigurationAwsVpcConfiguration :: Maybe ECSTaskSetAwsVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON ECSTaskSetNetworkConfiguration where
  toJSON ECSTaskSetNetworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AwsVpcConfiguration",) . toJSON) _eCSTaskSetNetworkConfigurationAwsVpcConfiguration
    ]

-- | Constructor for 'ECSTaskSetNetworkConfiguration' containing required
-- fields as arguments.
ecsTaskSetNetworkConfiguration
  :: ECSTaskSetNetworkConfiguration
ecsTaskSetNetworkConfiguration  =
  ECSTaskSetNetworkConfiguration
  { _eCSTaskSetNetworkConfigurationAwsVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html#cfn-ecs-taskset-networkconfiguration-awsvpcconfiguration
ecstsncAwsVpcConfiguration :: Lens' ECSTaskSetNetworkConfiguration (Maybe ECSTaskSetAwsVpcConfiguration)
ecstsncAwsVpcConfiguration = lens _eCSTaskSetNetworkConfigurationAwsVpcConfiguration (\s a -> s { _eCSTaskSetNetworkConfigurationAwsVpcConfiguration = a })
