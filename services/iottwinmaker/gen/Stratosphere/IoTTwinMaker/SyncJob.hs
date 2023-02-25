module Stratosphere.IoTTwinMaker.SyncJob (
        SyncJob(..), mkSyncJob
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SyncJob
  = SyncJob {syncRole :: (Value Prelude.Text),
             syncSource :: (Value Prelude.Text),
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
             workspaceId :: (Value Prelude.Text)}
mkSyncJob ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SyncJob
mkSyncJob syncRole syncSource workspaceId
  = SyncJob
      {syncRole = syncRole, syncSource = syncSource,
       workspaceId = workspaceId, tags = Prelude.Nothing}
instance ToResourceProperties SyncJob where
  toResourceProperties SyncJob {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::SyncJob",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SyncRole" JSON..= syncRole, "SyncSource" JSON..= syncSource,
                            "WorkspaceId" JSON..= workspaceId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SyncJob where
  toJSON SyncJob {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SyncRole" JSON..= syncRole, "SyncSource" JSON..= syncSource,
               "WorkspaceId" JSON..= workspaceId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "SyncRole" SyncJob where
  type PropertyType "SyncRole" SyncJob = Value Prelude.Text
  set newValue SyncJob {..} = SyncJob {syncRole = newValue, ..}
instance Property "SyncSource" SyncJob where
  type PropertyType "SyncSource" SyncJob = Value Prelude.Text
  set newValue SyncJob {..} = SyncJob {syncSource = newValue, ..}
instance Property "Tags" SyncJob where
  type PropertyType "Tags" SyncJob = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SyncJob {..}
    = SyncJob {tags = Prelude.pure newValue, ..}
instance Property "WorkspaceId" SyncJob where
  type PropertyType "WorkspaceId" SyncJob = Value Prelude.Text
  set newValue SyncJob {..} = SyncJob {workspaceId = newValue, ..}