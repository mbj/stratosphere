module Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceMaintenanceOptionsRequestProperty (
        InstanceMaintenanceOptionsRequestProperty(..),
        mkInstanceMaintenanceOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMaintenanceOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemaintenanceoptionsrequest.html>
    InstanceMaintenanceOptionsRequestProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemaintenanceoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemaintenanceoptionsrequest-autorecovery>
                                               autoRecovery :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMaintenanceOptionsRequestProperty ::
  InstanceMaintenanceOptionsRequestProperty
mkInstanceMaintenanceOptionsRequestProperty
  = InstanceMaintenanceOptionsRequestProperty
      {haddock_workaround_ = (), autoRecovery = Prelude.Nothing}
instance ToResourceProperties InstanceMaintenanceOptionsRequestProperty where
  toResourceProperties InstanceMaintenanceOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.InstanceMaintenanceOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoRecovery" Prelude.<$> autoRecovery])}
instance JSON.ToJSON InstanceMaintenanceOptionsRequestProperty where
  toJSON InstanceMaintenanceOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoRecovery" Prelude.<$> autoRecovery]))
instance Property "AutoRecovery" InstanceMaintenanceOptionsRequestProperty where
  type PropertyType "AutoRecovery" InstanceMaintenanceOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceMaintenanceOptionsRequestProperty {..}
    = InstanceMaintenanceOptionsRequestProperty
        {autoRecovery = Prelude.pure newValue, ..}