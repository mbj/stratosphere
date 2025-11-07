module Stratosphere.ECS.Service.DeploymentLifecycleHookProperty (
        DeploymentLifecycleHookProperty(..),
        mkDeploymentLifecycleHookProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentLifecycleHookProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html>
    DeploymentLifecycleHookProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-hookdetails>
                                     hookDetails :: (Prelude.Maybe JSON.Object),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-hooktargetarn>
                                     hookTargetArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-lifecyclestages>
                                     lifecycleStages :: (ValueList Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-rolearn>
                                     roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentLifecycleHookProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> DeploymentLifecycleHookProperty
mkDeploymentLifecycleHookProperty
  hookTargetArn
  lifecycleStages
  roleArn
  = DeploymentLifecycleHookProperty
      {haddock_workaround_ = (), hookTargetArn = hookTargetArn,
       lifecycleStages = lifecycleStages, roleArn = roleArn,
       hookDetails = Prelude.Nothing}
instance ToResourceProperties DeploymentLifecycleHookProperty where
  toResourceProperties DeploymentLifecycleHookProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentLifecycleHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HookTargetArn" JSON..= hookTargetArn,
                            "LifecycleStages" JSON..= lifecycleStages,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "HookDetails" Prelude.<$> hookDetails]))}
instance JSON.ToJSON DeploymentLifecycleHookProperty where
  toJSON DeploymentLifecycleHookProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HookTargetArn" JSON..= hookTargetArn,
               "LifecycleStages" JSON..= lifecycleStages,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "HookDetails" Prelude.<$> hookDetails])))
instance Property "HookDetails" DeploymentLifecycleHookProperty where
  type PropertyType "HookDetails" DeploymentLifecycleHookProperty = JSON.Object
  set newValue DeploymentLifecycleHookProperty {..}
    = DeploymentLifecycleHookProperty
        {hookDetails = Prelude.pure newValue, ..}
instance Property "HookTargetArn" DeploymentLifecycleHookProperty where
  type PropertyType "HookTargetArn" DeploymentLifecycleHookProperty = Value Prelude.Text
  set newValue DeploymentLifecycleHookProperty {..}
    = DeploymentLifecycleHookProperty {hookTargetArn = newValue, ..}
instance Property "LifecycleStages" DeploymentLifecycleHookProperty where
  type PropertyType "LifecycleStages" DeploymentLifecycleHookProperty = ValueList Prelude.Text
  set newValue DeploymentLifecycleHookProperty {..}
    = DeploymentLifecycleHookProperty {lifecycleStages = newValue, ..}
instance Property "RoleArn" DeploymentLifecycleHookProperty where
  type PropertyType "RoleArn" DeploymentLifecycleHookProperty = Value Prelude.Text
  set newValue DeploymentLifecycleHookProperty {..}
    = DeploymentLifecycleHookProperty {roleArn = newValue, ..}