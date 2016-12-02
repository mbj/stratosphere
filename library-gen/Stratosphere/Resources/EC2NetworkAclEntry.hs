{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html

module Stratosphere.Resources.EC2NetworkAclEntry where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2NetworkAclEntryIcmp
import Stratosphere.ResourceProperties.EC2NetworkAclEntryPortRange

-- | Full data type definition for EC2NetworkAclEntry. See
-- | 'ec2NetworkAclEntry' for a more convenient constructor.
data EC2NetworkAclEntry =
  EC2NetworkAclEntry
  { _eC2NetworkAclEntryCidrBlock :: Val Text
  , _eC2NetworkAclEntryEgress :: Maybe (Val Bool')
  , _eC2NetworkAclEntryIcmp :: Maybe EC2NetworkAclEntryIcmp
  , _eC2NetworkAclEntryNetworkAclId :: Val Text
  , _eC2NetworkAclEntryPortRange :: Maybe EC2NetworkAclEntryPortRange
  , _eC2NetworkAclEntryProtocol :: Val Integer'
  , _eC2NetworkAclEntryRuleAction :: Val Text
  , _eC2NetworkAclEntryRuleNumber :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON EC2NetworkAclEntry where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON EC2NetworkAclEntry where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'EC2NetworkAclEntry' containing required fields as
-- | arguments.
ec2NetworkAclEntry
  :: Val Text -- ^ 'ecnaeCidrBlock'
  -> Val Text -- ^ 'ecnaeNetworkAclId'
  -> Val Integer' -- ^ 'ecnaeProtocol'
  -> Val Text -- ^ 'ecnaeRuleAction'
  -> Val Integer' -- ^ 'ecnaeRuleNumber'
  -> EC2NetworkAclEntry
ec2NetworkAclEntry cidrBlockarg networkAclIdarg protocolarg ruleActionarg ruleNumberarg =
  EC2NetworkAclEntry
  { _eC2NetworkAclEntryCidrBlock = cidrBlockarg
  , _eC2NetworkAclEntryEgress = Nothing
  , _eC2NetworkAclEntryIcmp = Nothing
  , _eC2NetworkAclEntryNetworkAclId = networkAclIdarg
  , _eC2NetworkAclEntryPortRange = Nothing
  , _eC2NetworkAclEntryProtocol = protocolarg
  , _eC2NetworkAclEntryRuleAction = ruleActionarg
  , _eC2NetworkAclEntryRuleNumber = ruleNumberarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-cidrblock
ecnaeCidrBlock :: Lens' EC2NetworkAclEntry (Val Text)
ecnaeCidrBlock = lens _eC2NetworkAclEntryCidrBlock (\s a -> s { _eC2NetworkAclEntryCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-egress
ecnaeEgress :: Lens' EC2NetworkAclEntry (Maybe (Val Bool'))
ecnaeEgress = lens _eC2NetworkAclEntryEgress (\s a -> s { _eC2NetworkAclEntryEgress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-icmp
ecnaeIcmp :: Lens' EC2NetworkAclEntry (Maybe EC2NetworkAclEntryIcmp)
ecnaeIcmp = lens _eC2NetworkAclEntryIcmp (\s a -> s { _eC2NetworkAclEntryIcmp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-networkaclid
ecnaeNetworkAclId :: Lens' EC2NetworkAclEntry (Val Text)
ecnaeNetworkAclId = lens _eC2NetworkAclEntryNetworkAclId (\s a -> s { _eC2NetworkAclEntryNetworkAclId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-portrange
ecnaePortRange :: Lens' EC2NetworkAclEntry (Maybe EC2NetworkAclEntryPortRange)
ecnaePortRange = lens _eC2NetworkAclEntryPortRange (\s a -> s { _eC2NetworkAclEntryPortRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-protocol
ecnaeProtocol :: Lens' EC2NetworkAclEntry (Val Integer')
ecnaeProtocol = lens _eC2NetworkAclEntryProtocol (\s a -> s { _eC2NetworkAclEntryProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-ruleaction
ecnaeRuleAction :: Lens' EC2NetworkAclEntry (Val Text)
ecnaeRuleAction = lens _eC2NetworkAclEntryRuleAction (\s a -> s { _eC2NetworkAclEntryRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-rulenumber
ecnaeRuleNumber :: Lens' EC2NetworkAclEntry (Val Integer')
ecnaeRuleNumber = lens _eC2NetworkAclEntryRuleNumber (\s a -> s { _eC2NetworkAclEntryRuleNumber = a })
