module Stratosphere.ECS.TaskSet.ServiceRegistryProperty (
        ServiceRegistryProperty(..), mkServiceRegistryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceRegistryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html>
    ServiceRegistryProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-containername>
                             containerName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-containerport>
                             containerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-port>
                             port :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-registryarn>
                             registryArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceRegistryProperty :: ServiceRegistryProperty
mkServiceRegistryProperty
  = ServiceRegistryProperty
      {haddock_workaround_ = (), containerName = Prelude.Nothing,
       containerPort = Prelude.Nothing, port = Prelude.Nothing,
       registryArn = Prelude.Nothing}
instance ToResourceProperties ServiceRegistryProperty where
  toResourceProperties ServiceRegistryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet.ServiceRegistry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerName" Prelude.<$> containerName,
                            (JSON..=) "ContainerPort" Prelude.<$> containerPort,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "RegistryArn" Prelude.<$> registryArn])}
instance JSON.ToJSON ServiceRegistryProperty where
  toJSON ServiceRegistryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerName" Prelude.<$> containerName,
               (JSON..=) "ContainerPort" Prelude.<$> containerPort,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "RegistryArn" Prelude.<$> registryArn]))
instance Property "ContainerName" ServiceRegistryProperty where
  type PropertyType "ContainerName" ServiceRegistryProperty = Value Prelude.Text
  set newValue ServiceRegistryProperty {..}
    = ServiceRegistryProperty
        {containerName = Prelude.pure newValue, ..}
instance Property "ContainerPort" ServiceRegistryProperty where
  type PropertyType "ContainerPort" ServiceRegistryProperty = Value Prelude.Integer
  set newValue ServiceRegistryProperty {..}
    = ServiceRegistryProperty
        {containerPort = Prelude.pure newValue, ..}
instance Property "Port" ServiceRegistryProperty where
  type PropertyType "Port" ServiceRegistryProperty = Value Prelude.Integer
  set newValue ServiceRegistryProperty {..}
    = ServiceRegistryProperty {port = Prelude.pure newValue, ..}
instance Property "RegistryArn" ServiceRegistryProperty where
  type PropertyType "RegistryArn" ServiceRegistryProperty = Value Prelude.Text
  set newValue ServiceRegistryProperty {..}
    = ServiceRegistryProperty {registryArn = Prelude.pure newValue, ..}