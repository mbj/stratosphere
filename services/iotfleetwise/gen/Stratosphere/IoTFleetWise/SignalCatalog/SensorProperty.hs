module Stratosphere.IoTFleetWise.SignalCatalog.SensorProperty (
        SensorProperty(..), mkSensorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SensorProperty
  = SensorProperty {allowedValues :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                    dataType :: (Value Prelude.Text),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    fullyQualifiedName :: (Value Prelude.Text),
                    max :: (Prelude.Maybe (Value Prelude.Double)),
                    min :: (Prelude.Maybe (Value Prelude.Double)),
                    unit :: (Prelude.Maybe (Value Prelude.Text))}
mkSensorProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SensorProperty
mkSensorProperty dataType fullyQualifiedName
  = SensorProperty
      {dataType = dataType, fullyQualifiedName = fullyQualifiedName,
       allowedValues = Prelude.Nothing, description = Prelude.Nothing,
       max = Prelude.Nothing, min = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties SensorProperty where
  toResourceProperties SensorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog.Sensor",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataType" JSON..= dataType,
                            "FullyQualifiedName" JSON..= fullyQualifiedName]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Max" Prelude.<$> max, (JSON..=) "Min" Prelude.<$> min,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON SensorProperty where
  toJSON SensorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataType" JSON..= dataType,
               "FullyQualifiedName" JSON..= fullyQualifiedName]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Max" Prelude.<$> max, (JSON..=) "Min" Prelude.<$> min,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "AllowedValues" SensorProperty where
  type PropertyType "AllowedValues" SensorProperty = ValueList (Value Prelude.Text)
  set newValue SensorProperty {..}
    = SensorProperty {allowedValues = Prelude.pure newValue, ..}
instance Property "DataType" SensorProperty where
  type PropertyType "DataType" SensorProperty = Value Prelude.Text
  set newValue SensorProperty {..}
    = SensorProperty {dataType = newValue, ..}
instance Property "Description" SensorProperty where
  type PropertyType "Description" SensorProperty = Value Prelude.Text
  set newValue SensorProperty {..}
    = SensorProperty {description = Prelude.pure newValue, ..}
instance Property "FullyQualifiedName" SensorProperty where
  type PropertyType "FullyQualifiedName" SensorProperty = Value Prelude.Text
  set newValue SensorProperty {..}
    = SensorProperty {fullyQualifiedName = newValue, ..}
instance Property "Max" SensorProperty where
  type PropertyType "Max" SensorProperty = Value Prelude.Double
  set newValue SensorProperty {..}
    = SensorProperty {max = Prelude.pure newValue, ..}
instance Property "Min" SensorProperty where
  type PropertyType "Min" SensorProperty = Value Prelude.Double
  set newValue SensorProperty {..}
    = SensorProperty {min = Prelude.pure newValue, ..}
instance Property "Unit" SensorProperty where
  type PropertyType "Unit" SensorProperty = Value Prelude.Text
  set newValue SensorProperty {..}
    = SensorProperty {unit = Prelude.pure newValue, ..}