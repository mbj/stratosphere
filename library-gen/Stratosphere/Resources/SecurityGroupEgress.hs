{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::SecurityGroupEgress resource adds an egress rule to an
-- Amazon VPC security group.

module Stratosphere.Resources.SecurityGroupEgress where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SecurityGroupEgress. See
-- 'securityGroupEgress' for a more convenient constructor.
data SecurityGroupEgress =
  SecurityGroupEgress
  { _securityGroupEgressCidrIp :: Maybe (Val Text)
  , _securityGroupEgressDestinationSecurityGroupId :: Maybe (Val Text)
  , _securityGroupEgressFromPort :: Val Integer'
  , _securityGroupEgressGroupId :: Val Text
  , _securityGroupEgressIpProtocol :: Val Text
  , _securityGroupEgressToPort :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON SecurityGroupEgress where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON SecurityGroupEgress where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'SecurityGroupEgress' containing required fields as
-- arguments.
securityGroupEgress
  :: Val Integer' -- ^ 'sgeFromPort'
  -> Val Text -- ^ 'sgeGroupId'
  -> Val Text -- ^ 'sgeIpProtocol'
  -> Val Integer' -- ^ 'sgeToPort'
  -> SecurityGroupEgress
securityGroupEgress fromPortarg groupIdarg ipProtocolarg toPortarg =
  SecurityGroupEgress
  { _securityGroupEgressCidrIp = Nothing
  , _securityGroupEgressDestinationSecurityGroupId = Nothing
  , _securityGroupEgressFromPort = fromPortarg
  , _securityGroupEgressGroupId = groupIdarg
  , _securityGroupEgressIpProtocol = ipProtocolarg
  , _securityGroupEgressToPort = toPortarg
  }

-- | CIDR range. Type: String
sgeCidrIp :: Lens' SecurityGroupEgress (Maybe (Val Text))
sgeCidrIp = lens _securityGroupEgressCidrIp (\s a -> s { _securityGroupEgressCidrIp = a })

-- | Specifies the group ID of the destination Amazon VPC security group.
-- Type: String
sgeDestinationSecurityGroupId :: Lens' SecurityGroupEgress (Maybe (Val Text))
sgeDestinationSecurityGroupId = lens _securityGroupEgressDestinationSecurityGroupId (\s a -> s { _securityGroupEgressDestinationSecurityGroupId = a })

-- | Start of port range for the TCP and UDP protocols, or an ICMP type
-- number. If you specify icmp for the IpProtocol property, you can specify -1
-- as a wildcard (i.e., any ICMP type number). Type: Integer
sgeFromPort :: Lens' SecurityGroupEgress (Val Integer')
sgeFromPort = lens _securityGroupEgressFromPort (\s a -> s { _securityGroupEgressFromPort = a })

-- | ID of the Amazon VPC security group to modify. This value can be a
-- reference to an AWS::EC2::SecurityGroup resource that has a valid VpcId
-- property or the ID of an existing Amazon VPC security group. Type: String
sgeGroupId :: Lens' SecurityGroupEgress (Val Text)
sgeGroupId = lens _securityGroupEgressGroupId (\s a -> s { _securityGroupEgressGroupId = a })

-- | IP protocol name or number. For valid values, see the IpProtocol
-- parameter in AuthorizeSecurityGroupIngress Type: String
sgeIpProtocol :: Lens' SecurityGroupEgress (Val Text)
sgeIpProtocol = lens _securityGroupEgressIpProtocol (\s a -> s { _securityGroupEgressIpProtocol = a })

-- | End of port range for the TCP and UDP protocols, or an ICMP code. If you
-- specify icmp for the IpProtocol property, you can specify -1 as a wildcard
-- (i.e., any ICMP code). Type: Integer
sgeToPort :: Lens' SecurityGroupEgress (Val Integer')
sgeToPort = lens _securityGroupEgressToPort (\s a -> s { _securityGroupEgressToPort = a })