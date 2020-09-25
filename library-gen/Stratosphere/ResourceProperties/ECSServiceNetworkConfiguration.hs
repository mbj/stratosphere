{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html

module Stratosphere.ResourceProperties.ECSServiceNetworkConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSServiceAwsVpcConfiguration

-- | Full data type definition for ECSServiceNetworkConfiguration. See
-- 'ecsServiceNetworkConfiguration' for a more convenient constructor.
data ECSServiceNetworkConfiguration =
  ECSServiceNetworkConfiguration
  { _eCSServiceNetworkConfigurationAwsVpcConfiguration :: Maybe ECSServiceAwsVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON ECSServiceNetworkConfiguration where
  toJSON ECSServiceNetworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AwsVpcConfiguration",) . toJSON) _eCSServiceNetworkConfigurationAwsVpcConfiguration
    ]

-- | Constructor for 'ECSServiceNetworkConfiguration' containing required
-- fields as arguments.
ecsServiceNetworkConfiguration
  :: ECSServiceNetworkConfiguration
ecsServiceNetworkConfiguration  =
  ECSServiceNetworkConfiguration
  { _eCSServiceNetworkConfigurationAwsVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html#cfn-ecs-service-networkconfiguration-awsvpcconfiguration
ecssncAwsVpcConfiguration :: Lens' ECSServiceNetworkConfiguration (Maybe ECSServiceAwsVpcConfiguration)
ecssncAwsVpcConfiguration = lens _eCSServiceNetworkConfigurationAwsVpcConfiguration (\s a -> s { _eCSServiceNetworkConfigurationAwsVpcConfiguration = a })
