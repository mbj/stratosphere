{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::VPCEndpoint resource creates a VPC endpoint that you can
-- use to establish a private connection between your VPC and another AWS
-- service without requiring access over the Internet, a VPN connection, or
-- AWS Direct Connect.

module Stratosphere.Resources.VPCEndpoint where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data VPCEndpoint =
  VPCEndpoint
  { _vPCEndpointPolicyDocument :: Maybe (Val Object)
  , _vPCEndpointRouteTableIds :: Maybe [Val Text]
  , _vPCEndpointServiceName :: Val Text
  , _vPCEndpointVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON VPCEndpoint where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON VPCEndpoint where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

vpcEndpoint
  :: Val Text -- ^ ServiceName
  -> Val Text -- ^ VpcId
  -> VPCEndpoint
vpcEndpoint serviceNamearg vpcIdarg =
  VPCEndpoint
  { _vPCEndpointPolicyDocument = Nothing
  , _vPCEndpointRouteTableIds = Nothing
  , _vPCEndpointServiceName = serviceNamearg
  , _vPCEndpointVpcId = vpcIdarg
  }

-- | A policy to attach to the endpoint that controls access to the service.
-- The policy must be valid JSON. The default policy allows full access to the
-- AWS service. For more information, see Controlling Access to Services in
-- the Amazon VPC User Guide.
vpcePolicyDocument :: Lens' VPCEndpoint (Maybe (Val Object))
vpcePolicyDocument = lens _vPCEndpointPolicyDocument (\s a -> s { _vPCEndpointPolicyDocument = a })

-- | One or more route table IDs that are used by the VPC to reach the
-- endpoint.
vpceRouteTableIds :: Lens' VPCEndpoint (Maybe [Val Text])
vpceRouteTableIds = lens _vPCEndpointRouteTableIds (\s a -> s { _vPCEndpointRouteTableIds = a })

-- | The AWS service to which you want to establish a connection. Specify the
-- service name in the form of com.amazonaws.region.service.
vpceServiceName :: Lens' VPCEndpoint (Val Text)
vpceServiceName = lens _vPCEndpointServiceName (\s a -> s { _vPCEndpointServiceName = a })

-- | The ID of the VPC in which the endpoint is used.
vpceVpcId :: Lens' VPCEndpoint (Val Text)
vpceVpcId = lens _vPCEndpointVpcId (\s a -> s { _vPCEndpointVpcId = a })