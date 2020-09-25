{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html

module Stratosphere.Resources.EC2VPCEndpointService where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPCEndpointService. See
-- 'ec2VPCEndpointService' for a more convenient constructor.
data EC2VPCEndpointService =
  EC2VPCEndpointService
  { _eC2VPCEndpointServiceAcceptanceRequired :: Maybe (Val Bool)
  , _eC2VPCEndpointServiceApplianceLoadBalancerArns :: Maybe (ValList Text)
  , _eC2VPCEndpointServiceNetworkLoadBalancerArns :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPCEndpointService where
  toResourceProperties EC2VPCEndpointService{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPCEndpointService"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AcceptanceRequired",) . toJSON) _eC2VPCEndpointServiceAcceptanceRequired
        , fmap (("ApplianceLoadBalancerArns",) . toJSON) _eC2VPCEndpointServiceApplianceLoadBalancerArns
        , fmap (("NetworkLoadBalancerArns",) . toJSON) _eC2VPCEndpointServiceNetworkLoadBalancerArns
        ]
    }

-- | Constructor for 'EC2VPCEndpointService' containing required fields as
-- arguments.
ec2VPCEndpointService
  :: EC2VPCEndpointService
ec2VPCEndpointService  =
  EC2VPCEndpointService
  { _eC2VPCEndpointServiceAcceptanceRequired = Nothing
  , _eC2VPCEndpointServiceApplianceLoadBalancerArns = Nothing
  , _eC2VPCEndpointServiceNetworkLoadBalancerArns = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-acceptancerequired
ecvpcesAcceptanceRequired :: Lens' EC2VPCEndpointService (Maybe (Val Bool))
ecvpcesAcceptanceRequired = lens _eC2VPCEndpointServiceAcceptanceRequired (\s a -> s { _eC2VPCEndpointServiceAcceptanceRequired = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-applianceloadbalancerarns
ecvpcesApplianceLoadBalancerArns :: Lens' EC2VPCEndpointService (Maybe (ValList Text))
ecvpcesApplianceLoadBalancerArns = lens _eC2VPCEndpointServiceApplianceLoadBalancerArns (\s a -> s { _eC2VPCEndpointServiceApplianceLoadBalancerArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-networkloadbalancerarns
ecvpcesNetworkLoadBalancerArns :: Lens' EC2VPCEndpointService (Maybe (ValList Text))
ecvpcesNetworkLoadBalancerArns = lens _eC2VPCEndpointServiceNetworkLoadBalancerArns (\s a -> s { _eC2VPCEndpointServiceNetworkLoadBalancerArns = a })
