module Stratosphere.IoT.TopicRule.AssetPropertyValueProperty (
        module Exports, AssetPropertyValueProperty(..),
        mkAssetPropertyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.AssetPropertyTimestampProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.AssetPropertyVariantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyValueProperty
  = AssetPropertyValueProperty {quality :: (Prelude.Maybe (Value Prelude.Text)),
                                timestamp :: AssetPropertyTimestampProperty,
                                value :: AssetPropertyVariantProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetPropertyValueProperty ::
  AssetPropertyTimestampProperty
  -> AssetPropertyVariantProperty -> AssetPropertyValueProperty
mkAssetPropertyValueProperty timestamp value
  = AssetPropertyValueProperty
      {timestamp = timestamp, value = value, quality = Prelude.Nothing}
instance ToResourceProperties AssetPropertyValueProperty where
  toResourceProperties AssetPropertyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.AssetPropertyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Timestamp" JSON..= timestamp, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Quality" Prelude.<$> quality]))}
instance JSON.ToJSON AssetPropertyValueProperty where
  toJSON AssetPropertyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Timestamp" JSON..= timestamp, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Quality" Prelude.<$> quality])))
instance Property "Quality" AssetPropertyValueProperty where
  type PropertyType "Quality" AssetPropertyValueProperty = Value Prelude.Text
  set newValue AssetPropertyValueProperty {..}
    = AssetPropertyValueProperty {quality = Prelude.pure newValue, ..}
instance Property "Timestamp" AssetPropertyValueProperty where
  type PropertyType "Timestamp" AssetPropertyValueProperty = AssetPropertyTimestampProperty
  set newValue AssetPropertyValueProperty {..}
    = AssetPropertyValueProperty {timestamp = newValue, ..}
instance Property "Value" AssetPropertyValueProperty where
  type PropertyType "Value" AssetPropertyValueProperty = AssetPropertyVariantProperty
  set newValue AssetPropertyValueProperty {..}
    = AssetPropertyValueProperty {value = newValue, ..}