{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html

module Stratosphere.ResourceProperties.EC2SecurityGroupRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SecurityGroupRule. See
-- | 'ec2SecurityGroupRule' for a more convenient constructor.
data EC2SecurityGroupRule =
  EC2SecurityGroupRule
  { _eC2SecurityGroupRuleCidrIp :: Maybe (Val Text)
  , _eC2SecurityGroupRuleFromPort :: Maybe (Val Integer')
  , _eC2SecurityGroupRuleIpProtocol :: Val Text
  , _eC2SecurityGroupRuleSourceSecurityGroupId :: Maybe (Val Text)
  , _eC2SecurityGroupRuleSourceSecurityGroupName :: Maybe (Val Text)
  , _eC2SecurityGroupRuleSourceSecurityGroupOwnerId :: Maybe (Val Text)
  , _eC2SecurityGroupRuleToPort :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON EC2SecurityGroupRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON EC2SecurityGroupRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'EC2SecurityGroupRule' containing required fields as
-- | arguments.
ec2SecurityGroupRule
  :: Val Text -- ^ 'ecsgrIpProtocol'
  -> EC2SecurityGroupRule
ec2SecurityGroupRule ipProtocolarg =
  EC2SecurityGroupRule
  { _eC2SecurityGroupRuleCidrIp = Nothing
  , _eC2SecurityGroupRuleFromPort = Nothing
  , _eC2SecurityGroupRuleIpProtocol = ipProtocolarg
  , _eC2SecurityGroupRuleSourceSecurityGroupId = Nothing
  , _eC2SecurityGroupRuleSourceSecurityGroupName = Nothing
  , _eC2SecurityGroupRuleSourceSecurityGroupOwnerId = Nothing
  , _eC2SecurityGroupRuleToPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidrip
ecsgrCidrIp :: Lens' EC2SecurityGroupRule (Maybe (Val Text))
ecsgrCidrIp = lens _eC2SecurityGroupRuleCidrIp (\s a -> s { _eC2SecurityGroupRuleCidrIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-fromport
ecsgrFromPort :: Lens' EC2SecurityGroupRule (Maybe (Val Integer'))
ecsgrFromPort = lens _eC2SecurityGroupRuleFromPort (\s a -> s { _eC2SecurityGroupRuleFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-ipprotocol
ecsgrIpProtocol :: Lens' EC2SecurityGroupRule (Val Text)
ecsgrIpProtocol = lens _eC2SecurityGroupRuleIpProtocol (\s a -> s { _eC2SecurityGroupRuleIpProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupid
ecsgrSourceSecurityGroupId :: Lens' EC2SecurityGroupRule (Maybe (Val Text))
ecsgrSourceSecurityGroupId = lens _eC2SecurityGroupRuleSourceSecurityGroupId (\s a -> s { _eC2SecurityGroupRuleSourceSecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupname
ecsgrSourceSecurityGroupName :: Lens' EC2SecurityGroupRule (Maybe (Val Text))
ecsgrSourceSecurityGroupName = lens _eC2SecurityGroupRuleSourceSecurityGroupName (\s a -> s { _eC2SecurityGroupRuleSourceSecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupownerid
ecsgrSourceSecurityGroupOwnerId :: Lens' EC2SecurityGroupRule (Maybe (Val Text))
ecsgrSourceSecurityGroupOwnerId = lens _eC2SecurityGroupRuleSourceSecurityGroupOwnerId (\s a -> s { _eC2SecurityGroupRuleSourceSecurityGroupOwnerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-toport
ecsgrToPort :: Lens' EC2SecurityGroupRule (Maybe (Val Integer'))
ecsgrToPort = lens _eC2SecurityGroupRuleToPort (\s a -> s { _eC2SecurityGroupRuleToPort = a })
