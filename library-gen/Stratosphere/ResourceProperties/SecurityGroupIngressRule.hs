{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The EC2 Security Group Rule is an embedded property of the
-- AWS::EC2::SecurityGroup type.

module Stratosphere.ResourceProperties.SecurityGroupIngressRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SecurityGroupIngressRule. See
-- 'securityGroupIngressRule' for a more convenient constructor.
data SecurityGroupIngressRule =
  SecurityGroupIngressRule
  { _securityGroupIngressRuleCidrIp :: Maybe (Val Text)
  , _securityGroupIngressRuleFromPort :: Maybe (Val Integer')
  , _securityGroupIngressRuleIpProtocol :: Val Text
  , _securityGroupIngressRuleSourceSecurityGroupId :: Maybe (Val Text)
  , _securityGroupIngressRuleSourceSecurityGroupName :: Maybe (Val Text)
  , _securityGroupIngressRuleSourceSecurityGroupOwnerId :: Maybe (Val Text)
  , _securityGroupIngressRuleToPort :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON SecurityGroupIngressRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON SecurityGroupIngressRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'SecurityGroupIngressRule' containing required fields as
-- arguments.
securityGroupIngressRule
  :: Val Text -- ^ IpProtocol
  -> SecurityGroupIngressRule
securityGroupIngressRule ipProtocolarg =
  SecurityGroupIngressRule
  { _securityGroupIngressRuleCidrIp = Nothing
  , _securityGroupIngressRuleFromPort = Nothing
  , _securityGroupIngressRuleIpProtocol = ipProtocolarg
  , _securityGroupIngressRuleSourceSecurityGroupId = Nothing
  , _securityGroupIngressRuleSourceSecurityGroupName = Nothing
  , _securityGroupIngressRuleSourceSecurityGroupOwnerId = Nothing
  , _securityGroupIngressRuleToPort = Nothing
  }

-- | Specifies a CIDR range.
sgirCidrIp :: Lens' SecurityGroupIngressRule (Maybe (Val Text))
sgirCidrIp = lens _securityGroupIngressRuleCidrIp (\s a -> s { _securityGroupIngressRuleCidrIp = a })

-- | The start of port range for the TCP and UDP protocols, or an ICMP type
-- number. An ICMP type number of -1 indicates a wildcard (i.e., any ICMP type
-- number). Type: Integer
sgirFromPort :: Lens' SecurityGroupIngressRule (Maybe (Val Integer'))
sgirFromPort = lens _securityGroupIngressRuleFromPort (\s a -> s { _securityGroupIngressRuleFromPort = a })

-- | An IP protocol name or number. For valid values, go to the IpProtocol
-- parameter in AuthorizeSecurityGroupIngress
sgirIpProtocol :: Lens' SecurityGroupIngressRule (Val Text)
sgirIpProtocol = lens _securityGroupIngressRuleIpProtocol (\s a -> s { _securityGroupIngressRuleIpProtocol = a })

-- | For VPC security groups only. Specifies the ID of the Amazon EC2 Security
-- Group to allow access. You can use the Ref intrinsic function to refer to
-- the logical ID of a security group defined in the same template.
sgirSourceSecurityGroupId :: Lens' SecurityGroupIngressRule (Maybe (Val Text))
sgirSourceSecurityGroupId = lens _securityGroupIngressRuleSourceSecurityGroupId (\s a -> s { _securityGroupIngressRuleSourceSecurityGroupId = a })

-- | For non-VPC security groups only. Specifies the name of the Amazon EC2
-- Security Group to use for access. You can use the Ref intrinsic function to
-- refer to the logical name of a security group that is defined in the same
-- template.
sgirSourceSecurityGroupName :: Lens' SecurityGroupIngressRule (Maybe (Val Text))
sgirSourceSecurityGroupName = lens _securityGroupIngressRuleSourceSecurityGroupName (\s a -> s { _securityGroupIngressRuleSourceSecurityGroupName = a })

-- | Specifies the AWS Account ID of the owner of the Amazon EC2 Security
-- Group that is specified in the SourceSecurityGroupName property.
sgirSourceSecurityGroupOwnerId :: Lens' SecurityGroupIngressRule (Maybe (Val Text))
sgirSourceSecurityGroupOwnerId = lens _securityGroupIngressRuleSourceSecurityGroupOwnerId (\s a -> s { _securityGroupIngressRuleSourceSecurityGroupOwnerId = a })

-- | The end of port range for the TCP and UDP protocols, or an ICMP code. An
-- ICMP code of -1 indicates a wildcard (i.e., any ICMP code).
sgirToPort :: Lens' SecurityGroupIngressRule (Maybe (Val Integer'))
sgirToPort = lens _securityGroupIngressRuleToPort (\s a -> s { _securityGroupIngressRuleToPort = a })