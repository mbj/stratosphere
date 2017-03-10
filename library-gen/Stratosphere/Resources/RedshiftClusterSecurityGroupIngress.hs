{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html

module Stratosphere.Resources.RedshiftClusterSecurityGroupIngress where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for RedshiftClusterSecurityGroupIngress. See
-- 'redshiftClusterSecurityGroupIngress' for a more convenient constructor.
data RedshiftClusterSecurityGroupIngress =
  RedshiftClusterSecurityGroupIngress
  { _redshiftClusterSecurityGroupIngressCIDRIP :: Maybe (Val Text)
  , _redshiftClusterSecurityGroupIngressClusterSecurityGroupName :: Val Text
  , _redshiftClusterSecurityGroupIngressEC2SecurityGroupName :: Maybe (Val Text)
  , _redshiftClusterSecurityGroupIngressEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RedshiftClusterSecurityGroupIngress where
  toJSON RedshiftClusterSecurityGroupIngress{..} =
    object $
    catMaybes
    [ ("CIDRIP" .=) <$> _redshiftClusterSecurityGroupIngressCIDRIP
    , Just ("ClusterSecurityGroupName" .= _redshiftClusterSecurityGroupIngressClusterSecurityGroupName)
    , ("EC2SecurityGroupName" .=) <$> _redshiftClusterSecurityGroupIngressEC2SecurityGroupName
    , ("EC2SecurityGroupOwnerId" .=) <$> _redshiftClusterSecurityGroupIngressEC2SecurityGroupOwnerId
    ]

instance FromJSON RedshiftClusterSecurityGroupIngress where
  parseJSON (Object obj) =
    RedshiftClusterSecurityGroupIngress <$>
      obj .:? "CIDRIP" <*>
      obj .: "ClusterSecurityGroupName" <*>
      obj .:? "EC2SecurityGroupName" <*>
      obj .:? "EC2SecurityGroupOwnerId"
  parseJSON _ = mempty

-- | Constructor for 'RedshiftClusterSecurityGroupIngress' containing required
-- fields as arguments.
redshiftClusterSecurityGroupIngress
  :: Val Text -- ^ 'rcsgiClusterSecurityGroupName'
  -> RedshiftClusterSecurityGroupIngress
redshiftClusterSecurityGroupIngress clusterSecurityGroupNamearg =
  RedshiftClusterSecurityGroupIngress
  { _redshiftClusterSecurityGroupIngressCIDRIP = Nothing
  , _redshiftClusterSecurityGroupIngressClusterSecurityGroupName = clusterSecurityGroupNamearg
  , _redshiftClusterSecurityGroupIngressEC2SecurityGroupName = Nothing
  , _redshiftClusterSecurityGroupIngressEC2SecurityGroupOwnerId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-cidrip
rcsgiCIDRIP :: Lens' RedshiftClusterSecurityGroupIngress (Maybe (Val Text))
rcsgiCIDRIP = lens _redshiftClusterSecurityGroupIngressCIDRIP (\s a -> s { _redshiftClusterSecurityGroupIngressCIDRIP = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-clustersecuritygroupname
rcsgiClusterSecurityGroupName :: Lens' RedshiftClusterSecurityGroupIngress (Val Text)
rcsgiClusterSecurityGroupName = lens _redshiftClusterSecurityGroupIngressClusterSecurityGroupName (\s a -> s { _redshiftClusterSecurityGroupIngressClusterSecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-ec2securitygroupname
rcsgiEC2SecurityGroupName :: Lens' RedshiftClusterSecurityGroupIngress (Maybe (Val Text))
rcsgiEC2SecurityGroupName = lens _redshiftClusterSecurityGroupIngressEC2SecurityGroupName (\s a -> s { _redshiftClusterSecurityGroupIngressEC2SecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-ec2securitygroupownerid
rcsgiEC2SecurityGroupOwnerId :: Lens' RedshiftClusterSecurityGroupIngress (Maybe (Val Text))
rcsgiEC2SecurityGroupOwnerId = lens _redshiftClusterSecurityGroupIngressEC2SecurityGroupOwnerId (\s a -> s { _redshiftClusterSecurityGroupIngressEC2SecurityGroupOwnerId = a })
