module Stratosphere.IoTEvents.DetectorModel.IotSiteWiseProperty (
        module Exports, IotSiteWiseProperty(..), mkIotSiteWiseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.AssetPropertyValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotSiteWiseProperty
  = IotSiteWiseProperty {assetId :: (Prelude.Maybe (Value Prelude.Text)),
                         entryId :: (Prelude.Maybe (Value Prelude.Text)),
                         propertyAlias :: (Prelude.Maybe (Value Prelude.Text)),
                         propertyId :: (Prelude.Maybe (Value Prelude.Text)),
                         propertyValue :: AssetPropertyValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotSiteWiseProperty ::
  AssetPropertyValueProperty -> IotSiteWiseProperty
mkIotSiteWiseProperty propertyValue
  = IotSiteWiseProperty
      {propertyValue = propertyValue, assetId = Prelude.Nothing,
       entryId = Prelude.Nothing, propertyAlias = Prelude.Nothing,
       propertyId = Prelude.Nothing}
instance ToResourceProperties IotSiteWiseProperty where
  toResourceProperties IotSiteWiseProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.IotSiteWise",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PropertyValue" JSON..= propertyValue]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetId" Prelude.<$> assetId,
                               (JSON..=) "EntryId" Prelude.<$> entryId,
                               (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
                               (JSON..=) "PropertyId" Prelude.<$> propertyId]))}
instance JSON.ToJSON IotSiteWiseProperty where
  toJSON IotSiteWiseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PropertyValue" JSON..= propertyValue]
              (Prelude.catMaybes
                 [(JSON..=) "AssetId" Prelude.<$> assetId,
                  (JSON..=) "EntryId" Prelude.<$> entryId,
                  (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
                  (JSON..=) "PropertyId" Prelude.<$> propertyId])))
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
    = IotSiteWiseProperty {propertyValue = newValue, ..}