{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The Amazon RDS security group rule is an embedded property of the
-- AWS::RDS::DBSecurityGroup type.

module Stratosphere.ResourceProperties.RDSSecurityGroupRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RDSSecurityGroupRule. See
-- 'rdsSecurityGroupRule' for a more convenient constructor.
data RDSSecurityGroupRule =
  RDSSecurityGroupRule
  { _rDSSecurityGroupRuleCIDRIP :: Maybe (Val Text)
  , _rDSSecurityGroupRuleEC2SecurityGroupId :: Maybe (Val Text)
  , _rDSSecurityGroupRuleEC2SecurityGroupName :: Maybe (Val Text)
  , _rDSSecurityGroupRuleEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON RDSSecurityGroupRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON RDSSecurityGroupRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'RDSSecurityGroupRule' containing required fields as
-- arguments.
rdsSecurityGroupRule
  :: RDSSecurityGroupRule
rdsSecurityGroupRule  =
  RDSSecurityGroupRule
  { _rDSSecurityGroupRuleCIDRIP = Nothing
  , _rDSSecurityGroupRuleEC2SecurityGroupId = Nothing
  , _rDSSecurityGroupRuleEC2SecurityGroupName = Nothing
  , _rDSSecurityGroupRuleEC2SecurityGroupOwnerId = Nothing
  }

-- | The IP range to authorize. For an overview of CIDR ranges, go to the
-- Wikipedia Tutorial. Type: String
rdssgrCIDRIP :: Lens' RDSSecurityGroupRule (Maybe (Val Text))
rdssgrCIDRIP = lens _rDSSecurityGroupRuleCIDRIP (\s a -> s { _rDSSecurityGroupRuleCIDRIP = a })

-- | Id of the VPC or EC2 Security Group to authorize. For VPC DB Security
-- Groups, use EC2SecurityGroupId. For EC2 Security Groups, use
-- EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
-- EC2SecurityGroupId. Type: String
rdssgrEC2SecurityGroupId :: Lens' RDSSecurityGroupRule (Maybe (Val Text))
rdssgrEC2SecurityGroupId = lens _rDSSecurityGroupRuleEC2SecurityGroupId (\s a -> s { _rDSSecurityGroupRuleEC2SecurityGroupId = a })

-- | Name of the EC2 Security Group to authorize. For VPC DB Security Groups,
-- use EC2SecurityGroupId. For EC2 Security Groups, use
-- EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
-- EC2SecurityGroupId. Type: String
rdssgrEC2SecurityGroupName :: Lens' RDSSecurityGroupRule (Maybe (Val Text))
rdssgrEC2SecurityGroupName = lens _rDSSecurityGroupRuleEC2SecurityGroupName (\s a -> s { _rDSSecurityGroupRuleEC2SecurityGroupName = a })

-- | AWS Account Number of the owner of the EC2 Security Group specified in
-- the EC2SecurityGroupName parameter. The AWS Access Key ID is not an
-- acceptable value. For VPC DB Security Groups, use EC2SecurityGroupId. For
-- EC2 Security Groups, use EC2SecurityGroupOwnerId and either
-- EC2SecurityGroupName or EC2SecurityGroupId. Type: String
rdssgrEC2SecurityGroupOwnerId :: Lens' RDSSecurityGroupRule (Maybe (Val Text))
rdssgrEC2SecurityGroupOwnerId = lens _rDSSecurityGroupRuleEC2SecurityGroupOwnerId (\s a -> s { _rDSSecurityGroupRuleEC2SecurityGroupOwnerId = a })