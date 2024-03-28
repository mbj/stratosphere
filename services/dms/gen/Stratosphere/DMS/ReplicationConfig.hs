module Stratosphere.DMS.ReplicationConfig (
        module Exports, ReplicationConfig(..), mkReplicationConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.ReplicationConfig.ComputeConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicationConfig
  = ReplicationConfig {computeConfig :: (Prelude.Maybe ComputeConfigProperty),
                       replicationConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                       replicationConfigIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       replicationSettings :: (Prelude.Maybe JSON.Object),
                       replicationType :: (Prelude.Maybe (Value Prelude.Text)),
                       resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       sourceEndpointArn :: (Prelude.Maybe (Value Prelude.Text)),
                       supplementalSettings :: (Prelude.Maybe JSON.Object),
                       tableMappings :: (Prelude.Maybe JSON.Object),
                       tags :: (Prelude.Maybe [Tag]),
                       targetEndpointArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationConfig :: ReplicationConfig
mkReplicationConfig
  = ReplicationConfig
      {computeConfig = Prelude.Nothing,
       replicationConfigArn = Prelude.Nothing,
       replicationConfigIdentifier = Prelude.Nothing,
       replicationSettings = Prelude.Nothing,
       replicationType = Prelude.Nothing,
       resourceIdentifier = Prelude.Nothing,
       sourceEndpointArn = Prelude.Nothing,
       supplementalSettings = Prelude.Nothing,
       tableMappings = Prelude.Nothing, tags = Prelude.Nothing,
       targetEndpointArn = Prelude.Nothing}
instance ToResourceProperties ReplicationConfig where
  toResourceProperties ReplicationConfig {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeConfig" Prelude.<$> computeConfig,
                            (JSON..=) "ReplicationConfigArn" Prelude.<$> replicationConfigArn,
                            (JSON..=) "ReplicationConfigIdentifier"
                              Prelude.<$> replicationConfigIdentifier,
                            (JSON..=) "ReplicationSettings" Prelude.<$> replicationSettings,
                            (JSON..=) "ReplicationType" Prelude.<$> replicationType,
                            (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                            (JSON..=) "SourceEndpointArn" Prelude.<$> sourceEndpointArn,
                            (JSON..=) "SupplementalSettings" Prelude.<$> supplementalSettings,
                            (JSON..=) "TableMappings" Prelude.<$> tableMappings,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TargetEndpointArn" Prelude.<$> targetEndpointArn])}
instance JSON.ToJSON ReplicationConfig where
  toJSON ReplicationConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeConfig" Prelude.<$> computeConfig,
               (JSON..=) "ReplicationConfigArn" Prelude.<$> replicationConfigArn,
               (JSON..=) "ReplicationConfigIdentifier"
                 Prelude.<$> replicationConfigIdentifier,
               (JSON..=) "ReplicationSettings" Prelude.<$> replicationSettings,
               (JSON..=) "ReplicationType" Prelude.<$> replicationType,
               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
               (JSON..=) "SourceEndpointArn" Prelude.<$> sourceEndpointArn,
               (JSON..=) "SupplementalSettings" Prelude.<$> supplementalSettings,
               (JSON..=) "TableMappings" Prelude.<$> tableMappings,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TargetEndpointArn" Prelude.<$> targetEndpointArn]))
instance Property "ComputeConfig" ReplicationConfig where
  type PropertyType "ComputeConfig" ReplicationConfig = ComputeConfigProperty
  set newValue ReplicationConfig {..}
    = ReplicationConfig {computeConfig = Prelude.pure newValue, ..}
instance Property "ReplicationConfigArn" ReplicationConfig where
  type PropertyType "ReplicationConfigArn" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {replicationConfigArn = Prelude.pure newValue, ..}
instance Property "ReplicationConfigIdentifier" ReplicationConfig where
  type PropertyType "ReplicationConfigIdentifier" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {replicationConfigIdentifier = Prelude.pure newValue, ..}
instance Property "ReplicationSettings" ReplicationConfig where
  type PropertyType "ReplicationSettings" ReplicationConfig = JSON.Object
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {replicationSettings = Prelude.pure newValue, ..}
instance Property "ReplicationType" ReplicationConfig where
  type PropertyType "ReplicationType" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {replicationType = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" ReplicationConfig where
  type PropertyType "ResourceIdentifier" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "SourceEndpointArn" ReplicationConfig where
  type PropertyType "SourceEndpointArn" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {sourceEndpointArn = Prelude.pure newValue, ..}
instance Property "SupplementalSettings" ReplicationConfig where
  type PropertyType "SupplementalSettings" ReplicationConfig = JSON.Object
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {supplementalSettings = Prelude.pure newValue, ..}
instance Property "TableMappings" ReplicationConfig where
  type PropertyType "TableMappings" ReplicationConfig = JSON.Object
  set newValue ReplicationConfig {..}
    = ReplicationConfig {tableMappings = Prelude.pure newValue, ..}
instance Property "Tags" ReplicationConfig where
  type PropertyType "Tags" ReplicationConfig = [Tag]
  set newValue ReplicationConfig {..}
    = ReplicationConfig {tags = Prelude.pure newValue, ..}
instance Property "TargetEndpointArn" ReplicationConfig where
  type PropertyType "TargetEndpointArn" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {targetEndpointArn = Prelude.pure newValue, ..}