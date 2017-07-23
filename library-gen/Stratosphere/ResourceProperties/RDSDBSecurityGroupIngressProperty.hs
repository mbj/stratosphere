{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html

module Stratosphere.ResourceProperties.RDSDBSecurityGroupIngressProperty where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for RDSDBSecurityGroupIngressProperty. See
-- 'rdsdbSecurityGroupIngressProperty' for a more convenient constructor.
data RDSDBSecurityGroupIngressProperty =
  RDSDBSecurityGroupIngressProperty
  { _rDSDBSecurityGroupIngressPropertyCIDRIP :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RDSDBSecurityGroupIngressProperty where
  toJSON RDSDBSecurityGroupIngressProperty{..} =
    object $
    catMaybes
    [ fmap (("CIDRIP",) . toJSON) _rDSDBSecurityGroupIngressPropertyCIDRIP
    , fmap (("EC2SecurityGroupId",) . toJSON) _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId
    , fmap (("EC2SecurityGroupName",) . toJSON) _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName
    , fmap (("EC2SecurityGroupOwnerId",) . toJSON) _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId
    ]

instance FromJSON RDSDBSecurityGroupIngressProperty where
  parseJSON (Object obj) =
    RDSDBSecurityGroupIngressProperty <$>
      (obj .:? "CIDRIP") <*>
      (obj .:? "EC2SecurityGroupId") <*>
      (obj .:? "EC2SecurityGroupName") <*>
      (obj .:? "EC2SecurityGroupOwnerId")
  parseJSON _ = mempty

-- | Constructor for 'RDSDBSecurityGroupIngressProperty' containing required
-- fields as arguments.
rdsdbSecurityGroupIngressProperty
  :: RDSDBSecurityGroupIngressProperty
rdsdbSecurityGroupIngressProperty  =
  RDSDBSecurityGroupIngressProperty
  { _rDSDBSecurityGroupIngressPropertyCIDRIP = Nothing
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId = Nothing
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName = Nothing
  , _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-cidrip
rdsdbsgipCIDRIP :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipCIDRIP = lens _rDSDBSecurityGroupIngressPropertyCIDRIP (\s a -> s { _rDSDBSecurityGroupIngressPropertyCIDRIP = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupid
rdsdbsgipEC2SecurityGroupId :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipEC2SecurityGroupId = lens _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId (\s a -> s { _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupname
rdsdbsgipEC2SecurityGroupName :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipEC2SecurityGroupName = lens _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName (\s a -> s { _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupownerid
rdsdbsgipEC2SecurityGroupOwnerId :: Lens' RDSDBSecurityGroupIngressProperty (Maybe (Val Text))
rdsdbsgipEC2SecurityGroupOwnerId = lens _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId (\s a -> s { _rDSDBSecurityGroupIngressPropertyEC2SecurityGroupOwnerId = a })
