{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html

module Stratosphere.Resources.DMSReplicationTask where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DMSReplicationTask. See
-- 'dmsReplicationTask' for a more convenient constructor.
data DMSReplicationTask =
  DMSReplicationTask
  { _dMSReplicationTaskCdcStartTime :: Maybe (Val Double')
  , _dMSReplicationTaskMigrationType :: Val Text
  , _dMSReplicationTaskReplicationInstanceArn :: Val Text
  , _dMSReplicationTaskReplicationTaskIdentifier :: Maybe (Val Text)
  , _dMSReplicationTaskReplicationTaskSettings :: Maybe (Val Text)
  , _dMSReplicationTaskSourceEndpointArn :: Val Text
  , _dMSReplicationTaskTableMappings :: Val Text
  , _dMSReplicationTaskTags :: Maybe [Tag]
  , _dMSReplicationTaskTargetEndpointArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON DMSReplicationTask where
  toJSON DMSReplicationTask{..} =
    object $
    catMaybes
    [ ("CdcStartTime" .=) <$> _dMSReplicationTaskCdcStartTime
    , Just ("MigrationType" .= _dMSReplicationTaskMigrationType)
    , Just ("ReplicationInstanceArn" .= _dMSReplicationTaskReplicationInstanceArn)
    , ("ReplicationTaskIdentifier" .=) <$> _dMSReplicationTaskReplicationTaskIdentifier
    , ("ReplicationTaskSettings" .=) <$> _dMSReplicationTaskReplicationTaskSettings
    , Just ("SourceEndpointArn" .= _dMSReplicationTaskSourceEndpointArn)
    , Just ("TableMappings" .= _dMSReplicationTaskTableMappings)
    , ("Tags" .=) <$> _dMSReplicationTaskTags
    , Just ("TargetEndpointArn" .= _dMSReplicationTaskTargetEndpointArn)
    ]

instance FromJSON DMSReplicationTask where
  parseJSON (Object obj) =
    DMSReplicationTask <$>
      obj .:? "CdcStartTime" <*>
      obj .: "MigrationType" <*>
      obj .: "ReplicationInstanceArn" <*>
      obj .:? "ReplicationTaskIdentifier" <*>
      obj .:? "ReplicationTaskSettings" <*>
      obj .: "SourceEndpointArn" <*>
      obj .: "TableMappings" <*>
      obj .:? "Tags" <*>
      obj .: "TargetEndpointArn"
  parseJSON _ = mempty

-- | Constructor for 'DMSReplicationTask' containing required fields as
-- arguments.
dmsReplicationTask
  :: Val Text -- ^ 'dmsrtMigrationType'
  -> Val Text -- ^ 'dmsrtReplicationInstanceArn'
  -> Val Text -- ^ 'dmsrtSourceEndpointArn'
  -> Val Text -- ^ 'dmsrtTableMappings'
  -> Val Text -- ^ 'dmsrtTargetEndpointArn'
  -> DMSReplicationTask
dmsReplicationTask migrationTypearg replicationInstanceArnarg sourceEndpointArnarg tableMappingsarg targetEndpointArnarg =
  DMSReplicationTask
  { _dMSReplicationTaskCdcStartTime = Nothing
  , _dMSReplicationTaskMigrationType = migrationTypearg
  , _dMSReplicationTaskReplicationInstanceArn = replicationInstanceArnarg
  , _dMSReplicationTaskReplicationTaskIdentifier = Nothing
  , _dMSReplicationTaskReplicationTaskSettings = Nothing
  , _dMSReplicationTaskSourceEndpointArn = sourceEndpointArnarg
  , _dMSReplicationTaskTableMappings = tableMappingsarg
  , _dMSReplicationTaskTags = Nothing
  , _dMSReplicationTaskTargetEndpointArn = targetEndpointArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstarttime
dmsrtCdcStartTime :: Lens' DMSReplicationTask (Maybe (Val Double'))
dmsrtCdcStartTime = lens _dMSReplicationTaskCdcStartTime (\s a -> s { _dMSReplicationTaskCdcStartTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-migrationtype
dmsrtMigrationType :: Lens' DMSReplicationTask (Val Text)
dmsrtMigrationType = lens _dMSReplicationTaskMigrationType (\s a -> s { _dMSReplicationTaskMigrationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-replicationinstancearn
dmsrtReplicationInstanceArn :: Lens' DMSReplicationTask (Val Text)
dmsrtReplicationInstanceArn = lens _dMSReplicationTaskReplicationInstanceArn (\s a -> s { _dMSReplicationTaskReplicationInstanceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-replicationtaskidentifier
dmsrtReplicationTaskIdentifier :: Lens' DMSReplicationTask (Maybe (Val Text))
dmsrtReplicationTaskIdentifier = lens _dMSReplicationTaskReplicationTaskIdentifier (\s a -> s { _dMSReplicationTaskReplicationTaskIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-replicationtasksettings
dmsrtReplicationTaskSettings :: Lens' DMSReplicationTask (Maybe (Val Text))
dmsrtReplicationTaskSettings = lens _dMSReplicationTaskReplicationTaskSettings (\s a -> s { _dMSReplicationTaskReplicationTaskSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-sourceendpointarn
dmsrtSourceEndpointArn :: Lens' DMSReplicationTask (Val Text)
dmsrtSourceEndpointArn = lens _dMSReplicationTaskSourceEndpointArn (\s a -> s { _dMSReplicationTaskSourceEndpointArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-tablemappings
dmsrtTableMappings :: Lens' DMSReplicationTask (Val Text)
dmsrtTableMappings = lens _dMSReplicationTaskTableMappings (\s a -> s { _dMSReplicationTaskTableMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-tags
dmsrtTags :: Lens' DMSReplicationTask (Maybe [Tag])
dmsrtTags = lens _dMSReplicationTaskTags (\s a -> s { _dMSReplicationTaskTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-targetendpointarn
dmsrtTargetEndpointArn :: Lens' DMSReplicationTask (Val Text)
dmsrtTargetEndpointArn = lens _dMSReplicationTaskTargetEndpointArn (\s a -> s { _dMSReplicationTaskTargetEndpointArn = a })
