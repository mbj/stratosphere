module Stratosphere.IoTAnalytics.Datastore.IotSiteWiseMultiLayerStorageProperty (
        module Exports, IotSiteWiseMultiLayerStorageProperty(..),
        mkIotSiteWiseMultiLayerStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.CustomerManagedS3StorageProperty as Exports
import Stratosphere.ResourceProperties
data IotSiteWiseMultiLayerStorageProperty
  = IotSiteWiseMultiLayerStorageProperty {customerManagedS3Storage :: (Prelude.Maybe CustomerManagedS3StorageProperty)}
mkIotSiteWiseMultiLayerStorageProperty ::
  IotSiteWiseMultiLayerStorageProperty
mkIotSiteWiseMultiLayerStorageProperty
  = IotSiteWiseMultiLayerStorageProperty
      {customerManagedS3Storage = Prelude.Nothing}
instance ToResourceProperties IotSiteWiseMultiLayerStorageProperty where
  toResourceProperties IotSiteWiseMultiLayerStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.IotSiteWiseMultiLayerStorage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerManagedS3Storage"
                              Prelude.<$> customerManagedS3Storage])}
instance JSON.ToJSON IotSiteWiseMultiLayerStorageProperty where
  toJSON IotSiteWiseMultiLayerStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerManagedS3Storage"
                 Prelude.<$> customerManagedS3Storage]))
instance Property "CustomerManagedS3Storage" IotSiteWiseMultiLayerStorageProperty where
  type PropertyType "CustomerManagedS3Storage" IotSiteWiseMultiLayerStorageProperty = CustomerManagedS3StorageProperty
  set newValue IotSiteWiseMultiLayerStorageProperty {}
    = IotSiteWiseMultiLayerStorageProperty
        {customerManagedS3Storage = Prelude.pure newValue, ..}