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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-iotsitewisemultilayerstorage.html>
    IotSiteWiseMultiLayerStorageProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-iotsitewisemultilayerstorage.html#cfn-iotanalytics-datastore-iotsitewisemultilayerstorage-customermanageds3storage>
                                          customerManagedS3Storage :: (Prelude.Maybe CustomerManagedS3StorageProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotSiteWiseMultiLayerStorageProperty ::
  IotSiteWiseMultiLayerStorageProperty
mkIotSiteWiseMultiLayerStorageProperty
  = IotSiteWiseMultiLayerStorageProperty
      {haddock_workaround_ = (),
       customerManagedS3Storage = Prelude.Nothing}
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
  set newValue IotSiteWiseMultiLayerStorageProperty {..}
    = IotSiteWiseMultiLayerStorageProperty
        {customerManagedS3Storage = Prelude.pure newValue, ..}