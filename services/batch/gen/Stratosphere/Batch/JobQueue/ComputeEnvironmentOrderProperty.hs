module Stratosphere.Batch.JobQueue.ComputeEnvironmentOrderProperty (
        ComputeEnvironmentOrderProperty(..),
        mkComputeEnvironmentOrderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeEnvironmentOrderProperty
  = ComputeEnvironmentOrderProperty {computeEnvironment :: (Value Prelude.Text),
                                     order :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeEnvironmentOrderProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ComputeEnvironmentOrderProperty
mkComputeEnvironmentOrderProperty computeEnvironment order
  = ComputeEnvironmentOrderProperty
      {computeEnvironment = computeEnvironment, order = order}
instance ToResourceProperties ComputeEnvironmentOrderProperty where
  toResourceProperties ComputeEnvironmentOrderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobQueue.ComputeEnvironmentOrder",
         supportsTags = Prelude.False,
         properties = ["ComputeEnvironment" JSON..= computeEnvironment,
                       "Order" JSON..= order]}
instance JSON.ToJSON ComputeEnvironmentOrderProperty where
  toJSON ComputeEnvironmentOrderProperty {..}
    = JSON.object
        ["ComputeEnvironment" JSON..= computeEnvironment,
         "Order" JSON..= order]
instance Property "ComputeEnvironment" ComputeEnvironmentOrderProperty where
  type PropertyType "ComputeEnvironment" ComputeEnvironmentOrderProperty = Value Prelude.Text
  set newValue ComputeEnvironmentOrderProperty {..}
    = ComputeEnvironmentOrderProperty
        {computeEnvironment = newValue, ..}
instance Property "Order" ComputeEnvironmentOrderProperty where
  type PropertyType "Order" ComputeEnvironmentOrderProperty = Value Prelude.Integer
  set newValue ComputeEnvironmentOrderProperty {..}
    = ComputeEnvironmentOrderProperty {order = newValue, ..}