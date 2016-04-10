{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::RDS::DBSecurityGroupIngress type enables ingress to a
-- DBSecurityGroup using one of two forms of authorization. First, EC2 or VPC
-- security groups can be added to the DBSecurityGroup if the application
-- using the database is running on EC2 or VPC instances. Second, IP ranges
-- are available if the application accessing your database is running on the
-- Internet. For more information about DB security groups, see Working with
-- DB security groups This type supports updates. For more information about
-- updating stacks, see AWS CloudFormation Stacks Updates. For details about
-- the settings for DB security group ingress, see
-- AuthorizeDBSecurityGroupIngress.

module Stratosphere.ResourceProperties.DBSecurityGroupIngress where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DBSecurityGroupIngress. See
-- 'dbSecurityGroupIngress' for a more convenient constructor.
data DBSecurityGroupIngress =
  DBSecurityGroupIngress
  { _dBSecurityGroupIngressCIDRIP :: Maybe (Val Text)
  , _dBSecurityGroupIngressDBSecurityGroupName :: Val Text
  , _dBSecurityGroupIngressEC2SecurityGroupId :: Maybe (Val Text)
  , _dBSecurityGroupIngressEC2SecurityGroupName :: Maybe (Val Text)
  , _dBSecurityGroupIngressEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON DBSecurityGroupIngress where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON DBSecurityGroupIngress where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'DBSecurityGroupIngress' containing required fields as
-- arguments.
dbSecurityGroupIngress
  :: Val Text -- ^ DBSecurityGroupName
  -> DBSecurityGroupIngress
dbSecurityGroupIngress dBSecurityGroupNamearg =
  DBSecurityGroupIngress
  { _dBSecurityGroupIngressCIDRIP = Nothing
  , _dBSecurityGroupIngressDBSecurityGroupName = dBSecurityGroupNamearg
  , _dBSecurityGroupIngressEC2SecurityGroupId = Nothing
  , _dBSecurityGroupIngressEC2SecurityGroupName = Nothing
  , _dBSecurityGroupIngressEC2SecurityGroupOwnerId = Nothing
  }

-- | The IP range to authorize. For an overview of CIDR ranges, go to the
-- Wikipedia Tutorial. Type: String Update requires: No interruption
dbsgiCIDRIP :: Lens' DBSecurityGroupIngress (Maybe (Val Text))
dbsgiCIDRIP = lens _dBSecurityGroupIngressCIDRIP (\s a -> s { _dBSecurityGroupIngressCIDRIP = a })

-- | The name (ARN) of the AWS::RDS::DBSecurityGroup to which this ingress
-- will be added. Type: String
dbsgiDBSecurityGroupName :: Lens' DBSecurityGroupIngress (Val Text)
dbsgiDBSecurityGroupName = lens _dBSecurityGroupIngressDBSecurityGroupName (\s a -> s { _dBSecurityGroupIngressDBSecurityGroupName = a })

-- | The ID of the VPC or EC2 security group to authorize. For VPC DB security
-- groups, use EC2SecurityGroupId. For EC2 security groups, use
-- EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
-- EC2SecurityGroupId. Type: String
dbsgiEC2SecurityGroupId :: Lens' DBSecurityGroupIngress (Maybe (Val Text))
dbsgiEC2SecurityGroupId = lens _dBSecurityGroupIngressEC2SecurityGroupId (\s a -> s { _dBSecurityGroupIngressEC2SecurityGroupId = a })

-- | The name of the EC2 security group to authorize. For VPC DB security
-- groups, use EC2SecurityGroupId. For EC2 security groups, use
-- EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
-- EC2SecurityGroupId. Type: String
dbsgiEC2SecurityGroupName :: Lens' DBSecurityGroupIngress (Maybe (Val Text))
dbsgiEC2SecurityGroupName = lens _dBSecurityGroupIngressEC2SecurityGroupName (\s a -> s { _dBSecurityGroupIngressEC2SecurityGroupName = a })

-- | The AWS Account Number of the owner of the EC2 security group specified
-- in the EC2SecurityGroupName parameter. The AWS Access Key ID is not an
-- acceptable value. For VPC DB security groups, use EC2SecurityGroupId. For
-- EC2 security groups, use EC2SecurityGroupOwnerId and either
-- EC2SecurityGroupName or EC2SecurityGroupId. Type: String
dbsgiEC2SecurityGroupOwnerId :: Lens' DBSecurityGroupIngress (Maybe (Val Text))
dbsgiEC2SecurityGroupOwnerId = lens _dBSecurityGroupIngressEC2SecurityGroupOwnerId (\s a -> s { _dBSecurityGroupIngressEC2SecurityGroupOwnerId = a })