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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html>
    Datastore {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorename>
               datastoreName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorepartitions>
               datastorePartitions :: (Prelude.Maybe DatastorePartitionsProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorestorage>
               datastoreStorage :: (Prelude.Maybe DatastoreStorageProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-fileformatconfiguration>
               fileFormatConfiguration :: (Prelude.Maybe FileFormatConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-retentionperiod>
               retentionPeriod :: (Prelude.Maybe RetentionPeriodProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatastore :: Datastore
mkDatastore
  = Datastore
      {haddock_workaround_ = (), datastoreName = Prelude.Nothing,
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