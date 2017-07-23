{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html

module Stratosphere.Resources.DMSReplicationSubnetGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DMSReplicationSubnetGroup. See
-- 'dmsReplicationSubnetGroup' for a more convenient constructor.
data DMSReplicationSubnetGroup =
  DMSReplicationSubnetGroup
  { _dMSReplicationSubnetGroupReplicationSubnetGroupDescription :: Val Text
  , _dMSReplicationSubnetGroupReplicationSubnetGroupIdentifier :: Maybe (Val Text)
  , _dMSReplicationSubnetGroupSubnetIds :: ValList Text
  , _dMSReplicationSubnetGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON DMSReplicationSubnetGroup where
  toJSON DMSReplicationSubnetGroup{..} =
    object $
    catMaybes
    [ Just ("ReplicationSubnetGroupDescription" .= _dMSReplicationSubnetGroupReplicationSubnetGroupDescription)
    , ("ReplicationSubnetGroupIdentifier" .=) <$> _dMSReplicationSubnetGroupReplicationSubnetGroupIdentifier
    , Just ("SubnetIds" .= _dMSReplicationSubnetGroupSubnetIds)
    , ("Tags" .=) <$> _dMSReplicationSubnetGroupTags
    ]

instance FromJSON DMSReplicationSubnetGroup where
  parseJSON (Object obj) =
    DMSReplicationSubnetGroup <$>
      obj .: "ReplicationSubnetGroupDescription" <*>
      obj .:? "ReplicationSubnetGroupIdentifier" <*>
      obj .: "SubnetIds" <*>
      obj .:? "Tags"
  parseJSON _ = mempty

-- | Constructor for 'DMSReplicationSubnetGroup' containing required fields as
-- arguments.
dmsReplicationSubnetGroup
  :: Val Text -- ^ 'dmsrsgReplicationSubnetGroupDescription'
  -> ValList Text -- ^ 'dmsrsgSubnetIds'
  -> DMSReplicationSubnetGroup
dmsReplicationSubnetGroup replicationSubnetGroupDescriptionarg subnetIdsarg =
  DMSReplicationSubnetGroup
  { _dMSReplicationSubnetGroupReplicationSubnetGroupDescription = replicationSubnetGroupDescriptionarg
  , _dMSReplicationSubnetGroupReplicationSubnetGroupIdentifier = Nothing
  , _dMSReplicationSubnetGroupSubnetIds = subnetIdsarg
  , _dMSReplicationSubnetGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupdescription
dmsrsgReplicationSubnetGroupDescription :: Lens' DMSReplicationSubnetGroup (Val Text)
dmsrsgReplicationSubnetGroupDescription = lens _dMSReplicationSubnetGroupReplicationSubnetGroupDescription (\s a -> s { _dMSReplicationSubnetGroupReplicationSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupidentifier
dmsrsgReplicationSubnetGroupIdentifier :: Lens' DMSReplicationSubnetGroup (Maybe (Val Text))
dmsrsgReplicationSubnetGroupIdentifier = lens _dMSReplicationSubnetGroupReplicationSubnetGroupIdentifier (\s a -> s { _dMSReplicationSubnetGroupReplicationSubnetGroupIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-subnetids
dmsrsgSubnetIds :: Lens' DMSReplicationSubnetGroup (ValList Text)
dmsrsgSubnetIds = lens _dMSReplicationSubnetGroupSubnetIds (\s a -> s { _dMSReplicationSubnetGroupSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-tags
dmsrsgTags :: Lens' DMSReplicationSubnetGroup (Maybe [Tag])
dmsrsgTags = lens _dMSReplicationSubnetGroupTags (\s a -> s { _dMSReplicationSubnetGroupTags = a })
