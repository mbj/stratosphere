module Stratosphere.IoTFleetWise.SignalCatalog.AttributeProperty (
        AttributeProperty(..), mkAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html>
    AttributeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-allowedvalues>
                       allowedValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-assignedvalue>
                       assignedValue :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-datatype>
                       dataType :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-defaultvalue>
                       defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-fullyqualifiedname>
                       fullyQualifiedName :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-max>
                       max :: (Prelude.Maybe (Value Prelude.Double)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-min>
                       min :: (Prelude.Maybe (Value Prelude.Double)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-attribute.html#cfn-iotfleetwise-signalcatalog-attribute-unit>
                       unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.False,
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