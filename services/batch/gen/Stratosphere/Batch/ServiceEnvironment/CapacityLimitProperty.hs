module Stratosphere.Batch.ServiceEnvironment.CapacityLimitProperty (
        CapacityLimitProperty(..), mkCapacityLimitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityLimitProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-serviceenvironment-capacitylimit.html>
    CapacityLimitProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-serviceenvironment-capacitylimit.html#cfn-batch-serviceenvironment-capacitylimit-capacityunit>
                           capacityUnit :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-serviceenvironment-capacitylimit.html#cfn-batch-serviceenvironment-capacitylimit-maxcapacity>
                           maxCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityLimitProperty :: CapacityLimitProperty
mkCapacityLimitProperty
  = CapacityLimitProperty
      {haddock_workaround_ = (), capacityUnit = Prelude.Nothing,
       maxCapacity = Prelude.Nothing}
instance ToResourceProperties CapacityLimitProperty where
  toResourceProperties CapacityLimitProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ServiceEnvironment.CapacityLimit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityUnit" Prelude.<$> capacityUnit,
                            (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity])}
instance JSON.ToJSON CapacityLimitProperty where
  toJSON CapacityLimitProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityUnit" Prelude.<$> capacityUnit,
               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity]))
instance Property "CapacityUnit" CapacityLimitProperty where
  type PropertyType "CapacityUnit" CapacityLimitProperty = Value Prelude.Text
  set newValue CapacityLimitProperty {..}
    = CapacityLimitProperty {capacityUnit = Prelude.pure newValue, ..}
instance Property "MaxCapacity" CapacityLimitProperty where
  type PropertyType "MaxCapacity" CapacityLimitProperty = Value Prelude.Integer
  set newValue CapacityLimitProperty {..}
    = CapacityLimitProperty {maxCapacity = Prelude.pure newValue, ..}