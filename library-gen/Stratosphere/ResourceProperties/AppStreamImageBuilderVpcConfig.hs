{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html

module Stratosphere.ResourceProperties.AppStreamImageBuilderVpcConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamImageBuilderVpcConfig. See
-- 'appStreamImageBuilderVpcConfig' for a more convenient constructor.
data AppStreamImageBuilderVpcConfig =
  AppStreamImageBuilderVpcConfig
  { _appStreamImageBuilderVpcConfigSecurityGroupIds :: Maybe (ValList Text)
  , _appStreamImageBuilderVpcConfigSubnetIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AppStreamImageBuilderVpcConfig where
  toJSON AppStreamImageBuilderVpcConfig{..} =
    object $
    catMaybes
    [ fmap (("SecurityGroupIds",) . toJSON) _appStreamImageBuilderVpcConfigSecurityGroupIds
    , fmap (("SubnetIds",) . toJSON) _appStreamImageBuilderVpcConfigSubnetIds
    ]

-- | Constructor for 'AppStreamImageBuilderVpcConfig' containing required
-- fields as arguments.
appStreamImageBuilderVpcConfig
  :: AppStreamImageBuilderVpcConfig
appStreamImageBuilderVpcConfig  =
  AppStreamImageBuilderVpcConfig
  { _appStreamImageBuilderVpcConfigSecurityGroupIds = Nothing
  , _appStreamImageBuilderVpcConfigSubnetIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-securitygroupids
asibvcSecurityGroupIds :: Lens' AppStreamImageBuilderVpcConfig (Maybe (ValList Text))
asibvcSecurityGroupIds = lens _appStreamImageBuilderVpcConfigSecurityGroupIds (\s a -> s { _appStreamImageBuilderVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-subnetids
asibvcSubnetIds :: Lens' AppStreamImageBuilderVpcConfig (Maybe (ValList Text))
asibvcSubnetIds = lens _appStreamImageBuilderVpcConfigSubnetIds (\s a -> s { _appStreamImageBuilderVpcConfigSubnetIds = a })
