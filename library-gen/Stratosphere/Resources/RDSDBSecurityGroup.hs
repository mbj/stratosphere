{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html

module Stratosphere.Resources.RDSDBSecurityGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSDBSecurityGroupIngressProperty
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBSecurityGroup. See
-- 'rdsdbSecurityGroup' for a more convenient constructor.
data RDSDBSecurityGroup =
  RDSDBSecurityGroup
  { _rDSDBSecurityGroupDBSecurityGroupIngress :: [RDSDBSecurityGroupIngressProperty]
  , _rDSDBSecurityGroupEC2VpcId :: Maybe (Val Text)
  , _rDSDBSecurityGroupGroupDescription :: Val Text
  , _rDSDBSecurityGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties RDSDBSecurityGroup where
  toResourceProperties RDSDBSecurityGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::DBSecurityGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DBSecurityGroupIngress",) . toJSON) _rDSDBSecurityGroupDBSecurityGroupIngress
        , fmap (("EC2VpcId",) . toJSON) _rDSDBSecurityGroupEC2VpcId
        , (Just . ("GroupDescription",) . toJSON) _rDSDBSecurityGroupGroupDescription
        , fmap (("Tags",) . toJSON) _rDSDBSecurityGroupTags
        ]
    }

-- | Constructor for 'RDSDBSecurityGroup' containing required fields as
-- arguments.
rdsdbSecurityGroup
  :: [RDSDBSecurityGroupIngressProperty] -- ^ 'rdsdbsegDBSecurityGroupIngress'
  -> Val Text -- ^ 'rdsdbsegGroupDescription'
  -> RDSDBSecurityGroup
rdsdbSecurityGroup dBSecurityGroupIngressarg groupDescriptionarg =
  RDSDBSecurityGroup
  { _rDSDBSecurityGroupDBSecurityGroupIngress = dBSecurityGroupIngressarg
  , _rDSDBSecurityGroupEC2VpcId = Nothing
  , _rDSDBSecurityGroupGroupDescription = groupDescriptionarg
  , _rDSDBSecurityGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-dbsecuritygroupingress
rdsdbsegDBSecurityGroupIngress :: Lens' RDSDBSecurityGroup [RDSDBSecurityGroupIngressProperty]
rdsdbsegDBSecurityGroupIngress = lens _rDSDBSecurityGroupDBSecurityGroupIngress (\s a -> s { _rDSDBSecurityGroupDBSecurityGroupIngress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-ec2vpcid
rdsdbsegEC2VpcId :: Lens' RDSDBSecurityGroup (Maybe (Val Text))
rdsdbsegEC2VpcId = lens _rDSDBSecurityGroupEC2VpcId (\s a -> s { _rDSDBSecurityGroupEC2VpcId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-groupdescription
rdsdbsegGroupDescription :: Lens' RDSDBSecurityGroup (Val Text)
rdsdbsegGroupDescription = lens _rDSDBSecurityGroupGroupDescription (\s a -> s { _rDSDBSecurityGroupGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-tags
rdsdbsegTags :: Lens' RDSDBSecurityGroup (Maybe [Tag])
rdsdbsegTags = lens _rDSDBSecurityGroupTags (\s a -> s { _rDSDBSecurityGroupTags = a })
