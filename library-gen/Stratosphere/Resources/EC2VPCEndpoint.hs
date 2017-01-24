{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html

module Stratosphere.Resources.EC2VPCEndpoint where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2VPCEndpoint. See 'ec2VPCEndpoint' for a
-- | more convenient constructor.
data EC2VPCEndpoint =
  EC2VPCEndpoint
  { _eC2VPCEndpointPolicyDocument :: Maybe Object
  , _eC2VPCEndpointRouteTableIds :: Maybe [Val Text]
  , _eC2VPCEndpointServiceName :: Val Text
  , _eC2VPCEndpointVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2VPCEndpoint where
  toJSON EC2VPCEndpoint{..} =
    object
    [ "PolicyDocument" .= _eC2VPCEndpointPolicyDocument
    , "RouteTableIds" .= _eC2VPCEndpointRouteTableIds
    , "ServiceName" .= _eC2VPCEndpointServiceName
    , "VpcId" .= _eC2VPCEndpointVpcId
    ]

instance FromJSON EC2VPCEndpoint where
  parseJSON (Object obj) =
    EC2VPCEndpoint <$>
      obj .: "PolicyDocument" <*>
      obj .: "RouteTableIds" <*>
      obj .: "ServiceName" <*>
      obj .: "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'EC2VPCEndpoint' containing required fields as arguments.
ec2VPCEndpoint
  :: Val Text -- ^ 'ecvpceServiceName'
  -> Val Text -- ^ 'ecvpceVpcId'
  -> EC2VPCEndpoint
ec2VPCEndpoint serviceNamearg vpcIdarg =
  EC2VPCEndpoint
  { _eC2VPCEndpointPolicyDocument = Nothing
  , _eC2VPCEndpointRouteTableIds = Nothing
  , _eC2VPCEndpointServiceName = serviceNamearg
  , _eC2VPCEndpointVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-policydocument
ecvpcePolicyDocument :: Lens' EC2VPCEndpoint (Maybe Object)
ecvpcePolicyDocument = lens _eC2VPCEndpointPolicyDocument (\s a -> s { _eC2VPCEndpointPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-routetableids
ecvpceRouteTableIds :: Lens' EC2VPCEndpoint (Maybe [Val Text])
ecvpceRouteTableIds = lens _eC2VPCEndpointRouteTableIds (\s a -> s { _eC2VPCEndpointRouteTableIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-servicename
ecvpceServiceName :: Lens' EC2VPCEndpoint (Val Text)
ecvpceServiceName = lens _eC2VPCEndpointServiceName (\s a -> s { _eC2VPCEndpointServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcid
ecvpceVpcId :: Lens' EC2VPCEndpoint (Val Text)
ecvpceVpcId = lens _eC2VPCEndpointVpcId (\s a -> s { _eC2VPCEndpointVpcId = a })
