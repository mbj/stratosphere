module Stratosphere.IoTAnalytics.Datastore.DatastorePartitionProperty (
        module Exports, DatastorePartitionProperty(..),
        mkDatastorePartitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.PartitionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.TimestampPartitionProperty as Exports
import Stratosphere.ResourceProperties
data DatastorePartitionProperty
  = DatastorePartitionProperty {partition :: (Prelude.Maybe PartitionProperty),
                                timestampPartition :: (Prelude.Maybe TimestampPartitionProperty)}
mkDatastorePartitionProperty :: DatastorePartitionProperty
mkDatastorePartitionProperty
  = DatastorePartitionProperty
      {partition = Prelude.Nothing, timestampPartition = Prelude.Nothing}
instance ToResourceProperties DatastorePartitionProperty where
  toResourceProperties DatastorePartitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.DatastorePartition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Partition" Prelude.<$> partition,
                            (JSON..=) "TimestampPartition" Prelude.<$> timestampPartition])}
instance JSON.ToJSON DatastorePartitionProperty where
  toJSON DatastorePartitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Partition" Prelude.<$> partition,
               (JSON..=) "TimestampPartition" Prelude.<$> timestampPartition]))
instance Property "Partition" DatastorePartitionProperty where
  type PropertyType "Partition" DatastorePartitionProperty = PartitionProperty
  set newValue DatastorePartitionProperty {..}
    = DatastorePartitionProperty
        {partition = Prelude.pure newValue, ..}
instance Property "TimestampPartition" DatastorePartitionProperty where
  type PropertyType "TimestampPartition" DatastorePartitionProperty = TimestampPartitionProperty
  set newValue DatastorePartitionProperty {..}
    = DatastorePartitionProperty
        {timestampPartition = Prelude.pure newValue, ..}