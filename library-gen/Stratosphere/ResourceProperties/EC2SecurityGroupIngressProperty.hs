{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html

module Stratosphere.ResourceProperties.EC2SecurityGroupIngressProperty where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SecurityGroupIngressProperty. See
-- 'ec2SecurityGroupIngressProperty' for a more convenient constructor.
data EC2SecurityGroupIngressProperty =
  EC2SecurityGroupIngressProperty
  { _eC2SecurityGroupIngressPropertyCidrIp :: Maybe (Val Text)
  , _eC2SecurityGroupIngressPropertyCidrIpv6 :: Maybe (Val Text)
  , _eC2SecurityGroupIngressPropertyDescription :: Maybe (Val Text)
  , _eC2SecurityGroupIngressPropertyFromPort :: Maybe (Val Integer)
  , _eC2SecurityGroupIngressPropertyIpProtocol :: Val Text
  , _eC2SecurityGroupIngressPropertySourceSecurityGroupId :: Maybe (Val Text)
  , _eC2SecurityGroupIngressPropertySourceSecurityGroupName :: Maybe (Val Text)
  , _eC2SecurityGroupIngressPropertySourceSecurityGroupOwnerId :: Maybe (Val Text)
  , _eC2SecurityGroupIngressPropertyToPort :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2SecurityGroupIngressProperty where
  toJSON EC2SecurityGroupIngressProperty{..} =
    object $
    catMaybes
    [ fmap (("CidrIp",) . toJSON) _eC2SecurityGroupIngressPropertyCidrIp
    , fmap (("CidrIpv6",) . toJSON) _eC2SecurityGroupIngressPropertyCidrIpv6
    , fmap (("Description",) . toJSON) _eC2SecurityGroupIngressPropertyDescription
    , fmap (("FromPort",) . toJSON . fmap Integer') _eC2SecurityGroupIngressPropertyFromPort
    , (Just . ("IpProtocol",) . toJSON) _eC2SecurityGroupIngressPropertyIpProtocol
    , fmap (("SourceSecurityGroupId",) . toJSON) _eC2SecurityGroupIngressPropertySourceSecurityGroupId
    , fmap (("SourceSecurityGroupName",) . toJSON) _eC2SecurityGroupIngressPropertySourceSecurityGroupName
    , fmap (("SourceSecurityGroupOwnerId",) . toJSON) _eC2SecurityGroupIngressPropertySourceSecurityGroupOwnerId
    , fmap (("ToPort",) . toJSON . fmap Integer') _eC2SecurityGroupIngressPropertyToPort
    ]

instance FromJSON EC2SecurityGroupIngressProperty where
  parseJSON (Object obj) =
    EC2SecurityGroupIngressProperty <$>
      (obj .:? "CidrIp") <*>
      (obj .:? "CidrIpv6") <*>
      (obj .:? "Description") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "FromPort") <*>
      (obj .: "IpProtocol") <*>
      (obj .:? "SourceSecurityGroupId") <*>
      (obj .:? "SourceSecurityGroupName") <*>
      (obj .:? "SourceSecurityGroupOwnerId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ToPort")
  parseJSON _ = mempty

-- | Constructor for 'EC2SecurityGroupIngressProperty' containing required
-- fields as arguments.
ec2SecurityGroupIngressProperty
  :: Val Text -- ^ 'ecsgipIpProtocol'
  -> EC2SecurityGroupIngressProperty
ec2SecurityGroupIngressProperty ipProtocolarg =
  EC2SecurityGroupIngressProperty
  { _eC2SecurityGroupIngressPropertyCidrIp = Nothing
  , _eC2SecurityGroupIngressPropertyCidrIpv6 = Nothing
  , _eC2SecurityGroupIngressPropertyDescription = Nothing
  , _eC2SecurityGroupIngressPropertyFromPort = Nothing
  , _eC2SecurityGroupIngressPropertyIpProtocol = ipProtocolarg
  , _eC2SecurityGroupIngressPropertySourceSecurityGroupId = Nothing
  , _eC2SecurityGroupIngressPropertySourceSecurityGroupName = Nothing
  , _eC2SecurityGroupIngressPropertySourceSecurityGroupOwnerId = Nothing
  , _eC2SecurityGroupIngressPropertyToPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidrip
ecsgipCidrIp :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Text))
ecsgipCidrIp = lens _eC2SecurityGroupIngressPropertyCidrIp (\s a -> s { _eC2SecurityGroupIngressPropertyCidrIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidripv6
ecsgipCidrIpv6 :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Text))
ecsgipCidrIpv6 = lens _eC2SecurityGroupIngressPropertyCidrIpv6 (\s a -> s { _eC2SecurityGroupIngressPropertyCidrIpv6 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-description
ecsgipDescription :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Text))
ecsgipDescription = lens _eC2SecurityGroupIngressPropertyDescription (\s a -> s { _eC2SecurityGroupIngressPropertyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-fromport
ecsgipFromPort :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Integer))
ecsgipFromPort = lens _eC2SecurityGroupIngressPropertyFromPort (\s a -> s { _eC2SecurityGroupIngressPropertyFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-ipprotocol
ecsgipIpProtocol :: Lens' EC2SecurityGroupIngressProperty (Val Text)
ecsgipIpProtocol = lens _eC2SecurityGroupIngressPropertyIpProtocol (\s a -> s { _eC2SecurityGroupIngressPropertyIpProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupid
ecsgipSourceSecurityGroupId :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Text))
ecsgipSourceSecurityGroupId = lens _eC2SecurityGroupIngressPropertySourceSecurityGroupId (\s a -> s { _eC2SecurityGroupIngressPropertySourceSecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupname
ecsgipSourceSecurityGroupName :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Text))
ecsgipSourceSecurityGroupName = lens _eC2SecurityGroupIngressPropertySourceSecurityGroupName (\s a -> s { _eC2SecurityGroupIngressPropertySourceSecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupownerid
ecsgipSourceSecurityGroupOwnerId :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Text))
ecsgipSourceSecurityGroupOwnerId = lens _eC2SecurityGroupIngressPropertySourceSecurityGroupOwnerId (\s a -> s { _eC2SecurityGroupIngressPropertySourceSecurityGroupOwnerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-toport
ecsgipToPort :: Lens' EC2SecurityGroupIngressProperty (Maybe (Val Integer))
ecsgipToPort = lens _eC2SecurityGroupIngressPropertyToPort (\s a -> s { _eC2SecurityGroupIngressPropertyToPort = a })
