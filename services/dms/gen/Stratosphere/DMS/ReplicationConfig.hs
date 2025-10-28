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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html>
    ReplicationConfig {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-computeconfig>
                       computeConfig :: ComputeConfigProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-replicationconfigidentifier>
                       replicationConfigIdentifier :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-replicationsettings>
                       replicationSettings :: (Prelude.Maybe JSON.Object),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-replicationtype>
                       replicationType :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-resourceidentifier>
                       resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-sourceendpointarn>
                       sourceEndpointArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-supplementalsettings>
                       supplementalSettings :: (Prelude.Maybe JSON.Object),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-tablemappings>
                       tableMappings :: JSON.Object,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-tags>
                       tags :: (Prelude.Maybe [Tag]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationconfig.html#cfn-dms-replicationconfig-targetendpointarn>
                       targetEndpointArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationConfig ::
  ComputeConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> JSON.Object -> Value Prelude.Text -> ReplicationConfig
mkReplicationConfig
  computeConfig
  replicationConfigIdentifier
  replicationType
  sourceEndpointArn
  tableMappings
  targetEndpointArn
  = ReplicationConfig
      {haddock_workaround_ = (), computeConfig = computeConfig,
       replicationConfigIdentifier = replicationConfigIdentifier,
       replicationType = replicationType,
       sourceEndpointArn = sourceEndpointArn,
       tableMappings = tableMappings,
       targetEndpointArn = targetEndpointArn,
       replicationSettings = Prelude.Nothing,
       resourceIdentifier = Prelude.Nothing,
       supplementalSettings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ReplicationConfig where
  toResourceProperties ReplicationConfig {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputeConfig" JSON..= computeConfig,
                            "ReplicationConfigIdentifier" JSON..= replicationConfigIdentifier,
                            "ReplicationType" JSON..= replicationType,
                            "SourceEndpointArn" JSON..= sourceEndpointArn,
                            "TableMappings" JSON..= tableMappings,
                            "TargetEndpointArn" JSON..= targetEndpointArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ReplicationSettings" Prelude.<$> replicationSettings,
                               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                               (JSON..=) "SupplementalSettings" Prelude.<$> supplementalSettings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ReplicationConfig where
  toJSON ReplicationConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputeConfig" JSON..= computeConfig,
               "ReplicationConfigIdentifier" JSON..= replicationConfigIdentifier,
               "ReplicationType" JSON..= replicationType,
               "SourceEndpointArn" JSON..= sourceEndpointArn,
               "TableMappings" JSON..= tableMappings,
               "TargetEndpointArn" JSON..= targetEndpointArn]
              (Prelude.catMaybes
                 [(JSON..=) "ReplicationSettings" Prelude.<$> replicationSettings,
                  (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                  (JSON..=) "SupplementalSettings" Prelude.<$> supplementalSettings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComputeConfig" ReplicationConfig where
  type PropertyType "ComputeConfig" ReplicationConfig = ComputeConfigProperty
  set newValue ReplicationConfig {..}
    = ReplicationConfig {computeConfig = newValue, ..}
instance Property "ReplicationConfigIdentifier" ReplicationConfig where
  type PropertyType "ReplicationConfigIdentifier" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {replicationConfigIdentifier = newValue, ..}
instance Property "ReplicationSettings" ReplicationConfig where
  type PropertyType "ReplicationSettings" ReplicationConfig = JSON.Object
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {replicationSettings = Prelude.pure newValue, ..}
instance Property "ReplicationType" ReplicationConfig where
  type PropertyType "ReplicationType" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {replicationType = newValue, ..}
instance Property "ResourceIdentifier" ReplicationConfig where
  type PropertyType "ResourceIdentifier" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "SourceEndpointArn" ReplicationConfig where
  type PropertyType "SourceEndpointArn" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {sourceEndpointArn = newValue, ..}
instance Property "SupplementalSettings" ReplicationConfig where
  type PropertyType "SupplementalSettings" ReplicationConfig = JSON.Object
  set newValue ReplicationConfig {..}
    = ReplicationConfig
        {supplementalSettings = Prelude.pure newValue, ..}
instance Property "TableMappings" ReplicationConfig where
  type PropertyType "TableMappings" ReplicationConfig = JSON.Object
  set newValue ReplicationConfig {..}
    = ReplicationConfig {tableMappings = newValue, ..}
instance Property "Tags" ReplicationConfig where
  type PropertyType "Tags" ReplicationConfig = [Tag]
  set newValue ReplicationConfig {..}
    = ReplicationConfig {tags = Prelude.pure newValue, ..}
instance Property "TargetEndpointArn" ReplicationConfig where
  type PropertyType "TargetEndpointArn" ReplicationConfig = Value Prelude.Text
  set newValue ReplicationConfig {..}
    = ReplicationConfig {targetEndpointArn = newValue, ..}