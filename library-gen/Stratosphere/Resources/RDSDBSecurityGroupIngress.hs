{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html

module Stratosphere.Resources.RDSDBSecurityGroupIngress where

import Stratosphere.ResourceImports


-- | Full data type definition for RDSDBSecurityGroupIngress. See
-- 'rdsdbSecurityGroupIngress' for a more convenient constructor.
data RDSDBSecurityGroupIngress =
  RDSDBSecurityGroupIngress
  { _rDSDBSecurityGroupIngressCIDRIP :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressDBSecurityGroupName :: Val Text
  , _rDSDBSecurityGroupIngressEC2SecurityGroupId :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressEC2SecurityGroupName :: Maybe (Val Text)
  , _rDSDBSecurityGroupIngressEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties RDSDBSecurityGroupIngress where
  toResourceProperties RDSDBSecurityGroupIngress{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::DBSecurityGroupIngress"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CIDRIP",) . toJSON) _rDSDBSecurityGroupIngressCIDRIP
        , (Just . ("DBSecurityGroupName",) . toJSON) _rDSDBSecurityGroupIngressDBSecurityGroupName
        , fmap (("EC2SecurityGroupId",) . toJSON) _rDSDBSecurityGroupIngressEC2SecurityGroupId
        , fmap (("EC2SecurityGroupName",) . toJSON) _rDSDBSecurityGroupIngressEC2SecurityGroupName
        , fmap (("EC2SecurityGroupOwnerId",) . toJSON) _rDSDBSecurityGroupIngressEC2SecurityGroupOwnerId
        ]
    }

-- | Constructor for 'RDSDBSecurityGroupIngress' containing required fields as
-- arguments.
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
