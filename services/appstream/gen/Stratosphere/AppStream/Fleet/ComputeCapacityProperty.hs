module Stratosphere.AppStream.Fleet.ComputeCapacityProperty (
        ComputeCapacityProperty(..), mkComputeCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeCapacityProperty
  = ComputeCapacityProperty {desiredInstances :: (Prelude.Maybe (Value Prelude.Integer)),
                             desiredSessions :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeCapacityProperty :: ComputeCapacityProperty
mkComputeCapacityProperty
  = ComputeCapacityProperty
      {desiredInstances = Prelude.Nothing,
       desiredSessions = Prelude.Nothing}
instance ToResourceProperties ComputeCapacityProperty where
  toResourceProperties ComputeCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Fleet.ComputeCapacity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DesiredInstances" Prelude.<$> desiredInstances,
                            (JSON..=) "DesiredSessions" Prelude.<$> desiredSessions])}
instance JSON.ToJSON ComputeCapacityProperty where
  toJSON ComputeCapacityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DesiredInstances" Prelude.<$> desiredInstances,
               (JSON..=) "DesiredSessions" Prelude.<$> desiredSessions]))
instance Property "DesiredInstances" ComputeCapacityProperty where
  type PropertyType "DesiredInstances" ComputeCapacityProperty = Value Prelude.Integer
  set newValue ComputeCapacityProperty {..}
    = ComputeCapacityProperty
        {desiredInstances = Prelude.pure newValue, ..}
instance Property "DesiredSessions" ComputeCapacityProperty where
  type PropertyType "DesiredSessions" ComputeCapacityProperty = Value Prelude.Integer
  set newValue ComputeCapacityProperty {..}
    = ComputeCapacityProperty
        {desiredSessions = Prelude.pure newValue, ..}