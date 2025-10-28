module Stratosphere.IoTAnalytics.Datastore.DatastorePartitionsProperty (
        module Exports, DatastorePartitionsProperty(..),
        mkDatastorePartitionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.DatastorePartitionProperty as Exports
import Stratosphere.ResourceProperties
data DatastorePartitionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorepartitions.html>
    DatastorePartitionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorepartitions.html#cfn-iotanalytics-datastore-datastorepartitions-partitions>
                                 partitions :: (Prelude.Maybe [DatastorePartitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatastorePartitionsProperty :: DatastorePartitionsProperty
mkDatastorePartitionsProperty
  = DatastorePartitionsProperty
      {haddock_workaround_ = (), partitions = Prelude.Nothing}
instance ToResourceProperties DatastorePartitionsProperty where
  toResourceProperties DatastorePartitionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.DatastorePartitions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Partitions" Prelude.<$> partitions])}
instance JSON.ToJSON DatastorePartitionsProperty where
  toJSON DatastorePartitionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Partitions" Prelude.<$> partitions]))
instance Property "Partitions" DatastorePartitionsProperty where
  type PropertyType "Partitions" DatastorePartitionsProperty = [DatastorePartitionProperty]
  set newValue DatastorePartitionsProperty {..}
    = DatastorePartitionsProperty
        {partitions = Prelude.pure newValue, ..}