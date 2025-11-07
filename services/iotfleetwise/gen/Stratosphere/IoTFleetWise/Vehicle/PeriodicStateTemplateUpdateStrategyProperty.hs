module Stratosphere.IoTFleetWise.Vehicle.PeriodicStateTemplateUpdateStrategyProperty (
        module Exports, PeriodicStateTemplateUpdateStrategyProperty(..),
        mkPeriodicStateTemplateUpdateStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Vehicle.TimePeriodProperty as Exports
import Stratosphere.ResourceProperties
data PeriodicStateTemplateUpdateStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-periodicstatetemplateupdatestrategy.html>
    PeriodicStateTemplateUpdateStrategyProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-periodicstatetemplateupdatestrategy.html#cfn-iotfleetwise-vehicle-periodicstatetemplateupdatestrategy-statetemplateupdaterate>
                                                 stateTemplateUpdateRate :: TimePeriodProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeriodicStateTemplateUpdateStrategyProperty ::
  TimePeriodProperty -> PeriodicStateTemplateUpdateStrategyProperty
mkPeriodicStateTemplateUpdateStrategyProperty
  stateTemplateUpdateRate
  = PeriodicStateTemplateUpdateStrategyProperty
      {haddock_workaround_ = (),
       stateTemplateUpdateRate = stateTemplateUpdateRate}
instance ToResourceProperties PeriodicStateTemplateUpdateStrategyProperty where
  toResourceProperties
    PeriodicStateTemplateUpdateStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Vehicle.PeriodicStateTemplateUpdateStrategy",
         supportsTags = Prelude.False,
         properties = ["StateTemplateUpdateRate"
                         JSON..= stateTemplateUpdateRate]}
instance JSON.ToJSON PeriodicStateTemplateUpdateStrategyProperty where
  toJSON PeriodicStateTemplateUpdateStrategyProperty {..}
    = JSON.object
        ["StateTemplateUpdateRate" JSON..= stateTemplateUpdateRate]
instance Property "StateTemplateUpdateRate" PeriodicStateTemplateUpdateStrategyProperty where
  type PropertyType "StateTemplateUpdateRate" PeriodicStateTemplateUpdateStrategyProperty = TimePeriodProperty
  set newValue PeriodicStateTemplateUpdateStrategyProperty {..}
    = PeriodicStateTemplateUpdateStrategyProperty
        {stateTemplateUpdateRate = newValue, ..}