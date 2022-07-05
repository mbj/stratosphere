{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html

module Stratosphere.Resources.DMSReplicationTask where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DMSReplicationTask. See
-- 'dmsReplicationTask' for a more convenient constructor.
data DMSReplicationTask =
  DMSReplicationTask
  { _dMSReplicationTaskCdcStartPosition :: Maybe (Val Text)
  , _dMSReplicationTaskCdcStartTime :: Maybe (Val Double)
  , _dMSReplicationTaskCdcStopPosition :: Maybe (Val Text)
  , _dMSReplicationTaskMigrationType :: Val Text
  , _dMSReplicationTaskReplicationInstanceArn :: Val Text
  , _dMSReplicationTaskReplicationTaskIdentifier :: Maybe (Val Text)
  , _dMSReplicationTaskReplicationTaskSettings :: Maybe (Val Text)
  , _dMSReplicationTaskSourceEndpointArn :: Val Text
  , _dMSReplicationTaskTableMappings :: Val Text
  , _dMSReplicationTaskTags :: Maybe [Tag]
  , _dMSReplicationTaskTargetEndpointArn :: Val Text
  , _dMSReplicationTaskTaskData :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties DMSReplicationTask where
  toResourceProperties DMSReplicationTask{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DMS::ReplicationTask"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CdcStartPosition",) . toJSON) _dMSReplicationTaskCdcStartPosition
        , fmap (("CdcStartTime",) . toJSON) _dMSReplicationTaskCdcStartTime
        , fmap (("CdcStopPosition",) . toJSON) _dMSReplicationTaskCdcStopPosition
        , (Just . ("MigrationType",) . toJSON) _dMSReplicationTaskMigrationType
        , (Just . ("ReplicationInstanceArn",) . toJSON) _dMSReplicationTaskReplicationInstanceArn
        , fmap (("ReplicationTaskIdentifier",) . toJSON) _dMSReplicationTaskReplicationTaskIdentifier
        , fmap (("ReplicationTaskSettings",) . toJSON) _dMSReplicationTaskReplicationTaskSettings
        , (Just . ("SourceEndpointArn",) . toJSON) _dMSReplicationTaskSourceEndpointArn
        , (Just . ("TableMappings",) . toJSON) _dMSReplicationTaskTableMappings
        , fmap (("Tags",) . toJSON) _dMSReplicationTaskTags
        , (Just . ("TargetEndpointArn",) . toJSON) _dMSReplicationTaskTargetEndpointArn
        , fmap (("TaskData",) . toJSON) _dMSReplicationTaskTaskData
        ]
    }

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
  { _dMSReplicationTaskCdcStartPosition = Nothing
  , _dMSReplicationTaskCdcStartTime = Nothing
  , _dMSReplicationTaskCdcStopPosition = Nothing
  , _dMSReplicationTaskMigrationType = migrationTypearg
  , _dMSReplicationTaskReplicationInstanceArn = replicationInstanceArnarg
  , _dMSReplicationTaskReplicationTaskIdentifier = Nothing
  , _dMSReplicationTaskReplicationTaskSettings = Nothing
  , _dMSReplicationTaskSourceEndpointArn = sourceEndpointArnarg
  , _dMSReplicationTaskTableMappings = tableMappingsarg
  , _dMSReplicationTaskTags = Nothing
  , _dMSReplicationTaskTargetEndpointArn = targetEndpointArnarg
  , _dMSReplicationTaskTaskData = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstartposition
dmsrtCdcStartPosition :: Lens' DMSReplicationTask (Maybe (Val Text))
dmsrtCdcStartPosition = lens _dMSReplicationTaskCdcStartPosition (\s a -> s { _dMSReplicationTaskCdcStartPosition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstarttime
dmsrtCdcStartTime :: Lens' DMSReplicationTask (Maybe (Val Double))
dmsrtCdcStartTime = lens _dMSReplicationTaskCdcStartTime (\s a -> s { _dMSReplicationTaskCdcStartTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstopposition
dmsrtCdcStopPosition :: Lens' DMSReplicationTask (Maybe (Val Text))
dmsrtCdcStopPosition = lens _dMSReplicationTaskCdcStopPosition (\s a -> s { _dMSReplicationTaskCdcStopPosition = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-taskdata
dmsrtTaskData :: Lens' DMSReplicationTask (Maybe (Val Text))
dmsrtTaskData = lens _dMSReplicationTaskTaskData (\s a -> s { _dMSReplicationTaskTaskData = a })
