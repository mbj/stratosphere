module Stratosphere.EC2.LaunchTemplate.MaintenanceOptionsProperty (
        MaintenanceOptionsProperty(..), mkMaintenanceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-maintenanceoptions.html>
    MaintenanceOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-maintenanceoptions.html#cfn-ec2-launchtemplate-maintenanceoptions-autorecovery>
                                autoRecovery :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceOptionsProperty :: MaintenanceOptionsProperty
mkMaintenanceOptionsProperty
  = MaintenanceOptionsProperty
      {haddock_workaround_ = (), autoRecovery = Prelude.Nothing}
instance ToResourceProperties MaintenanceOptionsProperty where
  toResourceProperties MaintenanceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.MaintenanceOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoRecovery" Prelude.<$> autoRecovery])}
instance JSON.ToJSON MaintenanceOptionsProperty where
  toJSON MaintenanceOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoRecovery" Prelude.<$> autoRecovery]))
instance Property "AutoRecovery" MaintenanceOptionsProperty where
  type PropertyType "AutoRecovery" MaintenanceOptionsProperty = Value Prelude.Text
  set newValue MaintenanceOptionsProperty {..}
    = MaintenanceOptionsProperty
        {autoRecovery = Prelude.pure newValue, ..}