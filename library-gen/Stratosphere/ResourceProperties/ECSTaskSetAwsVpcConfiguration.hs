
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskSetAwsVpcConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskSetAwsVpcConfiguration. See
-- 'ecsTaskSetAwsVpcConfiguration' for a more convenient constructor.
data ECSTaskSetAwsVpcConfiguration =
  ECSTaskSetAwsVpcConfiguration
  { _eCSTaskSetAwsVpcConfigurationAssignPublicIp :: Maybe (Val Text)
  , _eCSTaskSetAwsVpcConfigurationSecurityGroups :: Maybe (ValList Text)
  , _eCSTaskSetAwsVpcConfigurationSubnets :: ValList Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskSetAwsVpcConfiguration where
  toJSON ECSTaskSetAwsVpcConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AssignPublicIp",) . toJSON) _eCSTaskSetAwsVpcConfigurationAssignPublicIp
    , fmap (("SecurityGroups",) . toJSON) _eCSTaskSetAwsVpcConfigurationSecurityGroups
    , (Just . ("Subnets",) . toJSON) _eCSTaskSetAwsVpcConfigurationSubnets
    ]

-- | Constructor for 'ECSTaskSetAwsVpcConfiguration' containing required
-- fields as arguments.
ecsTaskSetAwsVpcConfiguration
  :: ValList Text -- ^ 'ecstsavcSubnets'
  -> ECSTaskSetAwsVpcConfiguration
ecsTaskSetAwsVpcConfiguration subnetsarg =
  ECSTaskSetAwsVpcConfiguration
  { _eCSTaskSetAwsVpcConfigurationAssignPublicIp = Nothing
  , _eCSTaskSetAwsVpcConfigurationSecurityGroups = Nothing
  , _eCSTaskSetAwsVpcConfigurationSubnets = subnetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-assignpublicip
ecstsavcAssignPublicIp :: Lens' ECSTaskSetAwsVpcConfiguration (Maybe (Val Text))
ecstsavcAssignPublicIp = lens _eCSTaskSetAwsVpcConfigurationAssignPublicIp (\s a -> s { _eCSTaskSetAwsVpcConfigurationAssignPublicIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-securitygroups
ecstsavcSecurityGroups :: Lens' ECSTaskSetAwsVpcConfiguration (Maybe (ValList Text))
ecstsavcSecurityGroups = lens _eCSTaskSetAwsVpcConfigurationSecurityGroups (\s a -> s { _eCSTaskSetAwsVpcConfigurationSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-subnets
ecstsavcSubnets :: Lens' ECSTaskSetAwsVpcConfiguration (ValList Text)
ecstsavcSubnets = lens _eCSTaskSetAwsVpcConfigurationSubnets (\s a -> s { _eCSTaskSetAwsVpcConfigurationSubnets = a })
