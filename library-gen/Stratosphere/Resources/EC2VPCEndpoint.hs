{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html

module Stratosphere.Resources.EC2VPCEndpoint where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPCEndpoint. See 'ec2VPCEndpoint' for a
-- more convenient constructor.
data EC2VPCEndpoint =
  EC2VPCEndpoint
  { _eC2VPCEndpointPolicyDocument :: Maybe Object
  , _eC2VPCEndpointPrivateDnsEnabled :: Maybe (Val Bool)
  , _eC2VPCEndpointRouteTableIds :: Maybe (ValList Text)
  , _eC2VPCEndpointSecurityGroupIds :: Maybe (ValList Text)
  , _eC2VPCEndpointServiceName :: Val Text
  , _eC2VPCEndpointSubnetIds :: Maybe (ValList Text)
  , _eC2VPCEndpointVpcEndpointType :: Maybe (Val Text)
  , _eC2VPCEndpointVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPCEndpoint where
  toResourceProperties EC2VPCEndpoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPCEndpoint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("PolicyDocument",) . toJSON) _eC2VPCEndpointPolicyDocument
        , fmap (("PrivateDnsEnabled",) . toJSON) _eC2VPCEndpointPrivateDnsEnabled
        , fmap (("RouteTableIds",) . toJSON) _eC2VPCEndpointRouteTableIds
        , fmap (("SecurityGroupIds",) . toJSON) _eC2VPCEndpointSecurityGroupIds
        , (Just . ("ServiceName",) . toJSON) _eC2VPCEndpointServiceName
        , fmap (("SubnetIds",) . toJSON) _eC2VPCEndpointSubnetIds
        , fmap (("VpcEndpointType",) . toJSON) _eC2VPCEndpointVpcEndpointType
        , (Just . ("VpcId",) . toJSON) _eC2VPCEndpointVpcId
        ]
    }

-- | Constructor for 'EC2VPCEndpoint' containing required fields as arguments.
ec2VPCEndpoint
  :: Val Text -- ^ 'ecvpceServiceName'
  -> Val Text -- ^ 'ecvpceVpcId'
  -> EC2VPCEndpoint
ec2VPCEndpoint serviceNamearg vpcIdarg =
  EC2VPCEndpoint
  { _eC2VPCEndpointPolicyDocument = Nothing
  , _eC2VPCEndpointPrivateDnsEnabled = Nothing
  , _eC2VPCEndpointRouteTableIds = Nothing
  , _eC2VPCEndpointSecurityGroupIds = Nothing
  , _eC2VPCEndpointServiceName = serviceNamearg
  , _eC2VPCEndpointSubnetIds = Nothing
  , _eC2VPCEndpointVpcEndpointType = Nothing
  , _eC2VPCEndpointVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-policydocument
ecvpcePolicyDocument :: Lens' EC2VPCEndpoint (Maybe Object)
ecvpcePolicyDocument = lens _eC2VPCEndpointPolicyDocument (\s a -> s { _eC2VPCEndpointPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-privatednsenabled
ecvpcePrivateDnsEnabled :: Lens' EC2VPCEndpoint (Maybe (Val Bool))
ecvpcePrivateDnsEnabled = lens _eC2VPCEndpointPrivateDnsEnabled (\s a -> s { _eC2VPCEndpointPrivateDnsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-routetableids
ecvpceRouteTableIds :: Lens' EC2VPCEndpoint (Maybe (ValList Text))
ecvpceRouteTableIds = lens _eC2VPCEndpointRouteTableIds (\s a -> s { _eC2VPCEndpointRouteTableIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-securitygroupids
ecvpceSecurityGroupIds :: Lens' EC2VPCEndpoint (Maybe (ValList Text))
ecvpceSecurityGroupIds = lens _eC2VPCEndpointSecurityGroupIds (\s a -> s { _eC2VPCEndpointSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-servicename
ecvpceServiceName :: Lens' EC2VPCEndpoint (Val Text)
ecvpceServiceName = lens _eC2VPCEndpointServiceName (\s a -> s { _eC2VPCEndpointServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-subnetids
ecvpceSubnetIds :: Lens' EC2VPCEndpoint (Maybe (ValList Text))
ecvpceSubnetIds = lens _eC2VPCEndpointSubnetIds (\s a -> s { _eC2VPCEndpointSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcendpointtype
ecvpceVpcEndpointType :: Lens' EC2VPCEndpoint (Maybe (Val Text))
ecvpceVpcEndpointType = lens _eC2VPCEndpointVpcEndpointType (\s a -> s { _eC2VPCEndpointVpcEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcid
ecvpceVpcId :: Lens' EC2VPCEndpoint (Val Text)
ecvpceVpcId = lens _eC2VPCEndpointVpcId (\s a -> s { _eC2VPCEndpointVpcId = a })
