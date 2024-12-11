module Stratosphere.GameLift.ContainerFleet.LocationCapacityProperty (
        LocationCapacityProperty(..), mkLocationCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationCapacityProperty
  = LocationCapacityProperty {desiredEC2Instances :: (Value Prelude.Integer),
                              maxSize :: (Value Prelude.Integer),
                              minSize :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationCapacityProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Integer -> LocationCapacityProperty
mkLocationCapacityProperty desiredEC2Instances maxSize minSize
  = LocationCapacityProperty
      {desiredEC2Instances = desiredEC2Instances, maxSize = maxSize,
       minSize = minSize}
instance ToResourceProperties LocationCapacityProperty where
  toResourceProperties LocationCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.LocationCapacity",
         supportsTags = Prelude.False,
         properties = ["DesiredEC2Instances" JSON..= desiredEC2Instances,
                       "MaxSize" JSON..= maxSize, "MinSize" JSON..= minSize]}
instance JSON.ToJSON LocationCapacityProperty where
  toJSON LocationCapacityProperty {..}
    = JSON.object
        ["DesiredEC2Instances" JSON..= desiredEC2Instances,
         "MaxSize" JSON..= maxSize, "MinSize" JSON..= minSize]
instance Property "DesiredEC2Instances" LocationCapacityProperty where
  type PropertyType "DesiredEC2Instances" LocationCapacityProperty = Value Prelude.Integer
  set newValue LocationCapacityProperty {..}
    = LocationCapacityProperty {desiredEC2Instances = newValue, ..}
instance Property "MaxSize" LocationCapacityProperty where
  type PropertyType "MaxSize" LocationCapacityProperty = Value Prelude.Integer
  set newValue LocationCapacityProperty {..}
    = LocationCapacityProperty {maxSize = newValue, ..}
instance Property "MinSize" LocationCapacityProperty where
  type PropertyType "MinSize" LocationCapacityProperty = Value Prelude.Integer
  set newValue LocationCapacityProperty {..}
    = LocationCapacityProperty {minSize = newValue, ..}