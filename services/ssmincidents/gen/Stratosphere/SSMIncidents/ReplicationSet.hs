module Stratosphere.SSMIncidents.ReplicationSet (
        module Exports, ReplicationSet(..), mkReplicationSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ReplicationSet.ReplicationRegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicationSet
  = ReplicationSet {deletionProtected :: (Prelude.Maybe (Value Prelude.Bool)),
                    regions :: [ReplicationRegionProperty],
                    tags :: (Prelude.Maybe [Tag])}
mkReplicationSet :: [ReplicationRegionProperty] -> ReplicationSet
mkReplicationSet regions
  = ReplicationSet
      {regions = regions, deletionProtected = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ReplicationSet where
  toResourceProperties ReplicationSet {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ReplicationSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Regions" JSON..= regions]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtected" Prelude.<$> deletionProtected,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ReplicationSet where
  toJSON ReplicationSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Regions" JSON..= regions]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtected" Prelude.<$> deletionProtected,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeletionProtected" ReplicationSet where
  type PropertyType "DeletionProtected" ReplicationSet = Value Prelude.Bool
  set newValue ReplicationSet {..}
    = ReplicationSet {deletionProtected = Prelude.pure newValue, ..}
instance Property "Regions" ReplicationSet where
  type PropertyType "Regions" ReplicationSet = [ReplicationRegionProperty]
  set newValue ReplicationSet {..}
    = ReplicationSet {regions = newValue, ..}
instance Property "Tags" ReplicationSet where
  type PropertyType "Tags" ReplicationSet = [Tag]
  set newValue ReplicationSet {..}
    = ReplicationSet {tags = Prelude.pure newValue, ..}