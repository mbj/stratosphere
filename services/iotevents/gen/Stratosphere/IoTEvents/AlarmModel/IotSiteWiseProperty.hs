module Stratosphere.IoTEvents.AlarmModel.IotSiteWiseProperty (
        module Exports, IotSiteWiseProperty(..), mkIotSiteWiseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AssetPropertyValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotSiteWiseProperty
  = IotSiteWiseProperty {assetId :: (Prelude.Maybe (Value Prelude.Text)),
                         entryId :: (Prelude.Maybe (Value Prelude.Text)),
                         propertyAlias :: (Prelude.Maybe (Value Prelude.Text)),
                         propertyId :: (Prelude.Maybe (Value Prelude.Text)),
                         propertyValue :: (Prelude.Maybe AssetPropertyValueProperty)}
mkIotSiteWiseProperty :: IotSiteWiseProperty
mkIotSiteWiseProperty
  = IotSiteWiseProperty
      {assetId = Prelude.Nothing, entryId = Prelude.Nothing,
       propertyAlias = Prelude.Nothing, propertyId = Prelude.Nothing,
       propertyValue = Prelude.Nothing}
instance ToResourceProperties IotSiteWiseProperty where
  toResourceProperties IotSiteWiseProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.IotSiteWise",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssetId" Prelude.<$> assetId,
                            (JSON..=) "EntryId" Prelude.<$> entryId,
                            (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
                            (JSON..=) "PropertyId" Prelude.<$> propertyId,
                            (JSON..=) "PropertyValue" Prelude.<$> propertyValue])}
instance JSON.ToJSON IotSiteWiseProperty where
  toJSON IotSiteWiseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssetId" Prelude.<$> assetId,
               (JSON..=) "EntryId" Prelude.<$> entryId,
               (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
               (JSON..=) "PropertyId" Prelude.<$> propertyId,
               (JSON..=) "PropertyValue" Prelude.<$> propertyValue]))
instance Property "AssetId" IotSiteWiseProperty where
  type PropertyType "AssetId" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {assetId = Prelude.pure newValue, ..}
instance Property "EntryId" IotSiteWiseProperty where
  type PropertyType "EntryId" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {entryId = Prelude.pure newValue, ..}
instance Property "PropertyAlias" IotSiteWiseProperty where
  type PropertyType "PropertyAlias" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {propertyAlias = Prelude.pure newValue, ..}
instance Property "PropertyId" IotSiteWiseProperty where
  type PropertyType "PropertyId" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {propertyId = Prelude.pure newValue, ..}
instance Property "PropertyValue" IotSiteWiseProperty where
  type PropertyType "PropertyValue" IotSiteWiseProperty = AssetPropertyValueProperty
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {propertyValue = Prelude.pure newValue, ..}