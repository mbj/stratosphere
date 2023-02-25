module Stratosphere.IoTFleetWise.SignalCatalog.ActuatorProperty (
        ActuatorProperty(..), mkActuatorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActuatorProperty
  = ActuatorProperty {allowedValues :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                      assignedValue :: (Prelude.Maybe (Value Prelude.Text)),
                      dataType :: (Value Prelude.Text),
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      fullyQualifiedName :: (Value Prelude.Text),
                      max :: (Prelude.Maybe (Value Prelude.Double)),
                      min :: (Prelude.Maybe (Value Prelude.Double)),
                      unit :: (Prelude.Maybe (Value Prelude.Text))}
mkActuatorProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ActuatorProperty
mkActuatorProperty dataType fullyQualifiedName
  = ActuatorProperty
      {dataType = dataType, fullyQualifiedName = fullyQualifiedName,
       allowedValues = Prelude.Nothing, assignedValue = Prelude.Nothing,
       description = Prelude.Nothing, max = Prelude.Nothing,
       min = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties ActuatorProperty where
  toResourceProperties ActuatorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog.Actuator",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataType" JSON..= dataType,
                            "FullyQualifiedName" JSON..= fullyQualifiedName]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                               (JSON..=) "AssignedValue" Prelude.<$> assignedValue,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Max" Prelude.<$> max, (JSON..=) "Min" Prelude.<$> min,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON ActuatorProperty where
  toJSON ActuatorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataType" JSON..= dataType,
               "FullyQualifiedName" JSON..= fullyQualifiedName]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                  (JSON..=) "AssignedValue" Prelude.<$> assignedValue,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Max" Prelude.<$> max, (JSON..=) "Min" Prelude.<$> min,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "AllowedValues" ActuatorProperty where
  type PropertyType "AllowedValues" ActuatorProperty = ValueList (Value Prelude.Text)
  set newValue ActuatorProperty {..}
    = ActuatorProperty {allowedValues = Prelude.pure newValue, ..}
instance Property "AssignedValue" ActuatorProperty where
  type PropertyType "AssignedValue" ActuatorProperty = Value Prelude.Text
  set newValue ActuatorProperty {..}
    = ActuatorProperty {assignedValue = Prelude.pure newValue, ..}
instance Property "DataType" ActuatorProperty where
  type PropertyType "DataType" ActuatorProperty = Value Prelude.Text
  set newValue ActuatorProperty {..}
    = ActuatorProperty {dataType = newValue, ..}
instance Property "Description" ActuatorProperty where
  type PropertyType "Description" ActuatorProperty = Value Prelude.Text
  set newValue ActuatorProperty {..}
    = ActuatorProperty {description = Prelude.pure newValue, ..}
instance Property "FullyQualifiedName" ActuatorProperty where
  type PropertyType "FullyQualifiedName" ActuatorProperty = Value Prelude.Text
  set newValue ActuatorProperty {..}
    = ActuatorProperty {fullyQualifiedName = newValue, ..}
instance Property "Max" ActuatorProperty where
  type PropertyType "Max" ActuatorProperty = Value Prelude.Double
  set newValue ActuatorProperty {..}
    = ActuatorProperty {max = Prelude.pure newValue, ..}
instance Property "Min" ActuatorProperty where
  type PropertyType "Min" ActuatorProperty = Value Prelude.Double
  set newValue ActuatorProperty {..}
    = ActuatorProperty {min = Prelude.pure newValue, ..}
instance Property "Unit" ActuatorProperty where
  type PropertyType "Unit" ActuatorProperty = Value Prelude.Text
  set newValue ActuatorProperty {..}
    = ActuatorProperty {unit = Prelude.pure newValue, ..}