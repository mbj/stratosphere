module Stratosphere.IoTFleetWise.Vehicle.StateTemplateUpdateStrategyProperty (
        module Exports, StateTemplateUpdateStrategyProperty(..),
        mkStateTemplateUpdateStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Vehicle.PeriodicStateTemplateUpdateStrategyProperty as Exports
import Stratosphere.ResourceProperties
data StateTemplateUpdateStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateupdatestrategy.html>
    StateTemplateUpdateStrategyProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateupdatestrategy.html#cfn-iotfleetwise-vehicle-statetemplateupdatestrategy-onchange>
                                         onChange :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateupdatestrategy.html#cfn-iotfleetwise-vehicle-statetemplateupdatestrategy-periodic>
                                         periodic :: (Prelude.Maybe PeriodicStateTemplateUpdateStrategyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateTemplateUpdateStrategyProperty ::
  StateTemplateUpdateStrategyProperty
mkStateTemplateUpdateStrategyProperty
  = StateTemplateUpdateStrategyProperty
      {haddock_workaround_ = (), onChange = Prelude.Nothing,
       periodic = Prelude.Nothing}
instance ToResourceProperties StateTemplateUpdateStrategyProperty where
  toResourceProperties StateTemplateUpdateStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Vehicle.StateTemplateUpdateStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnChange" Prelude.<$> onChange,
                            (JSON..=) "Periodic" Prelude.<$> periodic])}
instance JSON.ToJSON StateTemplateUpdateStrategyProperty where
  toJSON StateTemplateUpdateStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnChange" Prelude.<$> onChange,
               (JSON..=) "Periodic" Prelude.<$> periodic]))
instance Property "OnChange" StateTemplateUpdateStrategyProperty where
  type PropertyType "OnChange" StateTemplateUpdateStrategyProperty = JSON.Object
  set newValue StateTemplateUpdateStrategyProperty {..}
    = StateTemplateUpdateStrategyProperty
        {onChange = Prelude.pure newValue, ..}
instance Property "Periodic" StateTemplateUpdateStrategyProperty where
  type PropertyType "Periodic" StateTemplateUpdateStrategyProperty = PeriodicStateTemplateUpdateStrategyProperty
  set newValue StateTemplateUpdateStrategyProperty {..}
    = StateTemplateUpdateStrategyProperty
        {periodic = Prelude.pure newValue, ..}