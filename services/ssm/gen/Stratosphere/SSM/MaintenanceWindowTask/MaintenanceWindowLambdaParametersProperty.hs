module Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowLambdaParametersProperty (
        MaintenanceWindowLambdaParametersProperty(..),
        mkMaintenanceWindowLambdaParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowLambdaParametersProperty
  = MaintenanceWindowLambdaParametersProperty {clientContext :: (Prelude.Maybe (Value Prelude.Text)),
                                               payload :: (Prelude.Maybe (Value Prelude.Text)),
                                               qualifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceWindowLambdaParametersProperty ::
  MaintenanceWindowLambdaParametersProperty
mkMaintenanceWindowLambdaParametersProperty
  = MaintenanceWindowLambdaParametersProperty
      {clientContext = Prelude.Nothing, payload = Prelude.Nothing,
       qualifier = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowLambdaParametersProperty where
  toResourceProperties MaintenanceWindowLambdaParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.MaintenanceWindowLambdaParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientContext" Prelude.<$> clientContext,
                            (JSON..=) "Payload" Prelude.<$> payload,
                            (JSON..=) "Qualifier" Prelude.<$> qualifier])}
instance JSON.ToJSON MaintenanceWindowLambdaParametersProperty where
  toJSON MaintenanceWindowLambdaParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientContext" Prelude.<$> clientContext,
               (JSON..=) "Payload" Prelude.<$> payload,
               (JSON..=) "Qualifier" Prelude.<$> qualifier]))
instance Property "ClientContext" MaintenanceWindowLambdaParametersProperty where
  type PropertyType "ClientContext" MaintenanceWindowLambdaParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowLambdaParametersProperty {..}
    = MaintenanceWindowLambdaParametersProperty
        {clientContext = Prelude.pure newValue, ..}
instance Property "Payload" MaintenanceWindowLambdaParametersProperty where
  type PropertyType "Payload" MaintenanceWindowLambdaParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowLambdaParametersProperty {..}
    = MaintenanceWindowLambdaParametersProperty
        {payload = Prelude.pure newValue, ..}
instance Property "Qualifier" MaintenanceWindowLambdaParametersProperty where
  type PropertyType "Qualifier" MaintenanceWindowLambdaParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowLambdaParametersProperty {..}
    = MaintenanceWindowLambdaParametersProperty
        {qualifier = Prelude.pure newValue, ..}