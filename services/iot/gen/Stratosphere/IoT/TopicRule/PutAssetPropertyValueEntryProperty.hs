module Stratosphere.IoT.TopicRule.PutAssetPropertyValueEntryProperty (
        module Exports, PutAssetPropertyValueEntryProperty(..),
        mkPutAssetPropertyValueEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.AssetPropertyValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PutAssetPropertyValueEntryProperty
  = PutAssetPropertyValueEntryProperty {assetId :: (Prelude.Maybe (Value Prelude.Text)),
                                        entryId :: (Prelude.Maybe (Value Prelude.Text)),
                                        propertyAlias :: (Prelude.Maybe (Value Prelude.Text)),
                                        propertyId :: (Prelude.Maybe (Value Prelude.Text)),
                                        propertyValues :: [AssetPropertyValueProperty]}
mkPutAssetPropertyValueEntryProperty ::
  [AssetPropertyValueProperty] -> PutAssetPropertyValueEntryProperty
mkPutAssetPropertyValueEntryProperty propertyValues
  = PutAssetPropertyValueEntryProperty
      {propertyValues = propertyValues, assetId = Prelude.Nothing,
       entryId = Prelude.Nothing, propertyAlias = Prelude.Nothing,
       propertyId = Prelude.Nothing}
instance ToResourceProperties PutAssetPropertyValueEntryProperty where
  toResourceProperties PutAssetPropertyValueEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.PutAssetPropertyValueEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PropertyValues" JSON..= propertyValues]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetId" Prelude.<$> assetId,
                               (JSON..=) "EntryId" Prelude.<$> entryId,
                               (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
                               (JSON..=) "PropertyId" Prelude.<$> propertyId]))}
instance JSON.ToJSON PutAssetPropertyValueEntryProperty where
  toJSON PutAssetPropertyValueEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PropertyValues" JSON..= propertyValues]
              (Prelude.catMaybes
                 [(JSON..=) "AssetId" Prelude.<$> assetId,
                  (JSON..=) "EntryId" Prelude.<$> entryId,
                  (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
                  (JSON..=) "PropertyId" Prelude.<$> propertyId])))
instance Property "AssetId" PutAssetPropertyValueEntryProperty where
  type PropertyType "AssetId" PutAssetPropertyValueEntryProperty = Value Prelude.Text
  set newValue PutAssetPropertyValueEntryProperty {..}
    = PutAssetPropertyValueEntryProperty
        {assetId = Prelude.pure newValue, ..}
instance Property "EntryId" PutAssetPropertyValueEntryProperty where
  type PropertyType "EntryId" PutAssetPropertyValueEntryProperty = Value Prelude.Text
  set newValue PutAssetPropertyValueEntryProperty {..}
    = PutAssetPropertyValueEntryProperty
        {entryId = Prelude.pure newValue, ..}
instance Property "PropertyAlias" PutAssetPropertyValueEntryProperty where
  type PropertyType "PropertyAlias" PutAssetPropertyValueEntryProperty = Value Prelude.Text
  set newValue PutAssetPropertyValueEntryProperty {..}
    = PutAssetPropertyValueEntryProperty
        {propertyAlias = Prelude.pure newValue, ..}
instance Property "PropertyId" PutAssetPropertyValueEntryProperty where
  type PropertyType "PropertyId" PutAssetPropertyValueEntryProperty = Value Prelude.Text
  set newValue PutAssetPropertyValueEntryProperty {..}
    = PutAssetPropertyValueEntryProperty
        {propertyId = Prelude.pure newValue, ..}
instance Property "PropertyValues" PutAssetPropertyValueEntryProperty where
  type PropertyType "PropertyValues" PutAssetPropertyValueEntryProperty = [AssetPropertyValueProperty]
  set newValue PutAssetPropertyValueEntryProperty {..}
    = PutAssetPropertyValueEntryProperty
        {propertyValues = newValue, ..}