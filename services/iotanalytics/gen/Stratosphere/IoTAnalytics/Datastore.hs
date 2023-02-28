module Stratosphere.IoTAnalytics.Datastore (
        module Exports, Datastore(..), mkDatastore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.DatastorePartitionsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.DatastoreStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.FileFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.RetentionPeriodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Datastore
  = Datastore {datastoreName :: (Prelude.Maybe (Value Prelude.Text)),
               datastorePartitions :: (Prelude.Maybe DatastorePartitionsProperty),
               datastoreStorage :: (Prelude.Maybe DatastoreStorageProperty),
               fileFormatConfiguration :: (Prelude.Maybe FileFormatConfigurationProperty),
               retentionPeriod :: (Prelude.Maybe RetentionPeriodProperty),
               tags :: (Prelude.Maybe [Tag])}
mkDatastore :: Datastore
mkDatastore
  = Datastore
      {datastoreName = Prelude.Nothing,
       datastorePartitions = Prelude.Nothing,
       datastoreStorage = Prelude.Nothing,
       fileFormatConfiguration = Prelude.Nothing,
       retentionPeriod = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Datastore where
  toResourceProperties Datastore {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatastoreName" Prelude.<$> datastoreName,
                            (JSON..=) "DatastorePartitions" Prelude.<$> datastorePartitions,
                            (JSON..=) "DatastoreStorage" Prelude.<$> datastoreStorage,
                            (JSON..=) "FileFormatConfiguration"
                              Prelude.<$> fileFormatConfiguration,
                            (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Datastore where
  toJSON Datastore {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatastoreName" Prelude.<$> datastoreName,
               (JSON..=) "DatastorePartitions" Prelude.<$> datastorePartitions,
               (JSON..=) "DatastoreStorage" Prelude.<$> datastoreStorage,
               (JSON..=) "FileFormatConfiguration"
                 Prelude.<$> fileFormatConfiguration,
               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DatastoreName" Datastore where
  type PropertyType "DatastoreName" Datastore = Value Prelude.Text
  set newValue Datastore {..}
    = Datastore {datastoreName = Prelude.pure newValue, ..}
instance Property "DatastorePartitions" Datastore where
  type PropertyType "DatastorePartitions" Datastore = DatastorePartitionsProperty
  set newValue Datastore {..}
    = Datastore {datastorePartitions = Prelude.pure newValue, ..}
instance Property "DatastoreStorage" Datastore where
  type PropertyType "DatastoreStorage" Datastore = DatastoreStorageProperty
  set newValue Datastore {..}
    = Datastore {datastoreStorage = Prelude.pure newValue, ..}
instance Property "FileFormatConfiguration" Datastore where
  type PropertyType "FileFormatConfiguration" Datastore = FileFormatConfigurationProperty
  set newValue Datastore {..}
    = Datastore {fileFormatConfiguration = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" Datastore where
  type PropertyType "RetentionPeriod" Datastore = RetentionPeriodProperty
  set newValue Datastore {..}
    = Datastore {retentionPeriod = Prelude.pure newValue, ..}
instance Property "Tags" Datastore where
  type PropertyType "Tags" Datastore = [Tag]
  set newValue Datastore {..}
    = Datastore {tags = Prelude.pure newValue, ..}