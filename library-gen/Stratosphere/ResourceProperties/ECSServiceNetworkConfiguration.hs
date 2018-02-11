{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html

module Stratosphere.ResourceProperties.ECSServiceNetworkConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSServiceAwsVpcConfiguration

-- | Full data type definition for ECSServiceNetworkConfiguration. See
-- 'ecsServiceNetworkConfiguration' for a more convenient constructor.
data ECSServiceNetworkConfiguration =
  ECSServiceNetworkConfiguration
  { _eCSServiceNetworkConfigurationAwsvpcConfiguration :: Maybe ECSServiceAwsVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON ECSServiceNetworkConfiguration where
  toJSON ECSServiceNetworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AwsvpcConfiguration",) . toJSON) _eCSServiceNetworkConfigurationAwsvpcConfiguration
    ]

instance FromJSON ECSServiceNetworkConfiguration where
  parseJSON (Object obj) =
    ECSServiceNetworkConfiguration <$>
      (obj .:? "AwsvpcConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'ECSServiceNetworkConfiguration' containing required
-- fields as arguments.
ecsServiceNetworkConfiguration
  :: ECSServiceNetworkConfiguration
ecsServiceNetworkConfiguration  =
  ECSServiceNetworkConfiguration
  { _eCSServiceNetworkConfigurationAwsvpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html#cfn-ecs-service-networkconfiguration-awsvpcconfiguration
ecssncAwsvpcConfiguration :: Lens' ECSServiceNetworkConfiguration (Maybe ECSServiceAwsVpcConfiguration)
ecssncAwsvpcConfiguration = lens _eCSServiceNetworkConfigurationAwsvpcConfiguration (\s a -> s { _eCSServiceNetworkConfigurationAwsvpcConfiguration = a })
