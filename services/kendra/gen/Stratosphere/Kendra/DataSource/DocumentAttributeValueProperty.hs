module Stratosphere.Kendra.DataSource.DocumentAttributeValueProperty (
        DocumentAttributeValueProperty(..),
        mkDocumentAttributeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeValueProperty
  = DocumentAttributeValueProperty {dateValue :: (Prelude.Maybe (Value Prelude.Text)),
                                    longValue :: (Prelude.Maybe (Value Prelude.Integer)),
                                    stringListValue :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    stringValue :: (Prelude.Maybe (Value Prelude.Text))}
mkDocumentAttributeValueProperty :: DocumentAttributeValueProperty
mkDocumentAttributeValueProperty
  = DocumentAttributeValueProperty
      {dateValue = Prelude.Nothing, longValue = Prelude.Nothing,
       stringListValue = Prelude.Nothing, stringValue = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeValueProperty where
  toResourceProperties DocumentAttributeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentAttributeValue",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateValue" Prelude.<$> dateValue,
                            (JSON..=) "LongValue" Prelude.<$> longValue,
                            (JSON..=) "StringListValue" Prelude.<$> stringListValue,
                            (JSON..=) "StringValue" Prelude.<$> stringValue])}
instance JSON.ToJSON DocumentAttributeValueProperty where
  toJSON DocumentAttributeValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateValue" Prelude.<$> dateValue,
               (JSON..=) "LongValue" Prelude.<$> longValue,
               (JSON..=) "StringListValue" Prelude.<$> stringListValue,
               (JSON..=) "StringValue" Prelude.<$> stringValue]))
instance Property "DateValue" DocumentAttributeValueProperty where
  type PropertyType "DateValue" DocumentAttributeValueProperty = Value Prelude.Text
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {dateValue = Prelude.pure newValue, ..}
instance Property "LongValue" DocumentAttributeValueProperty where
  type PropertyType "LongValue" DocumentAttributeValueProperty = Value Prelude.Integer
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {longValue = Prelude.pure newValue, ..}
instance Property "StringListValue" DocumentAttributeValueProperty where
  type PropertyType "StringListValue" DocumentAttributeValueProperty = ValueList Prelude.Text
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {stringListValue = Prelude.pure newValue, ..}
instance Property "StringValue" DocumentAttributeValueProperty where
  type PropertyType "StringValue" DocumentAttributeValueProperty = Value Prelude.Text
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {stringValue = Prelude.pure newValue, ..}