module Stratosphere.DataPipeline.Pipeline.FieldProperty (
        FieldProperty(..), mkFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldProperty
  = FieldProperty {key :: (Value Prelude.Text),
                   refValue :: (Prelude.Maybe (Value Prelude.Text)),
                   stringValue :: (Prelude.Maybe (Value Prelude.Text))}
mkFieldProperty :: Value Prelude.Text -> FieldProperty
mkFieldProperty key
  = FieldProperty
      {key = key, refValue = Prelude.Nothing,
       stringValue = Prelude.Nothing}
instance ToResourceProperties FieldProperty where
  toResourceProperties FieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.Field",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes
                              [(JSON..=) "RefValue" Prelude.<$> refValue,
                               (JSON..=) "StringValue" Prelude.<$> stringValue]))}
instance JSON.ToJSON FieldProperty where
  toJSON FieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes
                 [(JSON..=) "RefValue" Prelude.<$> refValue,
                  (JSON..=) "StringValue" Prelude.<$> stringValue])))
instance Property "Key" FieldProperty where
  type PropertyType "Key" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {key = newValue, ..}
instance Property "RefValue" FieldProperty where
  type PropertyType "RefValue" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {refValue = Prelude.pure newValue, ..}
instance Property "StringValue" FieldProperty where
  type PropertyType "StringValue" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {stringValue = Prelude.pure newValue, ..}