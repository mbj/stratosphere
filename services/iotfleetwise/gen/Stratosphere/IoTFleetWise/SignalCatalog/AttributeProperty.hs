module Stratosphere.IoTFleetWise.SignalCatalog.AttributeProperty (
        AttributeProperty(..), mkAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeProperty
  = AttributeProperty {allowedValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                       assignedValue :: (Prelude.Maybe (Value Prelude.Text)),
                       dataType :: (Value Prelude.Text),
                       defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       fullyQualifiedName :: (Value Prelude.Text),
                       max :: (Prelude.Maybe (Value Prelude.Double)),
                       min :: (Prelude.Maybe (Value Prelude.Double)),
                       unit :: (Prelude.Maybe (Value Prelude.Text))}
mkAttributeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AttributeProperty
mkAttributeProperty dataType fullyQualifiedName
  = AttributeProperty
      {dataType = dataType, fullyQualifiedName = fullyQualifiedName,
       allowedValues = Prelude.Nothing, assignedValue = Prelude.Nothing,
       defaultValue = Prelude.Nothing, description = Prelude.Nothing,
       max = Prelude.Nothing, min = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties AttributeProperty where
  toResourceProperties AttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog.Attribute",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataType" JSON..= dataType,
                            "FullyQualifiedName" JSON..= fullyQualifiedName]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                               (JSON..=) "AssignedValue" Prelude.<$> assignedValue,
                               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Max" Prelude.<$> max, (JSON..=) "Min" Prelude.<$> min,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON AttributeProperty where
  toJSON AttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataType" JSON..= dataType,
               "FullyQualifiedName" JSON..= fullyQualifiedName]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                  (JSON..=) "AssignedValue" Prelude.<$> assignedValue,
                  (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Max" Prelude.<$> max, (JSON..=) "Min" Prelude.<$> min,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "AllowedValues" AttributeProperty where
  type PropertyType "AllowedValues" AttributeProperty = ValueList Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {allowedValues = Prelude.pure newValue, ..}
instance Property "AssignedValue" AttributeProperty where
  type PropertyType "AssignedValue" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {assignedValue = Prelude.pure newValue, ..}
instance Property "DataType" AttributeProperty where
  type PropertyType "DataType" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {dataType = newValue, ..}
instance Property "DefaultValue" AttributeProperty where
  type PropertyType "DefaultValue" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {defaultValue = Prelude.pure newValue, ..}
instance Property "Description" AttributeProperty where
  type PropertyType "Description" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {description = Prelude.pure newValue, ..}
instance Property "FullyQualifiedName" AttributeProperty where
  type PropertyType "FullyQualifiedName" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {fullyQualifiedName = newValue, ..}
instance Property "Max" AttributeProperty where
  type PropertyType "Max" AttributeProperty = Value Prelude.Double
  set newValue AttributeProperty {..}
    = AttributeProperty {max = Prelude.pure newValue, ..}
instance Property "Min" AttributeProperty where
  type PropertyType "Min" AttributeProperty = Value Prelude.Double
  set newValue AttributeProperty {..}
    = AttributeProperty {min = Prelude.pure newValue, ..}
instance Property "Unit" AttributeProperty where
  type PropertyType "Unit" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {unit = Prelude.pure newValue, ..}