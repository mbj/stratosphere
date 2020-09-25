{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html

module Stratosphere.ResourceProperties.ECSServiceAwsVpcConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSServiceAwsVpcConfiguration. See
-- 'ecsServiceAwsVpcConfiguration' for a more convenient constructor.
data ECSServiceAwsVpcConfiguration =
  ECSServiceAwsVpcConfiguration
  { _eCSServiceAwsVpcConfigurationAssignPublicIp :: Maybe (Val Text)
  , _eCSServiceAwsVpcConfigurationSecurityGroups :: Maybe (ValList Text)
  , _eCSServiceAwsVpcConfigurationSubnets :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ECSServiceAwsVpcConfiguration where
  toJSON ECSServiceAwsVpcConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AssignPublicIp",) . toJSON) _eCSServiceAwsVpcConfigurationAssignPublicIp
    , fmap (("SecurityGroups",) . toJSON) _eCSServiceAwsVpcConfigurationSecurityGroups
    , fmap (("Subnets",) . toJSON) _eCSServiceAwsVpcConfigurationSubnets
    ]

-- | Constructor for 'ECSServiceAwsVpcConfiguration' containing required
-- fields as arguments.
ecsServiceAwsVpcConfiguration
  :: ECSServiceAwsVpcConfiguration
ecsServiceAwsVpcConfiguration  =
  ECSServiceAwsVpcConfiguration
  { _eCSServiceAwsVpcConfigurationAssignPublicIp = Nothing
  , _eCSServiceAwsVpcConfigurationSecurityGroups = Nothing
  , _eCSServiceAwsVpcConfigurationSubnets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-assignpublicip
ecssavcAssignPublicIp :: Lens' ECSServiceAwsVpcConfiguration (Maybe (Val Text))
ecssavcAssignPublicIp = lens _eCSServiceAwsVpcConfigurationAssignPublicIp (\s a -> s { _eCSServiceAwsVpcConfigurationAssignPublicIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-securitygroups
ecssavcSecurityGroups :: Lens' ECSServiceAwsVpcConfiguration (Maybe (ValList Text))
ecssavcSecurityGroups = lens _eCSServiceAwsVpcConfigurationSecurityGroups (\s a -> s { _eCSServiceAwsVpcConfigurationSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-subnets
ecssavcSubnets :: Lens' ECSServiceAwsVpcConfiguration (Maybe (ValList Text))
ecssavcSubnets = lens _eCSServiceAwsVpcConfigurationSubnets (\s a -> s { _eCSServiceAwsVpcConfigurationSubnets = a })
