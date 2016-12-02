{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html

module Stratosphere.Resources.EC2VPCEndpoint where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2VPCEndpoint. See 'ec2VPCEndpoint' for a
-- | more convenient constructor.
data EC2VPCEndpoint =
  EC2VPCEndpoint
  { _eC2VPCEndpointPolicyDocument :: Maybe Object
  , _eC2VPCEndpointRouteTableIds :: Maybe [Val Text]
  , _eC2VPCEndpointServiceName :: Val Text
  , _eC2VPCEndpointVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2VPCEndpoint where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON EC2VPCEndpoint where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

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
