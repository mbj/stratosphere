module Stratosphere.WorkspacesInstances.WorkspaceInstance.EC2ManagedInstanceProperty (
        EC2ManagedInstanceProperty(..), mkEC2ManagedInstanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EC2ManagedInstanceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ec2managedinstance.html>
    EC2ManagedInstanceProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ec2managedinstance.html#cfn-workspacesinstances-workspaceinstance-ec2managedinstance-instanceid>
                                instanceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEC2ManagedInstanceProperty :: EC2ManagedInstanceProperty
mkEC2ManagedInstanceProperty
  = EC2ManagedInstanceProperty
      {haddock_workaround_ = (), instanceId = Prelude.Nothing}
instance ToResourceProperties EC2ManagedInstanceProperty where
  toResourceProperties EC2ManagedInstanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.EC2ManagedInstance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceId" Prelude.<$> instanceId])}
instance JSON.ToJSON EC2ManagedInstanceProperty where
  toJSON EC2ManagedInstanceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceId" Prelude.<$> instanceId]))
instance Property "InstanceId" EC2ManagedInstanceProperty where
  type PropertyType "InstanceId" EC2ManagedInstanceProperty = Value Prelude.Text
  set newValue EC2ManagedInstanceProperty {..}
    = EC2ManagedInstanceProperty
        {instanceId = Prelude.pure newValue, ..}