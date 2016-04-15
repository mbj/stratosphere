{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::RDS::DBSecurityGroup type is used to create or update an Amazon
-- RDS DB Security Group. For more information about DB Security Groups, see
-- Working with DB Security Groups in the Amazon Relational Database Service
-- Developer Guide. For details on the settings for DB security groups, see
-- CreateDBSecurityGroup. When you specify an AWS::RDS::DBSecurityGroup as an
-- argument to the Ref function, AWS CloudFormation returns the value of the
-- DBSecurityGroupName.

module Stratosphere.Resources.DBSecurityGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag
import Stratosphere.ResourceProperties.RDSSecurityGroupRule

-- | Full data type definition for DBSecurityGroup. See 'dbSecurityGroup' for
-- a more convenient constructor.
data DBSecurityGroup =
  DBSecurityGroup
  { _dBSecurityGroupEC2VpcId :: Maybe (Val Text)
  , _dBSecurityGroupDBSecurityGroupIngress :: [RDSSecurityGroupRule]
  , _dBSecurityGroupGroupDescription :: Val Text
  , _dBSecurityGroupResourceTags :: Maybe [ResourceTag]
  } deriving (Show, Generic)

instance ToJSON DBSecurityGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON DBSecurityGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'DBSecurityGroup' containing required fields as
-- arguments.
dbSecurityGroup
  :: [RDSSecurityGroupRule] -- ^ 'dbsgDBSecurityGroupIngress'
  -> Val Text -- ^ 'dbsgGroupDescription'
  -> DBSecurityGroup
dbSecurityGroup dBSecurityGroupIngressarg groupDescriptionarg =
  DBSecurityGroup
  { _dBSecurityGroupEC2VpcId = Nothing
  , _dBSecurityGroupDBSecurityGroupIngress = dBSecurityGroupIngressarg
  , _dBSecurityGroupGroupDescription = groupDescriptionarg
  , _dBSecurityGroupResourceTags = Nothing
  }

-- | The Id of VPC. Indicates which VPC this DB Security Group should belong
-- to. Type: String
dbsgEC2VpcId :: Lens' DBSecurityGroup (Maybe (Val Text))
dbsgEC2VpcId = lens _dBSecurityGroupEC2VpcId (\s a -> s { _dBSecurityGroupEC2VpcId = a })

-- | Network ingress authorization for an Amazon EC2 security group or an IP
-- address range. Type: List of RDS Security Group Rules.
dbsgDBSecurityGroupIngress :: Lens' DBSecurityGroup [RDSSecurityGroupRule]
dbsgDBSecurityGroupIngress = lens _dBSecurityGroupDBSecurityGroupIngress (\s a -> s { _dBSecurityGroupDBSecurityGroupIngress = a })

-- | Description of the security group. Type: String
dbsgGroupDescription :: Lens' DBSecurityGroup (Val Text)
dbsgGroupDescription = lens _dBSecurityGroupGroupDescription (\s a -> s { _dBSecurityGroupGroupDescription = a })

-- | The tags that you want to attach to the Amazon RDS DB security group.
dbsgResourceTags :: Lens' DBSecurityGroup (Maybe [ResourceTag])
dbsgResourceTags = lens _dBSecurityGroupResourceTags (\s a -> s { _dBSecurityGroupResourceTags = a })