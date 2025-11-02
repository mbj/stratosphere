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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html>
    MaintenanceWindowAutomationParametersProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-documentversion>
                                                   documentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-parameters>
                                                   parameters :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceWindowAutomationParametersProperty ::
  MaintenanceWindowAutomationParametersProperty
mkMaintenanceWindowAutomationParametersProperty
  = MaintenanceWindowAutomationParametersProperty
      {haddock_workaround_ = (), documentVersion = Prelude.Nothing,
       parameters = Prelude.Nothing}
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