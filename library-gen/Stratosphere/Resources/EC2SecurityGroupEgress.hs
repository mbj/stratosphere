{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html

module Stratosphere.Resources.EC2SecurityGroupEgress where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SecurityGroupEgress. See
-- | 'ec2SecurityGroupEgress' for a more convenient constructor.
data EC2SecurityGroupEgress =
  EC2SecurityGroupEgress
  { _eC2SecurityGroupEgressCidrIp :: Maybe (Val Text)
  , _eC2SecurityGroupEgressDestinationPrefixListId :: Maybe (Val Text)
  , _eC2SecurityGroupEgressDestinationSecurityGroupId :: Maybe (Val Text)
  , _eC2SecurityGroupEgressFromPort :: Maybe (Val Integer')
  , _eC2SecurityGroupEgressGroupId :: Val Text
  , _eC2SecurityGroupEgressIpProtocol :: Val Text
  , _eC2SecurityGroupEgressToPort :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON EC2SecurityGroupEgress where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON EC2SecurityGroupEgress where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'EC2SecurityGroupEgress' containing required fields as
-- | arguments.
ec2SecurityGroupEgress
  :: Val Text -- ^ 'ecsgeGroupId'
  -> Val Text -- ^ 'ecsgeIpProtocol'
  -> EC2SecurityGroupEgress
ec2SecurityGroupEgress groupIdarg ipProtocolarg =
  EC2SecurityGroupEgress
  { _eC2SecurityGroupEgressCidrIp = Nothing
  , _eC2SecurityGroupEgressDestinationPrefixListId = Nothing
  , _eC2SecurityGroupEgressDestinationSecurityGroupId = Nothing
  , _eC2SecurityGroupEgressFromPort = Nothing
  , _eC2SecurityGroupEgressGroupId = groupIdarg
  , _eC2SecurityGroupEgressIpProtocol = ipProtocolarg
  , _eC2SecurityGroupEgressToPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-cidrip
ecsgeCidrIp :: Lens' EC2SecurityGroupEgress (Maybe (Val Text))
ecsgeCidrIp = lens _eC2SecurityGroupEgressCidrIp (\s a -> s { _eC2SecurityGroupEgressCidrIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-destinationprefixlistid
ecsgeDestinationPrefixListId :: Lens' EC2SecurityGroupEgress (Maybe (Val Text))
ecsgeDestinationPrefixListId = lens _eC2SecurityGroupEgressDestinationPrefixListId (\s a -> s { _eC2SecurityGroupEgressDestinationPrefixListId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-destinationsecuritygroupid
ecsgeDestinationSecurityGroupId :: Lens' EC2SecurityGroupEgress (Maybe (Val Text))
ecsgeDestinationSecurityGroupId = lens _eC2SecurityGroupEgressDestinationSecurityGroupId (\s a -> s { _eC2SecurityGroupEgressDestinationSecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-fromport
ecsgeFromPort :: Lens' EC2SecurityGroupEgress (Maybe (Val Integer'))
ecsgeFromPort = lens _eC2SecurityGroupEgressFromPort (\s a -> s { _eC2SecurityGroupEgressFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-groupid
ecsgeGroupId :: Lens' EC2SecurityGroupEgress (Val Text)
ecsgeGroupId = lens _eC2SecurityGroupEgressGroupId (\s a -> s { _eC2SecurityGroupEgressGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-ipprotocol
ecsgeIpProtocol :: Lens' EC2SecurityGroupEgress (Val Text)
ecsgeIpProtocol = lens _eC2SecurityGroupEgressIpProtocol (\s a -> s { _eC2SecurityGroupEgressIpProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-toport
ecsgeToPort :: Lens' EC2SecurityGroupEgress (Maybe (Val Integer'))
ecsgeToPort = lens _eC2SecurityGroupEgressToPort (\s a -> s { _eC2SecurityGroupEgressToPort = a })
