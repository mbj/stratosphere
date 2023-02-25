module Stratosphere.DMS.ReplicationTask (
        ReplicationTask(..), mkReplicationTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicationTask
  = ReplicationTask {cdcStartPosition :: (Prelude.Maybe (Value Prelude.Text)),
                     cdcStartTime :: (Prelude.Maybe (Value Prelude.Double)),
                     cdcStopPosition :: (Prelude.Maybe (Value Prelude.Text)),
                     migrationType :: (Value Prelude.Text),
                     replicationInstanceArn :: (Value Prelude.Text),
                     replicationTaskIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                     replicationTaskSettings :: (Prelude.Maybe (Value Prelude.Text)),
                     resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                     sourceEndpointArn :: (Value Prelude.Text),
                     tableMappings :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag]),
                     targetEndpointArn :: (Value Prelude.Text),
                     taskData :: (Prelude.Maybe (Value Prelude.Text))}
mkReplicationTask ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> ReplicationTask
mkReplicationTask
  migrationType
  replicationInstanceArn
  sourceEndpointArn
  tableMappings
  targetEndpointArn
  = ReplicationTask
      {migrationType = migrationType,
       replicationInstanceArn = replicationInstanceArn,
       sourceEndpointArn = sourceEndpointArn,
       tableMappings = tableMappings,
       targetEndpointArn = targetEndpointArn,
       cdcStartPosition = Prelude.Nothing, cdcStartTime = Prelude.Nothing,
       cdcStopPosition = Prelude.Nothing,
       replicationTaskIdentifier = Prelude.Nothing,
       replicationTaskSettings = Prelude.Nothing,
       resourceIdentifier = Prelude.Nothing, tags = Prelude.Nothing,
       taskData = Prelude.Nothing}
instance ToResourceProperties ReplicationTask where
  toResourceProperties ReplicationTask {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationTask",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MigrationType" JSON..= migrationType,
                            "ReplicationInstanceArn" JSON..= replicationInstanceArn,
                            "SourceEndpointArn" JSON..= sourceEndpointArn,
                            "TableMappings" JSON..= tableMappings,
                            "TargetEndpointArn" JSON..= targetEndpointArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CdcStartPosition" Prelude.<$> cdcStartPosition,
                               (JSON..=) "CdcStartTime" Prelude.<$> cdcStartTime,
                               (JSON..=) "CdcStopPosition" Prelude.<$> cdcStopPosition,
                               (JSON..=) "ReplicationTaskIdentifier"
                                 Prelude.<$> replicationTaskIdentifier,
                               (JSON..=) "ReplicationTaskSettings"
                                 Prelude.<$> replicationTaskSettings,
                               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TaskData" Prelude.<$> taskData]))}
instance JSON.ToJSON ReplicationTask where
  toJSON ReplicationTask {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MigrationType" JSON..= migrationType,
               "ReplicationInstanceArn" JSON..= replicationInstanceArn,
               "SourceEndpointArn" JSON..= sourceEndpointArn,
               "TableMappings" JSON..= tableMappings,
               "TargetEndpointArn" JSON..= targetEndpointArn]
              (Prelude.catMaybes
                 [(JSON..=) "CdcStartPosition" Prelude.<$> cdcStartPosition,
                  (JSON..=) "CdcStartTime" Prelude.<$> cdcStartTime,
                  (JSON..=) "CdcStopPosition" Prelude.<$> cdcStopPosition,
                  (JSON..=) "ReplicationTaskIdentifier"
                    Prelude.<$> replicationTaskIdentifier,
                  (JSON..=) "ReplicationTaskSettings"
                    Prelude.<$> replicationTaskSettings,
                  (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TaskData" Prelude.<$> taskData])))
instance Property "CdcStartPosition" ReplicationTask where
  type PropertyType "CdcStartPosition" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {cdcStartPosition = Prelude.pure newValue, ..}
instance Property "CdcStartTime" ReplicationTask where
  type PropertyType "CdcStartTime" ReplicationTask = Value Prelude.Double
  set newValue ReplicationTask {..}
    = ReplicationTask {cdcStartTime = Prelude.pure newValue, ..}
instance Property "CdcStopPosition" ReplicationTask where
  type PropertyType "CdcStopPosition" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {cdcStopPosition = Prelude.pure newValue, ..}
instance Property "MigrationType" ReplicationTask where
  type PropertyType "MigrationType" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {migrationType = newValue, ..}
instance Property "ReplicationInstanceArn" ReplicationTask where
  type PropertyType "ReplicationInstanceArn" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {replicationInstanceArn = newValue, ..}
instance Property "ReplicationTaskIdentifier" ReplicationTask where
  type PropertyType "ReplicationTaskIdentifier" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask
        {replicationTaskIdentifier = Prelude.pure newValue, ..}
instance Property "ReplicationTaskSettings" ReplicationTask where
  type PropertyType "ReplicationTaskSettings" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask
        {replicationTaskSettings = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" ReplicationTask where
  type PropertyType "ResourceIdentifier" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "SourceEndpointArn" ReplicationTask where
  type PropertyType "SourceEndpointArn" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {sourceEndpointArn = newValue, ..}
instance Property "TableMappings" ReplicationTask where
  type PropertyType "TableMappings" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {tableMappings = newValue, ..}
instance Property "Tags" ReplicationTask where
  type PropertyType "Tags" ReplicationTask = [Tag]
  set newValue ReplicationTask {..}
    = ReplicationTask {tags = Prelude.pure newValue, ..}
instance Property "TargetEndpointArn" ReplicationTask where
  type PropertyType "TargetEndpointArn" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {targetEndpointArn = newValue, ..}
instance Property "TaskData" ReplicationTask where
  type PropertyType "TaskData" ReplicationTask = Value Prelude.Text
  set newValue ReplicationTask {..}
    = ReplicationTask {taskData = Prelude.pure newValue, ..}