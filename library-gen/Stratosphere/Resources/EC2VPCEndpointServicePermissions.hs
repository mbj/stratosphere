{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html

module Stratosphere.Resources.EC2VPCEndpointServicePermissions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPCEndpointServicePermissions. See
-- 'ec2VPCEndpointServicePermissions' for a more convenient constructor.
data EC2VPCEndpointServicePermissions =
  EC2VPCEndpointServicePermissions
  { _eC2VPCEndpointServicePermissionsAllowedPrincipals :: Maybe (ValList Text)
  , _eC2VPCEndpointServicePermissionsServiceId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPCEndpointServicePermissions where
  toResourceProperties EC2VPCEndpointServicePermissions{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPCEndpointServicePermissions"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AllowedPrincipals",) . toJSON) _eC2VPCEndpointServicePermissionsAllowedPrincipals
        , (Just . ("ServiceId",) . toJSON) _eC2VPCEndpointServicePermissionsServiceId
        ]
    }

-- | Constructor for 'EC2VPCEndpointServicePermissions' containing required
-- fields as arguments.
ec2VPCEndpointServicePermissions
  :: Val Text -- ^ 'ecvpcespServiceId'
  -> EC2VPCEndpointServicePermissions
ec2VPCEndpointServicePermissions serviceIdarg =
  EC2VPCEndpointServicePermissions
  { _eC2VPCEndpointServicePermissionsAllowedPrincipals = Nothing
  , _eC2VPCEndpointServicePermissionsServiceId = serviceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-allowedprincipals
ecvpcespAllowedPrincipals :: Lens' EC2VPCEndpointServicePermissions (Maybe (ValList Text))
ecvpcespAllowedPrincipals = lens _eC2VPCEndpointServicePermissionsAllowedPrincipals (\s a -> s { _eC2VPCEndpointServicePermissionsAllowedPrincipals = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-serviceid
ecvpcespServiceId :: Lens' EC2VPCEndpointServicePermissions (Val Text)
ecvpcespServiceId = lens _eC2VPCEndpointServicePermissionsServiceId (\s a -> s { _eC2VPCEndpointServicePermissionsServiceId = a })
