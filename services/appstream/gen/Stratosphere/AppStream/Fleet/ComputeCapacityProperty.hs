module Stratosphere.AppStream.Fleet.ComputeCapacityProperty (
        ComputeCapacityProperty(..), mkComputeCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeCapacityProperty
  = ComputeCapacityProperty {desiredInstances :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeCapacityProperty ::
  Value Prelude.Integer -> ComputeCapacityProperty
mkComputeCapacityProperty desiredInstances
  = ComputeCapacityProperty {desiredInstances = desiredInstances}
instance ToResourceProperties ComputeCapacityProperty where
  toResourceProperties ComputeCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Fleet.ComputeCapacity",
         supportsTags = Prelude.False,
         properties = ["DesiredInstances" JSON..= desiredInstances]}
instance JSON.ToJSON ComputeCapacityProperty where
  toJSON ComputeCapacityProperty {..}
    = JSON.object ["DesiredInstances" JSON..= desiredInstances]
instance Property "DesiredInstances" ComputeCapacityProperty where
  type PropertyType "DesiredInstances" ComputeCapacityProperty = Value Prelude.Integer
  set newValue ComputeCapacityProperty {}
    = ComputeCapacityProperty {desiredInstances = newValue, ..}