{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html

module Stratosphere.Resources.RedshiftClusterSubnetGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RedshiftClusterSubnetGroup. See
-- 'redshiftClusterSubnetGroup' for a more convenient constructor.
data RedshiftClusterSubnetGroup =
  RedshiftClusterSubnetGroup
  { _redshiftClusterSubnetGroupDescription :: Val Text
  , _redshiftClusterSubnetGroupSubnetIds :: ValList Text
  , _redshiftClusterSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties RedshiftClusterSubnetGroup where
  toResourceProperties RedshiftClusterSubnetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Redshift::ClusterSubnetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Description",) . toJSON) _redshiftClusterSubnetGroupDescription
        , (Just . ("SubnetIds",) . toJSON) _redshiftClusterSubnetGroupSubnetIds
        , fmap (("Tags",) . toJSON) _redshiftClusterSubnetGroupTags
        ]
    }

-- | Constructor for 'RedshiftClusterSubnetGroup' containing required fields
-- as arguments.
redshiftClusterSubnetGroup
  :: Val Text -- ^ 'rcsugDescription'
  -> ValList Text -- ^ 'rcsugSubnetIds'
  -> RedshiftClusterSubnetGroup
redshiftClusterSubnetGroup descriptionarg subnetIdsarg =
  RedshiftClusterSubnetGroup
  { _redshiftClusterSubnetGroupDescription = descriptionarg
  , _redshiftClusterSubnetGroupSubnetIds = subnetIdsarg
  , _redshiftClusterSubnetGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-description
rcsugDescription :: Lens' RedshiftClusterSubnetGroup (Val Text)
rcsugDescription = lens _redshiftClusterSubnetGroupDescription (\s a -> s { _redshiftClusterSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-subnetids
rcsugSubnetIds :: Lens' RedshiftClusterSubnetGroup (ValList Text)
rcsugSubnetIds = lens _redshiftClusterSubnetGroupSubnetIds (\s a -> s { _redshiftClusterSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-tags
rcsugTags :: Lens' RedshiftClusterSubnetGroup (Maybe [Tag])
rcsugTags = lens _redshiftClusterSubnetGroupTags (\s a -> s { _redshiftClusterSubnetGroupTags = a })
