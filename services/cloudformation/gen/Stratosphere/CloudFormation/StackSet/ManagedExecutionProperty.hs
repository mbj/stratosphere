module Stratosphere.CloudFormation.StackSet.ManagedExecutionProperty (
        ManagedExecutionProperty(..), mkManagedExecutionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedExecutionProperty
  = ManagedExecutionProperty {active :: (Prelude.Maybe (Value Prelude.Bool))}
mkManagedExecutionProperty :: ManagedExecutionProperty
mkManagedExecutionProperty
  = ManagedExecutionProperty {active = Prelude.Nothing}
instance ToResourceProperties ManagedExecutionProperty where
  toResourceProperties ManagedExecutionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.ManagedExecution",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Active" Prelude.<$> active])}
instance JSON.ToJSON ManagedExecutionProperty where
  toJSON ManagedExecutionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Active" Prelude.<$> active]))
instance Property "Active" ManagedExecutionProperty where
  type PropertyType "Active" ManagedExecutionProperty = Value Prelude.Bool
  set newValue ManagedExecutionProperty {}
    = ManagedExecutionProperty {active = Prelude.pure newValue, ..}