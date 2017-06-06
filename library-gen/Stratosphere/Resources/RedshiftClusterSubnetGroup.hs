{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html

module Stratosphere.Resources.RedshiftClusterSubnetGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RedshiftClusterSubnetGroup. See
-- 'redshiftClusterSubnetGroup' for a more convenient constructor.
data RedshiftClusterSubnetGroup =
  RedshiftClusterSubnetGroup
  { _redshiftClusterSubnetGroupDescription :: Val Text
  , _redshiftClusterSubnetGroupSubnetIds :: [Val Text]
  , _redshiftClusterSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON RedshiftClusterSubnetGroup where
  toJSON RedshiftClusterSubnetGroup{..} =
    object $
    catMaybes
    [ Just ("Description" .= _redshiftClusterSubnetGroupDescription)
    , Just ("SubnetIds" .= _redshiftClusterSubnetGroupSubnetIds)
    , ("Tags" .=) <$> _redshiftClusterSubnetGroupTags
    ]

instance FromJSON RedshiftClusterSubnetGroup where
  parseJSON (Object obj) =
    RedshiftClusterSubnetGroup <$>
      obj .: "Description" <*>
      obj .: "SubnetIds" <*>
      obj .:? "Tags"
  parseJSON _ = mempty

-- | Constructor for 'RedshiftClusterSubnetGroup' containing required fields
-- as arguments.
redshiftClusterSubnetGroup
  :: Val Text -- ^ 'rcsugDescription'
  -> [Val Text] -- ^ 'rcsugSubnetIds'
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
rcsugSubnetIds :: Lens' RedshiftClusterSubnetGroup [Val Text]
rcsugSubnetIds = lens _redshiftClusterSubnetGroupSubnetIds (\s a -> s { _redshiftClusterSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-tags
rcsugTags :: Lens' RedshiftClusterSubnetGroup (Maybe [Tag])
rcsugTags = lens _redshiftClusterSubnetGroupTags (\s a -> s { _redshiftClusterSubnetGroupTags = a })
