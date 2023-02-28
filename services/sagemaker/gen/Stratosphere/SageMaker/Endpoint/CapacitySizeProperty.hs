module Stratosphere.SageMaker.Endpoint.CapacitySizeProperty (
        CapacitySizeProperty(..), mkCapacitySizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacitySizeProperty
  = CapacitySizeProperty {type' :: (Value Prelude.Text),
                          value :: (Value Prelude.Integer)}
mkCapacitySizeProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> CapacitySizeProperty
mkCapacitySizeProperty type' value
  = CapacitySizeProperty {type' = type', value = value}
instance ToResourceProperties CapacitySizeProperty where
  toResourceProperties CapacitySizeProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.CapacitySize",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON CapacitySizeProperty where
  toJSON CapacitySizeProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" CapacitySizeProperty where
  type PropertyType "Type" CapacitySizeProperty = Value Prelude.Text
  set newValue CapacitySizeProperty {..}
    = CapacitySizeProperty {type' = newValue, ..}
instance Property "Value" CapacitySizeProperty where
  type PropertyType "Value" CapacitySizeProperty = Value Prelude.Integer
  set newValue CapacitySizeProperty {..}
    = CapacitySizeProperty {value = newValue, ..}