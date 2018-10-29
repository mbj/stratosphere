{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html

module Stratosphere.ResourceProperties.AppStreamFleetVpcConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamFleetVpcConfig. See
-- 'appStreamFleetVpcConfig' for a more convenient constructor.
data AppStreamFleetVpcConfig =
  AppStreamFleetVpcConfig
  { _appStreamFleetVpcConfigSecurityGroupIds :: Maybe (ValList Text)
  , _appStreamFleetVpcConfigSubnetIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AppStreamFleetVpcConfig where
  toJSON AppStreamFleetVpcConfig{..} =
    object $
    catMaybes
    [ fmap (("SecurityGroupIds",) . toJSON) _appStreamFleetVpcConfigSecurityGroupIds
    , fmap (("SubnetIds",) . toJSON) _appStreamFleetVpcConfigSubnetIds
    ]

instance FromJSON AppStreamFleetVpcConfig where
  parseJSON (Object obj) =
    AppStreamFleetVpcConfig <$>
      (obj .:? "SecurityGroupIds") <*>
      (obj .:? "SubnetIds")
  parseJSON _ = mempty

-- | Constructor for 'AppStreamFleetVpcConfig' containing required fields as
-- arguments.
appStreamFleetVpcConfig
  :: AppStreamFleetVpcConfig
appStreamFleetVpcConfig  =
  AppStreamFleetVpcConfig
  { _appStreamFleetVpcConfigSecurityGroupIds = Nothing
  , _appStreamFleetVpcConfigSubnetIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-securitygroupids
asfvcSecurityGroupIds :: Lens' AppStreamFleetVpcConfig (Maybe (ValList Text))
asfvcSecurityGroupIds = lens _appStreamFleetVpcConfigSecurityGroupIds (\s a -> s { _appStreamFleetVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-subnetids
asfvcSubnetIds :: Lens' AppStreamFleetVpcConfig (Maybe (ValList Text))
asfvcSubnetIds = lens _appStreamFleetVpcConfigSubnetIds (\s a -> s { _appStreamFleetVpcConfigSubnetIds = a })
