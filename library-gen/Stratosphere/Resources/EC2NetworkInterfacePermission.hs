{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html

module Stratosphere.Resources.EC2NetworkInterfacePermission where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2NetworkInterfacePermission. See
-- 'ec2NetworkInterfacePermission' for a more convenient constructor.
data EC2NetworkInterfacePermission =
  EC2NetworkInterfacePermission
  { _eC2NetworkInterfacePermissionAwsAccountId :: Val Text
  , _eC2NetworkInterfacePermissionNetworkInterfaceId :: Val Text
  , _eC2NetworkInterfacePermissionPermission :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2NetworkInterfacePermission where
  toResourceProperties EC2NetworkInterfacePermission{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::NetworkInterfacePermission"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AwsAccountId",) . toJSON) _eC2NetworkInterfacePermissionAwsAccountId
        , (Just . ("NetworkInterfaceId",) . toJSON) _eC2NetworkInterfacePermissionNetworkInterfaceId
        , (Just . ("Permission",) . toJSON) _eC2NetworkInterfacePermissionPermission
        ]
    }

-- | Constructor for 'EC2NetworkInterfacePermission' containing required
-- fields as arguments.
ec2NetworkInterfacePermission
  :: Val Text -- ^ 'ecnipAwsAccountId'
  -> Val Text -- ^ 'ecnipNetworkInterfaceId'
  -> Val Text -- ^ 'ecnipPermission'
  -> EC2NetworkInterfacePermission
ec2NetworkInterfacePermission awsAccountIdarg networkInterfaceIdarg permissionarg =
  EC2NetworkInterfacePermission
  { _eC2NetworkInterfacePermissionAwsAccountId = awsAccountIdarg
  , _eC2NetworkInterfacePermissionNetworkInterfaceId = networkInterfaceIdarg
  , _eC2NetworkInterfacePermissionPermission = permissionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-awsaccountid
ecnipAwsAccountId :: Lens' EC2NetworkInterfacePermission (Val Text)
ecnipAwsAccountId = lens _eC2NetworkInterfacePermissionAwsAccountId (\s a -> s { _eC2NetworkInterfacePermissionAwsAccountId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-networkinterfaceid
ecnipNetworkInterfaceId :: Lens' EC2NetworkInterfacePermission (Val Text)
ecnipNetworkInterfaceId = lens _eC2NetworkInterfacePermissionNetworkInterfaceId (\s a -> s { _eC2NetworkInterfacePermissionNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-permission
ecnipPermission :: Lens' EC2NetworkInterfacePermission (Val Text)
ecnipPermission = lens _eC2NetworkInterfacePermissionPermission (\s a -> s { _eC2NetworkInterfacePermissionPermission = a })
