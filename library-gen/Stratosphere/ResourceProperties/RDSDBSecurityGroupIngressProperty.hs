{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html

module Stratosphere.ResourceProperties.RDSDBSecurityGroupIngressProperty where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RDSDBSecurityGroupIngressProperty. See
-- | 'rdsdbSecurityGroupIngressProperty' for a more convenient constructor.
data RDSDBSecurityGroupIngressProperty =
  RDSDBSecurityGroupIngressProperty
  { _rDSDBSecurityGroupIngressPropertyCDIRIP :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON RDSDBSecurityGroupIngressProperty where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON RDSDBSecurityGroupIngressProperty where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'RDSDBSecurityGroupIngressProperty' containing required
-- | fields as arguments.
rdsdbSecurityGroupIngressProperty
  :: RDSDBSecurityGroupIngressProperty
rdsdbSecurityGroupIngressProperty  =
  RDSDBSecurityGroupIngressProperty
  { _rDSDBSecurityGroupIngressPropertyCDIRIP = Nothing
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId = Nothing
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName = Nothing
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-cidrip
rdsdbsgipCDIRIP :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipCDIRIP = lens _rDSDBSecurityGroupIngressPropertyCDIRIP (\s a -> s { _rDSDBSecurityGroupIngressPropertyCDIRIP = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupid
rdsdbsgipEC2SecurityGroupId :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipEC2SecurityGroupId = lens _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId (\s a -> s { _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupname
rdsdbsgipEC2SecurityGroupName :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipEC2SecurityGroupName = lens _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName (\s a -> s { _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupownerid
rdsdbsgipEC2SecurityGroupOwnerId :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipEC2SecurityGroupOwnerId = lens _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId (\s a -> s { _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId = a })
