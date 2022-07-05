{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html

module Stratosphere.Resources.RedshiftClusterSecurityGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RedshiftClusterSecurityGroup. See
-- 'redshiftClusterSecurityGroup' for a more convenient constructor.
data RedshiftClusterSecurityGroup =
  RedshiftClusterSecurityGroup
  { _redshiftClusterSecurityGroupDescription :: Val Text
  , _redshiftClusterSecurityGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties RedshiftClusterSecurityGroup where
  toResourceProperties RedshiftClusterSecurityGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Redshift::ClusterSecurityGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Description",) . toJSON) _redshiftClusterSecurityGroupDescription
        , fmap (("Tags",) . toJSON) _redshiftClusterSecurityGroupTags
        ]
    }

-- | Constructor for 'RedshiftClusterSecurityGroup' containing required fields
-- as arguments.
redshiftClusterSecurityGroup
  :: Val Text -- ^ 'rcsegDescription'
  -> RedshiftClusterSecurityGroup
redshiftClusterSecurityGroup descriptionarg =
  RedshiftClusterSecurityGroup
  { _redshiftClusterSecurityGroupDescription = descriptionarg
  , _redshiftClusterSecurityGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-description
rcsegDescription :: Lens' RedshiftClusterSecurityGroup (Val Text)
rcsegDescription = lens _redshiftClusterSecurityGroupDescription (\s a -> s { _redshiftClusterSecurityGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-tags
rcsegTags :: Lens' RedshiftClusterSecurityGroup (Maybe [Tag])
rcsegTags = lens _redshiftClusterSecurityGroupTags (\s a -> s { _redshiftClusterSecurityGroupTags = a })
