module Stratosphere.WorkspacesInstances.WorkspaceInstance.RunInstancesMonitoringEnabledProperty (
        RunInstancesMonitoringEnabledProperty(..),
        mkRunInstancesMonitoringEnabledProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunInstancesMonitoringEnabledProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-runinstancesmonitoringenabled.html>
    RunInstancesMonitoringEnabledProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-runinstancesmonitoringenabled.html#cfn-workspacesinstances-workspaceinstance-runinstancesmonitoringenabled-enabled>
                                           enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunInstancesMonitoringEnabledProperty ::
  RunInstancesMonitoringEnabledProperty
mkRunInstancesMonitoringEnabledProperty
  = RunInstancesMonitoringEnabledProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties RunInstancesMonitoringEnabledProperty where
  toResourceProperties RunInstancesMonitoringEnabledProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.RunInstancesMonitoringEnabled",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON RunInstancesMonitoringEnabledProperty where
  toJSON RunInstancesMonitoringEnabledProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" RunInstancesMonitoringEnabledProperty where
  type PropertyType "Enabled" RunInstancesMonitoringEnabledProperty = Value Prelude.Bool
  set newValue RunInstancesMonitoringEnabledProperty {..}
    = RunInstancesMonitoringEnabledProperty
        {enabled = Prelude.pure newValue, ..}