{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The EC2 Security Group Rule is an embedded property of the
-- AWS::EC2::SecurityGroup type.

module Stratosphere.ResourceProperties.SecurityGroupEgressRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SecurityGroupEgressRule. See
-- 'securityGroupEgressRule' for a more convenient constructor.
data SecurityGroupEgressRule =
  SecurityGroupEgressRule
  { _securityGroupEgressRuleCidrIp :: Maybe (Val Text)
  , _securityGroupEgressRuleDestinationSecurityGroupId :: Maybe (Val Text)
  , _securityGroupEgressRuleFromPort :: Maybe (Val Integer')
  , _securityGroupEgressRuleIpProtocol :: Val Text
  , _securityGroupEgressRuleToPort :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON SecurityGroupEgressRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON SecurityGroupEgressRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'SecurityGroupEgressRule' containing required fields as
-- arguments.
securityGroupEgressRule
  :: Val Text -- ^ 'sgerIpProtocol'
  -> SecurityGroupEgressRule
securityGroupEgressRule ipProtocolarg =
  SecurityGroupEgressRule
  { _securityGroupEgressRuleCidrIp = Nothing
  , _securityGroupEgressRuleDestinationSecurityGroupId = Nothing
  , _securityGroupEgressRuleFromPort = Nothing
  , _securityGroupEgressRuleIpProtocol = ipProtocolarg
  , _securityGroupEgressRuleToPort = Nothing
  }

-- | Specifies a CIDR range.
sgerCidrIp :: Lens' SecurityGroupEgressRule (Maybe (Val Text))
sgerCidrIp = lens _securityGroupEgressRuleCidrIp (\s a -> s { _securityGroupEgressRuleCidrIp = a })

-- | Specifies the GroupId of the destination Amazon VPC security group. Type:
-- String
sgerDestinationSecurityGroupId :: Lens' SecurityGroupEgressRule (Maybe (Val Text))
sgerDestinationSecurityGroupId = lens _securityGroupEgressRuleDestinationSecurityGroupId (\s a -> s { _securityGroupEgressRuleDestinationSecurityGroupId = a })

-- | The start of port range for the TCP and UDP protocols, or an ICMP type
-- number. An ICMP type number of -1 indicates a wildcard (i.e., any ICMP type
-- number).
sgerFromPort :: Lens' SecurityGroupEgressRule (Maybe (Val Integer'))
sgerFromPort = lens _securityGroupEgressRuleFromPort (\s a -> s { _securityGroupEgressRuleFromPort = a })

-- | An IP protocol name or number. For valid values, go to the IpProtocol
-- parameter in AuthorizeSecurityGroupIngress
sgerIpProtocol :: Lens' SecurityGroupEgressRule (Val Text)
sgerIpProtocol = lens _securityGroupEgressRuleIpProtocol (\s a -> s { _securityGroupEgressRuleIpProtocol = a })

-- | The end of port range for the TCP and UDP protocols, or an ICMP code. An
-- ICMP code of -1 indicates a wildcard (i.e., any ICMP code).
sgerToPort :: Lens' SecurityGroupEgressRule (Maybe (Val Integer'))
sgerToPort = lens _securityGroupEgressRuleToPort (\s a -> s { _securityGroupEgressRuleToPort = a })