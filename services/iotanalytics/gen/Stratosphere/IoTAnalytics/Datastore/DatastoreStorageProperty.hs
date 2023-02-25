module Stratosphere.IoTAnalytics.Datastore.DatastoreStorageProperty (
        module Exports, DatastoreStorageProperty(..),
        mkDatastoreStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.CustomerManagedS3Property as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.IotSiteWiseMultiLayerStorageProperty as Exports
import Stratosphere.ResourceProperties
data DatastoreStorageProperty
  = DatastoreStorageProperty {customerManagedS3 :: (Prelude.Maybe CustomerManagedS3Property),
                              iotSiteWiseMultiLayerStorage :: (Prelude.Maybe IotSiteWiseMultiLayerStorageProperty),
                              serviceManagedS3 :: (Prelude.Maybe JSON.Object)}
mkDatastoreStorageProperty :: DatastoreStorageProperty
mkDatastoreStorageProperty
  = DatastoreStorageProperty
      {customerManagedS3 = Prelude.Nothing,
       iotSiteWiseMultiLayerStorage = Prelude.Nothing,
       serviceManagedS3 = Prelude.Nothing}
instance ToResourceProperties DatastoreStorageProperty where
  toResourceProperties DatastoreStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.DatastoreStorage",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerManagedS3" Prelude.<$> customerManagedS3,
                            (JSON..=) "IotSiteWiseMultiLayerStorage"
                              Prelude.<$> iotSiteWiseMultiLayerStorage,
                            (JSON..=) "ServiceManagedS3" Prelude.<$> serviceManagedS3])}
instance JSON.ToJSON DatastoreStorageProperty where
  toJSON DatastoreStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerManagedS3" Prelude.<$> customerManagedS3,
               (JSON..=) "IotSiteWiseMultiLayerStorage"
                 Prelude.<$> iotSiteWiseMultiLayerStorage,
               (JSON..=) "ServiceManagedS3" Prelude.<$> serviceManagedS3]))
instance Property "CustomerManagedS3" DatastoreStorageProperty where
  type PropertyType "CustomerManagedS3" DatastoreStorageProperty = CustomerManagedS3Property
  set newValue DatastoreStorageProperty {..}
    = DatastoreStorageProperty
        {customerManagedS3 = Prelude.pure newValue, ..}
instance Property "IotSiteWiseMultiLayerStorage" DatastoreStorageProperty where
  type PropertyType "IotSiteWiseMultiLayerStorage" DatastoreStorageProperty = IotSiteWiseMultiLayerStorageProperty
  set newValue DatastoreStorageProperty {..}
    = DatastoreStorageProperty
        {iotSiteWiseMultiLayerStorage = Prelude.pure newValue, ..}
instance Property "ServiceManagedS3" DatastoreStorageProperty where
  type PropertyType "ServiceManagedS3" DatastoreStorageProperty = JSON.Object
  set newValue DatastoreStorageProperty {..}
    = DatastoreStorageProperty
        {serviceManagedS3 = Prelude.pure newValue, ..}