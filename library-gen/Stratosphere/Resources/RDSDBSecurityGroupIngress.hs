{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html

module Stratosphere.Resources.RDSDBSecurityGroupIngress where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RDSDBSecurityGroupIngress. See
-- | 'rdsdbSecurityGroupIngress' for a more convenient constructor.
data RDSDBSecurityGroupIngress =
  RDSDBSecurityGroupIngress
  { _rDSDBSecurityGroupIngressCIDRIP :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressDBSecurityGroupName :: Val Text
  , _rDSDBSecurityGroupIngressEC2SecurityGroupId :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressEC2SecurityGroupName :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON RDSDBSecurityGroupIngress where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON RDSDBSecurityGroupIngress where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'RDSDBSecurityGroupIngress' containing required fields as
-- | arguments.
rdsdbSecurityGroupIngress
  :: Val Text -- ^ 'rdsdbsgiDBSecurityGroupName'
  -> RDSDBSecurityGroupIngress
rdsdbSecurityGroupIngress dBSecurityGroupNamearg =
  RDSDBSecurityGroupIngress
  { _rDSDBSecurityGroupIngressCIDRIP = Nothing
  , _rDSDBSecurityGroupIngressDBSecurityGroupName = dBSecurityGroupNamearg
  , _rDSDBSecurityGroupIngressEC2SecurityGroupId = Nothing
  , _rDSDBSecurityGroupIngressEC2SecurityGroupName = Nothing
  , _rDSDBSecurityGroupIngressEC2SecurityGroupOwnerId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-cidrip
rdsdbsgiCIDRIP :: Lens' RDSDBSecurityGroupIngress (Maybe (Val Text))
rdsdbsgiCIDRIP = lens _rDSDBSecurityGroupIngressCIDRIP (\s a -> s { _rDSDBSecurityGroupIngressCIDRIP = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-dbsecuritygroupname
rdsdbsgiDBSecurityGroupName :: Lens' RDSDBSecurityGroupIngress (Val Text)
rdsdbsgiDBSecurityGroupName = lens _rDSDBSecurityGroupIngressDBSecurityGroupName (\s a -> s { _rDSDBSecurityGroupIngressDBSecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupid
rdsdbsgiEC2SecurityGroupId :: Lens' RDSDBSecurityGroupIngress (Maybe (Val Text))
rdsdbsgiEC2SecurityGroupId = lens _rDSDBSecurityGroupIngressEC2SecurityGroupId (\s a -> s { _rDSDBSecurityGroupIngressEC2SecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupname
rdsdbsgiEC2SecurityGroupName :: Lens' RDSDBSecurityGroupIngress (Maybe (Val Text))
rdsdbsgiEC2SecurityGroupName = lens _rDSDBSecurityGroupIngressEC2SecurityGroupName (\s a -> s { _rDSDBSecurityGroupIngressEC2SecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupownerid
rdsdbsgiEC2SecurityGroupOwnerId :: Lens' RDSDBSecurityGroupIngress (Maybe (Val Text))
rdsdbsgiEC2SecurityGroupOwnerId = lens _rDSDBSecurityGroupIngressEC2SecurityGroupOwnerId (\s a -> s { _rDSDBSecurityGroupIngressEC2SecurityGroupOwnerId = a })
