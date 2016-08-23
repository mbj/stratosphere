{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::SecurityGroupIngress resource adds an ingress rule to an
-- Amazon EC2 or Amazon VPC security group.

module Stratosphere.Resources.SecurityGroupIngress where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SecurityGroupIngress. See
-- 'securityGroupIngress' for a more convenient constructor.
data SecurityGroupIngress =
  SecurityGroupIngress
  { _securityGroupIngressCidrIp :: Maybe (Val Text)
  , _securityGroupIngressFromPort :: Maybe (Val Integer')
  , _securityGroupIngressGroupId :: Maybe (Val Text)
  , _securityGroupIngressGroupName :: Maybe (Val Text)
  , _securityGroupIngressIpProtocol :: Val Text
  , _securityGroupIngressSourceSecurityGroupId :: Maybe (Val Text)
  , _securityGroupIngressSourceSecurityGroupName :: Maybe (Val Text)
  , _securityGroupIngressSourceSecurityGroupOwnerId :: Maybe (Val Text)
  , _securityGroupIngressToPort :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON SecurityGroupIngress where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON SecurityGroupIngress where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'SecurityGroupIngress' containing required fields as
-- arguments.
securityGroupIngress
  :: Val Text -- ^ 'sgiIpProtocol'
  -> SecurityGroupIngress
securityGroupIngress ipProtocolarg =
  SecurityGroupIngress
  { _securityGroupIngressCidrIp = Nothing
  , _securityGroupIngressFromPort = Nothing
  , _securityGroupIngressGroupId = Nothing
  , _securityGroupIngressGroupName = Nothing
  , _securityGroupIngressIpProtocol = ipProtocolarg
  , _securityGroupIngressSourceSecurityGroupId = Nothing
  , _securityGroupIngressSourceSecurityGroupName = Nothing
  , _securityGroupIngressSourceSecurityGroupOwnerId = Nothing
  , _securityGroupIngressToPort = Nothing
  }

-- | Specifies a CIDR range. For an overview of CIDR ranges, go to the
-- Wikipedia Tutorial. Type: String
sgiCidrIp :: Lens' SecurityGroupIngress (Maybe (Val Text))
sgiCidrIp = lens _securityGroupIngressCidrIp (\s a -> s { _securityGroupIngressCidrIp = a })

-- | Start of port range for the TCP and UDP protocols, or an ICMP type
-- number. If you specify icmp for the IpProtocol property, you can specify -1
-- as a wildcard (i.e., any ICMP type number). Type: Integer
sgiFromPort :: Lens' SecurityGroupIngress (Maybe (Val Integer'))
sgiFromPort = lens _securityGroupIngressFromPort (\s a -> s { _securityGroupIngressFromPort = a })

-- | ID of the Amazon EC2 or VPC security group to modify. The group must
-- belong to your account. Type: String
sgiGroupId :: Lens' SecurityGroupIngress (Maybe (Val Text))
sgiGroupId = lens _securityGroupIngressGroupId (\s a -> s { _securityGroupIngressGroupId = a })

-- | Name of the Amazon EC2 security group (non-VPC security group) to modify.
-- This value can be a reference to an AWS::EC2::SecurityGroup resource or the
-- name of an existing Amazon EC2 security group. Type: String
sgiGroupName :: Lens' SecurityGroupIngress (Maybe (Val Text))
sgiGroupName = lens _securityGroupIngressGroupName (\s a -> s { _securityGroupIngressGroupName = a })

-- | IP protocol name or number. For valid values, see the IpProtocol
-- parameter in AuthorizeSecurityGroupIngress Type: String
sgiIpProtocol :: Lens' SecurityGroupIngress (Val Text)
sgiIpProtocol = lens _securityGroupIngressIpProtocol (\s a -> s { _securityGroupIngressIpProtocol = a })

-- | Specifies the ID of the source security group or uses the Ref intrinsic
-- function to refer to the logical ID of a security group defined in the same
-- template. Type: String
sgiSourceSecurityGroupId :: Lens' SecurityGroupIngress (Maybe (Val Text))
sgiSourceSecurityGroupId = lens _securityGroupIngressSourceSecurityGroupId (\s a -> s { _securityGroupIngressSourceSecurityGroupId = a })

-- | Specifies the name of the Amazon EC2 security group (non-VPC security
-- group) to allow access or uses the Ref intrinsic function to refer to the
-- logical name of a security group defined in the same template. For
-- instances in a VPC, specify the SourceSecurityGroupId property. Type:
-- String
sgiSourceSecurityGroupName :: Lens' SecurityGroupIngress (Maybe (Val Text))
sgiSourceSecurityGroupName = lens _securityGroupIngressSourceSecurityGroupName (\s a -> s { _securityGroupIngressSourceSecurityGroupName = a })

-- | Specifies the AWS Account ID of the owner of the Amazon EC2 security
-- group specified in the SourceSecurityGroupName property. Type: String
sgiSourceSecurityGroupOwnerId :: Lens' SecurityGroupIngress (Maybe (Val Text))
sgiSourceSecurityGroupOwnerId = lens _securityGroupIngressSourceSecurityGroupOwnerId (\s a -> s { _securityGroupIngressSourceSecurityGroupOwnerId = a })

-- | End of port range for the TCP and UDP protocols, or an ICMP code. If you
-- specify icmp for the IpProtocol property, you can specify -1 as a wildcard
-- (i.e., any ICMP code). Type: Integer
sgiToPort :: Lens' SecurityGroupIngress (Maybe (Val Integer'))
sgiToPort = lens _securityGroupIngressToPort (\s a -> s { _securityGroupIngressToPort = a })