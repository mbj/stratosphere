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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendraranking-executionplan-capacityunitsconfiguration.html>
    CapacityUnitsConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendraranking-executionplan-capacityunitsconfiguration.html#cfn-kendraranking-executionplan-capacityunitsconfiguration-rescorecapacityunits>
                                        rescoreCapacityUnits :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityUnitsConfigurationProperty ::
  Value Prelude.Integer -> CapacityUnitsConfigurationProperty
mkCapacityUnitsConfigurationProperty rescoreCapacityUnits
  = CapacityUnitsConfigurationProperty
      {haddock_workaround_ = (),
       rescoreCapacityUnits = rescoreCapacityUnits}
instance ToResourceProperties CapacityUnitsConfigurationProperty where
  toResourceProperties CapacityUnitsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KendraRanking::ExecutionPlan.CapacityUnitsConfiguration",
         supportsTags = Prelude.False,
         properties = ["RescoreCapacityUnits" JSON..= rescoreCapacityUnits]}
instance JSON.ToJSON CapacityUnitsConfigurationProperty where
  toJSON CapacityUnitsConfigurationProperty {..}
    = JSON.object ["RescoreCapacityUnits" JSON..= rescoreCapacityUnits]
instance Property "RescoreCapacityUnits" CapacityUnitsConfigurationProperty where
  type PropertyType "RescoreCapacityUnits" CapacityUnitsConfigurationProperty = Value Prelude.Integer
  set newValue CapacityUnitsConfigurationProperty {..}
    = CapacityUnitsConfigurationProperty
        {rescoreCapacityUnits = newValue, ..}