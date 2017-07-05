{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html

module Stratosphere.ResourceProperties.EC2SecurityGroupEgressProperty where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SecurityGroupEgressProperty. See
-- 'ec2SecurityGroupEgressProperty' for a more convenient constructor.
data EC2SecurityGroupEgressProperty =
  EC2SecurityGroupEgressProperty
  { _eC2SecurityGroupEgressPropertyCidrIp :: Maybe (Val Text)
  , _eC2SecurityGroupEgressPropertyCidrIpv6 :: Maybe (Val Text)
  , _eC2SecurityGroupEgressPropertyDestinationPrefixListId :: Maybe (Val Text)
  , _eC2SecurityGroupEgressPropertyDestinationSecurityGroupId :: Maybe (Val Text)
  , _eC2SecurityGroupEgressPropertyFromPort :: Maybe (Val Integer')
  , _eC2SecurityGroupEgressPropertyIpProtocol :: Val Text
  , _eC2SecurityGroupEgressPropertyToPort :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON EC2SecurityGroupEgressProperty where
  toJSON EC2SecurityGroupEgressProperty{..} =
    object $
    catMaybes
    [ ("CidrIp" .=) <$> _eC2SecurityGroupEgressPropertyCidrIp
    , ("CidrIpv6" .=) <$> _eC2SecurityGroupEgressPropertyCidrIpv6
    , ("DestinationPrefixListId" .=) <$> _eC2SecurityGroupEgressPropertyDestinationPrefixListId
    , ("DestinationSecurityGroupId" .=) <$> _eC2SecurityGroupEgressPropertyDestinationSecurityGroupId
    , ("FromPort" .=) <$> _eC2SecurityGroupEgressPropertyFromPort
    , Just ("IpProtocol" .= _eC2SecurityGroupEgressPropertyIpProtocol)
    , ("ToPort" .=) <$> _eC2SecurityGroupEgressPropertyToPort
    ]

instance FromJSON EC2SecurityGroupEgressProperty where
  parseJSON (Object obj) =
    EC2SecurityGroupEgressProperty <$>
      obj .:? "CidrIp" <*>
      obj .:? "CidrIpv6" <*>
      obj .:? "DestinationPrefixListId" <*>
      obj .:? "DestinationSecurityGroupId" <*>
      obj .:? "FromPort" <*>
      obj .: "IpProtocol" <*>
      obj .:? "ToPort"
  parseJSON _ = mempty

-- | Constructor for 'EC2SecurityGroupEgressProperty' containing required
-- fields as arguments.
ec2SecurityGroupEgressProperty
  :: Val Text -- ^ 'ecsgepIpProtocol'
  -> EC2SecurityGroupEgressProperty
ec2SecurityGroupEgressProperty ipProtocolarg =
  EC2SecurityGroupEgressProperty
  { _eC2SecurityGroupEgressPropertyCidrIp = Nothing
  , _eC2SecurityGroupEgressPropertyCidrIpv6 = Nothing
  , _eC2SecurityGroupEgressPropertyDestinationPrefixListId = Nothing
  , _eC2SecurityGroupEgressPropertyDestinationSecurityGroupId = Nothing
  , _eC2SecurityGroupEgressPropertyFromPort = Nothing
  , _eC2SecurityGroupEgressPropertyIpProtocol = ipProtocolarg
  , _eC2SecurityGroupEgressPropertyToPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidrip
ecsgepCidrIp :: Lens' EC2SecurityGroupEgressProperty (Maybe (Val Text))
ecsgepCidrIp = lens _eC2SecurityGroupEgressPropertyCidrIp (\s a -> s { _eC2SecurityGroupEgressPropertyCidrIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidripv6
ecsgepCidrIpv6 :: Lens' EC2SecurityGroupEgressProperty (Maybe (Val Text))
ecsgepCidrIpv6 = lens _eC2SecurityGroupEgressPropertyCidrIpv6 (\s a -> s { _eC2SecurityGroupEgressPropertyCidrIpv6 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-destinationprefixlistid
ecsgepDestinationPrefixListId :: Lens' EC2SecurityGroupEgressProperty (Maybe (Val Text))
ecsgepDestinationPrefixListId = lens _eC2SecurityGroupEgressPropertyDestinationPrefixListId (\s a -> s { _eC2SecurityGroupEgressPropertyDestinationPrefixListId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-destsecgroupid
ecsgepDestinationSecurityGroupId :: Lens' EC2SecurityGroupEgressProperty (Maybe (Val Text))
ecsgepDestinationSecurityGroupId = lens _eC2SecurityGroupEgressPropertyDestinationSecurityGroupId (\s a -> s { _eC2SecurityGroupEgressPropertyDestinationSecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-fromport
ecsgepFromPort :: Lens' EC2SecurityGroupEgressProperty (Maybe (Val Integer'))
ecsgepFromPort = lens _eC2SecurityGroupEgressPropertyFromPort (\s a -> s { _eC2SecurityGroupEgressPropertyFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-ipprotocol
ecsgepIpProtocol :: Lens' EC2SecurityGroupEgressProperty (Val Text)
ecsgepIpProtocol = lens _eC2SecurityGroupEgressPropertyIpProtocol (\s a -> s { _eC2SecurityGroupEgressPropertyIpProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-toport
ecsgepToPort :: Lens' EC2SecurityGroupEgressProperty (Maybe (Val Integer'))
ecsgepToPort = lens _eC2SecurityGroupEgressPropertyToPort (\s a -> s { _eC2SecurityGroupEgressPropertyToPort = a })
