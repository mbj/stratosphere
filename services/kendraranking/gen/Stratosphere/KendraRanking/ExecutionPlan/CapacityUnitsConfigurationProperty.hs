module Stratosphere.KendraRanking.ExecutionPlan.CapacityUnitsConfigurationProperty (
        CapacityUnitsConfigurationProperty(..),
        mkCapacityUnitsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityUnitsConfigurationProperty
  = CapacityUnitsConfigurationProperty {rescoreCapacityUnits :: (Value Prelude.Integer)}
mkCapacityUnitsConfigurationProperty ::
  Value Prelude.Integer -> CapacityUnitsConfigurationProperty
mkCapacityUnitsConfigurationProperty rescoreCapacityUnits
  = CapacityUnitsConfigurationProperty
      {rescoreCapacityUnits = rescoreCapacityUnits}
instance ToResourceProperties CapacityUnitsConfigurationProperty where
  toResourceProperties CapacityUnitsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KendraRanking::ExecutionPlan.CapacityUnitsConfiguration",
         properties = ["RescoreCapacityUnits" JSON..= rescoreCapacityUnits]}
instance JSON.ToJSON CapacityUnitsConfigurationProperty where
  toJSON CapacityUnitsConfigurationProperty {..}
    = JSON.object ["RescoreCapacityUnits" JSON..= rescoreCapacityUnits]
instance Property "RescoreCapacityUnits" CapacityUnitsConfigurationProperty where
  type PropertyType "RescoreCapacityUnits" CapacityUnitsConfigurationProperty = Value Prelude.Integer
  set newValue CapacityUnitsConfigurationProperty {}
    = CapacityUnitsConfigurationProperty
        {rescoreCapacityUnits = newValue, ..}