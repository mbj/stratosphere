module Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowAutomationParametersProperty (
        MaintenanceWindowAutomationParametersProperty(..),
        mkMaintenanceWindowAutomationParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowAutomationParametersProperty
  = MaintenanceWindowAutomationParametersProperty {documentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                                   parameters :: (Prelude.Maybe JSON.Object)}
mkMaintenanceWindowAutomationParametersProperty ::
  MaintenanceWindowAutomationParametersProperty
mkMaintenanceWindowAutomationParametersProperty
  = MaintenanceWindowAutomationParametersProperty
      {documentVersion = Prelude.Nothing, parameters = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowAutomationParametersProperty where
  toResourceProperties
    MaintenanceWindowAutomationParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.MaintenanceWindowAutomationParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
                            (JSON..=) "Parameters" Prelude.<$> parameters])}
instance JSON.ToJSON MaintenanceWindowAutomationParametersProperty where
  toJSON MaintenanceWindowAutomationParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
               (JSON..=) "Parameters" Prelude.<$> parameters]))
instance Property "DocumentVersion" MaintenanceWindowAutomationParametersProperty where
  type PropertyType "DocumentVersion" MaintenanceWindowAutomationParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowAutomationParametersProperty {..}
    = MaintenanceWindowAutomationParametersProperty
        {documentVersion = Prelude.pure newValue, ..}
instance Property "Parameters" MaintenanceWindowAutomationParametersProperty where
  type PropertyType "Parameters" MaintenanceWindowAutomationParametersProperty = JSON.Object
  set newValue MaintenanceWindowAutomationParametersProperty {..}
    = MaintenanceWindowAutomationParametersProperty
        {parameters = Prelude.pure newValue, ..}