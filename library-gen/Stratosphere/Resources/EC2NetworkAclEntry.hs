{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html

module Stratosphere.Resources.EC2NetworkAclEntry where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2NetworkAclEntryIcmp
import Stratosphere.ResourceProperties.EC2NetworkAclEntryPortRange

-- | Full data type definition for EC2NetworkAclEntry. See
-- 'ec2NetworkAclEntry' for a more convenient constructor.
data EC2NetworkAclEntry =
  EC2NetworkAclEntry
  { _eC2NetworkAclEntryCidrBlock :: Val Text
  , _eC2NetworkAclEntryEgress :: Maybe (Val Bool)
  , _eC2NetworkAclEntryIcmp :: Maybe EC2NetworkAclEntryIcmp
  , _eC2NetworkAclEntryIpv6CidrBlock :: Maybe (Val Text)
  , _eC2NetworkAclEntryNetworkAclId :: Val Text
  , _eC2NetworkAclEntryPortRange :: Maybe EC2NetworkAclEntryPortRange
  , _eC2NetworkAclEntryProtocol :: Val Integer
  , _eC2NetworkAclEntryRuleAction :: Val Text
  , _eC2NetworkAclEntryRuleNumber :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EC2NetworkAclEntry where
  toJSON EC2NetworkAclEntry{..} =
    object $
    catMaybes
    [ (Just . ("CidrBlock",) . toJSON) _eC2NetworkAclEntryCidrBlock
    , fmap (("Egress",) . toJSON . fmap Bool') _eC2NetworkAclEntryEgress
    , fmap (("Icmp",) . toJSON) _eC2NetworkAclEntryIcmp
    , fmap (("Ipv6CidrBlock",) . toJSON) _eC2NetworkAclEntryIpv6CidrBlock
    , (Just . ("NetworkAclId",) . toJSON) _eC2NetworkAclEntryNetworkAclId
    , fmap (("PortRange",) . toJSON) _eC2NetworkAclEntryPortRange
    , (Just . ("Protocol",) . toJSON . fmap Integer') _eC2NetworkAclEntryProtocol
    , (Just . ("RuleAction",) . toJSON) _eC2NetworkAclEntryRuleAction
    , (Just . ("RuleNumber",) . toJSON . fmap Integer') _eC2NetworkAclEntryRuleNumber
    ]

instance FromJSON EC2NetworkAclEntry where
  parseJSON (Object obj) =
    EC2NetworkAclEntry <$>
      (obj .: "CidrBlock") <*>
      fmap (fmap (fmap unBool')) (obj .:? "Egress") <*>
      (obj .:? "Icmp") <*>
      (obj .:? "Ipv6CidrBlock") <*>
      (obj .: "NetworkAclId") <*>
      (obj .:? "PortRange") <*>
      fmap (fmap unInteger') (obj .: "Protocol") <*>
      (obj .: "RuleAction") <*>
      fmap (fmap unInteger') (obj .: "RuleNumber")
  parseJSON _ = mempty

-- | Constructor for 'EC2NetworkAclEntry' containing required fields as
-- arguments.
ec2NetworkAclEntry
  :: Val Text -- ^ 'ecnaeCidrBlock'
  -> Val Text -- ^ 'ecnaeNetworkAclId'
  -> Val Integer -- ^ 'ecnaeProtocol'
  -> Val Text -- ^ 'ecnaeRuleAction'
  -> Val Integer -- ^ 'ecnaeRuleNumber'
  -> EC2NetworkAclEntry
ec2NetworkAclEntry cidrBlockarg networkAclIdarg protocolarg ruleActionarg ruleNumberarg =
  EC2NetworkAclEntry
  { _eC2NetworkAclEntryCidrBlock = cidrBlockarg
  , _eC2NetworkAclEntryEgress = Nothing
  , _eC2NetworkAclEntryIcmp = Nothing
  , _eC2NetworkAclEntryIpv6CidrBlock = Nothing
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
ecnaeEgress :: Lens' EC2NetworkAclEntry (Maybe (Val Bool))
ecnaeEgress = lens _eC2NetworkAclEntryEgress (\s a -> s { _eC2NetworkAclEntryEgress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-icmp
ecnaeIcmp :: Lens' EC2NetworkAclEntry (Maybe EC2NetworkAclEntryIcmp)
ecnaeIcmp = lens _eC2NetworkAclEntryIcmp (\s a -> s { _eC2NetworkAclEntryIcmp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-ipv6cidrblock
ecnaeIpv6CidrBlock :: Lens' EC2NetworkAclEntry (Maybe (Val Text))
ecnaeIpv6CidrBlock = lens _eC2NetworkAclEntryIpv6CidrBlock (\s a -> s { _eC2NetworkAclEntryIpv6CidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-networkaclid
ecnaeNetworkAclId :: Lens' EC2NetworkAclEntry (Val Text)
ecnaeNetworkAclId = lens _eC2NetworkAclEntryNetworkAclId (\s a -> s { _eC2NetworkAclEntryNetworkAclId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-portrange
ecnaePortRange :: Lens' EC2NetworkAclEntry (Maybe EC2NetworkAclEntryPortRange)
ecnaePortRange = lens _eC2NetworkAclEntryPortRange (\s a -> s { _eC2NetworkAclEntryPortRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-protocol
ecnaeProtocol :: Lens' EC2NetworkAclEntry (Val Integer)
ecnaeProtocol = lens _eC2NetworkAclEntryProtocol (\s a -> s { _eC2NetworkAclEntryProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-ruleaction
ecnaeRuleAction :: Lens' EC2NetworkAclEntry (Val Text)
ecnaeRuleAction = lens _eC2NetworkAclEntryRuleAction (\s a -> s { _eC2NetworkAclEntryRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-rulenumber
ecnaeRuleNumber :: Lens' EC2NetworkAclEntry (Val Integer)
ecnaeRuleNumber = lens _eC2NetworkAclEntryRuleNumber (\s a -> s { _eC2NetworkAclEntryRuleNumber = a })
