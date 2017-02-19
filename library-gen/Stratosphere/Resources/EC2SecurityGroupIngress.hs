{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html

module Stratosphere.Resources.EC2SecurityGroupIngress where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SecurityGroupIngress. See
-- | 'ec2SecurityGroupIngress' for a more convenient constructor.
data EC2SecurityGroupIngress =
  EC2SecurityGroupIngress
  { _eC2SecurityGroupIngressCidrIp :: Maybe (Val Text)
  , _eC2SecurityGroupIngressCidrIpv6 :: Maybe (Val Text)
  , _eC2SecurityGroupIngressFromPort :: Maybe (Val Integer')
  , _eC2SecurityGroupIngressGroupId :: Maybe (Val Text)
  , _eC2SecurityGroupIngressGroupName :: Maybe (Val Text)
  , _eC2SecurityGroupIngressIpProtocol :: Val Text
  , _eC2SecurityGroupIngressSourceSecurityGroupId :: Maybe (Val Text)
  , _eC2SecurityGroupIngressSourceSecurityGroupName :: Maybe (Val Text)
  , _eC2SecurityGroupIngressSourceSecurityGroupOwnerId :: Maybe (Val Text)
  , _eC2SecurityGroupIngressToPort :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON EC2SecurityGroupIngress where
  toJSON EC2SecurityGroupIngress{..} =
    object $
    catMaybes
    [ ("CidrIp" .=) <$> _eC2SecurityGroupIngressCidrIp
    , ("CidrIpv6" .=) <$> _eC2SecurityGroupIngressCidrIpv6
    , ("FromPort" .=) <$> _eC2SecurityGroupIngressFromPort
    , ("GroupId" .=) <$> _eC2SecurityGroupIngressGroupId
    , ("GroupName" .=) <$> _eC2SecurityGroupIngressGroupName
    , Just ("IpProtocol" .= _eC2SecurityGroupIngressIpProtocol)
    , ("SourceSecurityGroupId" .=) <$> _eC2SecurityGroupIngressSourceSecurityGroupId
    , ("SourceSecurityGroupName" .=) <$> _eC2SecurityGroupIngressSourceSecurityGroupName
    , ("SourceSecurityGroupOwnerId" .=) <$> _eC2SecurityGroupIngressSourceSecurityGroupOwnerId
    , ("ToPort" .=) <$> _eC2SecurityGroupIngressToPort
    ]

instance FromJSON EC2SecurityGroupIngress where
  parseJSON (Object obj) =
    EC2SecurityGroupIngress <$>
      obj .:? "CidrIp" <*>
      obj .:? "CidrIpv6" <*>
      obj .:? "FromPort" <*>
      obj .:? "GroupId" <*>
      obj .:? "GroupName" <*>
      obj .: "IpProtocol" <*>
      obj .:? "SourceSecurityGroupId" <*>
      obj .:? "SourceSecurityGroupName" <*>
      obj .:? "SourceSecurityGroupOwnerId" <*>
      obj .:? "ToPort"
  parseJSON _ = mempty

-- | Constructor for 'EC2SecurityGroupIngress' containing required fields as
-- | arguments.
ec2SecurityGroupIngress
  :: Val Text -- ^ 'ecsgiIpProtocol'
  -> EC2SecurityGroupIngress
ec2SecurityGroupIngress ipProtocolarg =
  EC2SecurityGroupIngress
  { _eC2SecurityGroupIngressCidrIp = Nothing
  , _eC2SecurityGroupIngressCidrIpv6 = Nothing
  , _eC2SecurityGroupIngressFromPort = Nothing
  , _eC2SecurityGroupIngressGroupId = Nothing
  , _eC2SecurityGroupIngressGroupName = Nothing
  , _eC2SecurityGroupIngressIpProtocol = ipProtocolarg
  , _eC2SecurityGroupIngressSourceSecurityGroupId = Nothing
  , _eC2SecurityGroupIngressSourceSecurityGroupName = Nothing
  , _eC2SecurityGroupIngressSourceSecurityGroupOwnerId = Nothing
  , _eC2SecurityGroupIngressToPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-cidrip
ecsgiCidrIp :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiCidrIp = lens _eC2SecurityGroupIngressCidrIp (\s a -> s { _eC2SecurityGroupIngressCidrIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-cidripv6
ecsgiCidrIpv6 :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiCidrIpv6 = lens _eC2SecurityGroupIngressCidrIpv6 (\s a -> s { _eC2SecurityGroupIngressCidrIpv6 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-fromport
ecsgiFromPort :: Lens' EC2SecurityGroupIngress (Maybe (Val Integer'))
ecsgiFromPort = lens _eC2SecurityGroupIngressFromPort (\s a -> s { _eC2SecurityGroupIngressFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-groupid
ecsgiGroupId :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiGroupId = lens _eC2SecurityGroupIngressGroupId (\s a -> s { _eC2SecurityGroupIngressGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-groupname
ecsgiGroupName :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiGroupName = lens _eC2SecurityGroupIngressGroupName (\s a -> s { _eC2SecurityGroupIngressGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-ipprotocol
ecsgiIpProtocol :: Lens' EC2SecurityGroupIngress (Val Text)
ecsgiIpProtocol = lens _eC2SecurityGroupIngressIpProtocol (\s a -> s { _eC2SecurityGroupIngressIpProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-sourcesecuritygroupid
ecsgiSourceSecurityGroupId :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiSourceSecurityGroupId = lens _eC2SecurityGroupIngressSourceSecurityGroupId (\s a -> s { _eC2SecurityGroupIngressSourceSecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-sourcesecuritygroupname
ecsgiSourceSecurityGroupName :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiSourceSecurityGroupName = lens _eC2SecurityGroupIngressSourceSecurityGroupName (\s a -> s { _eC2SecurityGroupIngressSourceSecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-sourcesecuritygroupownerid
ecsgiSourceSecurityGroupOwnerId :: Lens' EC2SecurityGroupIngress (Maybe (Val Text))
ecsgiSourceSecurityGroupOwnerId = lens _eC2SecurityGroupIngressSourceSecurityGroupOwnerId (\s a -> s { _eC2SecurityGroupIngressSourceSecurityGroupOwnerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-toport
ecsgiToPort :: Lens' EC2SecurityGroupIngress (Maybe (Val Integer'))
ecsgiToPort = lens _eC2SecurityGroupIngressToPort (\s a -> s { _eC2SecurityGroupIngressToPort = a })
