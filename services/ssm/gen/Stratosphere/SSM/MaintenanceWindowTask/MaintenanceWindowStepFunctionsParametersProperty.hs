module Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowStepFunctionsParametersProperty (
        MaintenanceWindowStepFunctionsParametersProperty(..),
        mkMaintenanceWindowStepFunctionsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowStepFunctionsParametersProperty
  = MaintenanceWindowStepFunctionsParametersProperty {input :: (Prelude.Maybe (Value Prelude.Text)),
                                                      name :: (Prelude.Maybe (Value Prelude.Text))}
mkMaintenanceWindowStepFunctionsParametersProperty ::
  MaintenanceWindowStepFunctionsParametersProperty
mkMaintenanceWindowStepFunctionsParametersProperty
  = MaintenanceWindowStepFunctionsParametersProperty
      {input = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowStepFunctionsParametersProperty where
  toResourceProperties
    MaintenanceWindowStepFunctionsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.MaintenanceWindowStepFunctionsParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Input" Prelude.<$> input,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON MaintenanceWindowStepFunctionsParametersProperty where
  toJSON MaintenanceWindowStepFunctionsParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Input" Prelude.<$> input,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Input" MaintenanceWindowStepFunctionsParametersProperty where
  type PropertyType "Input" MaintenanceWindowStepFunctionsParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowStepFunctionsParametersProperty {..}
    = MaintenanceWindowStepFunctionsParametersProperty
        {input = Prelude.pure newValue, ..}
instance Property "Name" MaintenanceWindowStepFunctionsParametersProperty where
  type PropertyType "Name" MaintenanceWindowStepFunctionsParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowStepFunctionsParametersProperty {..}
    = MaintenanceWindowStepFunctionsParametersProperty
        {name = Prelude.pure newValue, ..}