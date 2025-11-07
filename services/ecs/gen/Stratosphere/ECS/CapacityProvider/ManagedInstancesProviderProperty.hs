module Stratosphere.ECS.CapacityProvider.ManagedInstancesProviderProperty (
        module Exports, ManagedInstancesProviderProperty(..),
        mkManagedInstancesProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.CapacityProvider.InstanceLaunchTemplateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedInstancesProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html>
    ManagedInstancesProviderProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-infrastructurerolearn>
                                      infrastructureRoleArn :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-instancelaunchtemplate>
                                      instanceLaunchTemplate :: InstanceLaunchTemplateProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-propagatetags>
                                      propagateTags :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedInstancesProviderProperty ::
  Value Prelude.Text
  -> InstanceLaunchTemplateProperty
     -> ManagedInstancesProviderProperty
mkManagedInstancesProviderProperty
  infrastructureRoleArn
  instanceLaunchTemplate
  = ManagedInstancesProviderProperty
      {haddock_workaround_ = (),
       infrastructureRoleArn = infrastructureRoleArn,
       instanceLaunchTemplate = instanceLaunchTemplate,
       propagateTags = Prelude.Nothing}
instance ToResourceProperties ManagedInstancesProviderProperty where
  toResourceProperties ManagedInstancesProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.ManagedInstancesProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InfrastructureRoleArn" JSON..= infrastructureRoleArn,
                            "InstanceLaunchTemplate" JSON..= instanceLaunchTemplate]
                           (Prelude.catMaybes
                              [(JSON..=) "PropagateTags" Prelude.<$> propagateTags]))}
instance JSON.ToJSON ManagedInstancesProviderProperty where
  toJSON ManagedInstancesProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InfrastructureRoleArn" JSON..= infrastructureRoleArn,
               "InstanceLaunchTemplate" JSON..= instanceLaunchTemplate]
              (Prelude.catMaybes
                 [(JSON..=) "PropagateTags" Prelude.<$> propagateTags])))
instance Property "InfrastructureRoleArn" ManagedInstancesProviderProperty where
  type PropertyType "InfrastructureRoleArn" ManagedInstancesProviderProperty = Value Prelude.Text
  set newValue ManagedInstancesProviderProperty {..}
    = ManagedInstancesProviderProperty
        {infrastructureRoleArn = newValue, ..}
instance Property "InstanceLaunchTemplate" ManagedInstancesProviderProperty where
  type PropertyType "InstanceLaunchTemplate" ManagedInstancesProviderProperty = InstanceLaunchTemplateProperty
  set newValue ManagedInstancesProviderProperty {..}
    = ManagedInstancesProviderProperty
        {instanceLaunchTemplate = newValue, ..}
instance Property "PropagateTags" ManagedInstancesProviderProperty where
  type PropertyType "PropagateTags" ManagedInstancesProviderProperty = Value Prelude.Text
  set newValue ManagedInstancesProviderProperty {..}
    = ManagedInstancesProviderProperty
        {propagateTags = Prelude.pure newValue, ..}