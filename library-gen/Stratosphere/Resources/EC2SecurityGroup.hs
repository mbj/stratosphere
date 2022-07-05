{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html

module Stratosphere.Resources.EC2SecurityGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SecurityGroupEgressProperty
import Stratosphere.ResourceProperties.EC2SecurityGroupIngressProperty
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2SecurityGroup. See 'ec2SecurityGroup'
-- for a more convenient constructor.
data EC2SecurityGroup =
  EC2SecurityGroup
  { _eC2SecurityGroupGroupDescription :: Val Text
  , _eC2SecurityGroupGroupName :: Maybe (Val Text)
  , _eC2SecurityGroupSecurityGroupEgress :: Maybe [EC2SecurityGroupEgressProperty]
  , _eC2SecurityGroupSecurityGroupIngress :: Maybe [EC2SecurityGroupIngressProperty]
  , _eC2SecurityGroupTags :: Maybe [Tag]
  , _eC2SecurityGroupVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2SecurityGroup where
  toResourceProperties EC2SecurityGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::SecurityGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("GroupDescription",) . toJSON) _eC2SecurityGroupGroupDescription
        , fmap (("GroupName",) . toJSON) _eC2SecurityGroupGroupName
        , fmap (("SecurityGroupEgress",) . toJSON) _eC2SecurityGroupSecurityGroupEgress
        , fmap (("SecurityGroupIngress",) . toJSON) _eC2SecurityGroupSecurityGroupIngress
        , fmap (("Tags",) . toJSON) _eC2SecurityGroupTags
        , fmap (("VpcId",) . toJSON) _eC2SecurityGroupVpcId
        ]
    }

-- | Constructor for 'EC2SecurityGroup' containing required fields as
-- arguments.
ec2SecurityGroup
  :: Val Text -- ^ 'ecsgGroupDescription'
  -> EC2SecurityGroup
ec2SecurityGroup groupDescriptionarg =
  EC2SecurityGroup
  { _eC2SecurityGroupGroupDescription = groupDescriptionarg
  , _eC2SecurityGroupGroupName = Nothing
  , _eC2SecurityGroupSecurityGroupEgress = Nothing
  , _eC2SecurityGroupSecurityGroupIngress = Nothing
  , _eC2SecurityGroupTags = Nothing
  , _eC2SecurityGroupVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-groupdescription
ecsgGroupDescription :: Lens' EC2SecurityGroup (Val Text)
ecsgGroupDescription = lens _eC2SecurityGroupGroupDescription (\s a -> s { _eC2SecurityGroupGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-groupname
ecsgGroupName :: Lens' EC2SecurityGroup (Maybe (Val Text))
ecsgGroupName = lens _eC2SecurityGroupGroupName (\s a -> s { _eC2SecurityGroupGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-securitygroupegress
ecsgSecurityGroupEgress :: Lens' EC2SecurityGroup (Maybe [EC2SecurityGroupEgressProperty])
ecsgSecurityGroupEgress = lens _eC2SecurityGroupSecurityGroupEgress (\s a -> s { _eC2SecurityGroupSecurityGroupEgress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-securitygroupingress
ecsgSecurityGroupIngress :: Lens' EC2SecurityGroup (Maybe [EC2SecurityGroupIngressProperty])
ecsgSecurityGroupIngress = lens _eC2SecurityGroupSecurityGroupIngress (\s a -> s { _eC2SecurityGroupSecurityGroupIngress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-tags
ecsgTags :: Lens' EC2SecurityGroup (Maybe [Tag])
ecsgTags = lens _eC2SecurityGroupTags (\s a -> s { _eC2SecurityGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-vpcid
ecsgVpcId :: Lens' EC2SecurityGroup (Maybe (Val Text))
ecsgVpcId = lens _eC2SecurityGroupVpcId (\s a -> s { _eC2SecurityGroupVpcId = a })
