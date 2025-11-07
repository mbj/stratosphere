module Stratosphere.ECS.CapacityProvider.InstanceLaunchTemplateProperty (
        module Exports, InstanceLaunchTemplateProperty(..),
        mkInstanceLaunchTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.CapacityProvider.InstanceRequirementsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.CapacityProvider.ManagedInstancesNetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.CapacityProvider.ManagedInstancesStorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceLaunchTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html>
    InstanceLaunchTemplateProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-ec2instanceprofilearn>
                                    ec2InstanceProfileArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-instancerequirements>
                                    instanceRequirements :: (Prelude.Maybe InstanceRequirementsRequestProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-monitoring>
                                    monitoring :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-networkconfiguration>
                                    networkConfiguration :: ManagedInstancesNetworkConfigurationProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-storageconfiguration>
                                    storageConfiguration :: (Prelude.Maybe ManagedInstancesStorageConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceLaunchTemplateProperty ::
  Value Prelude.Text
  -> ManagedInstancesNetworkConfigurationProperty
     -> InstanceLaunchTemplateProperty
mkInstanceLaunchTemplateProperty
  ec2InstanceProfileArn
  networkConfiguration
  = InstanceLaunchTemplateProperty
      {haddock_workaround_ = (),
       ec2InstanceProfileArn = ec2InstanceProfileArn,
       networkConfiguration = networkConfiguration,
       instanceRequirements = Prelude.Nothing,
       monitoring = Prelude.Nothing,
       storageConfiguration = Prelude.Nothing}
instance ToResourceProperties InstanceLaunchTemplateProperty where
  toResourceProperties InstanceLaunchTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.InstanceLaunchTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ec2InstanceProfileArn" JSON..= ec2InstanceProfileArn,
                            "NetworkConfiguration" JSON..= networkConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                               (JSON..=) "Monitoring" Prelude.<$> monitoring,
                               (JSON..=) "StorageConfiguration"
                                 Prelude.<$> storageConfiguration]))}
instance JSON.ToJSON InstanceLaunchTemplateProperty where
  toJSON InstanceLaunchTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ec2InstanceProfileArn" JSON..= ec2InstanceProfileArn,
               "NetworkConfiguration" JSON..= networkConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                  (JSON..=) "Monitoring" Prelude.<$> monitoring,
                  (JSON..=) "StorageConfiguration"
                    Prelude.<$> storageConfiguration])))
instance Property "Ec2InstanceProfileArn" InstanceLaunchTemplateProperty where
  type PropertyType "Ec2InstanceProfileArn" InstanceLaunchTemplateProperty = Value Prelude.Text
  set newValue InstanceLaunchTemplateProperty {..}
    = InstanceLaunchTemplateProperty
        {ec2InstanceProfileArn = newValue, ..}
instance Property "InstanceRequirements" InstanceLaunchTemplateProperty where
  type PropertyType "InstanceRequirements" InstanceLaunchTemplateProperty = InstanceRequirementsRequestProperty
  set newValue InstanceLaunchTemplateProperty {..}
    = InstanceLaunchTemplateProperty
        {instanceRequirements = Prelude.pure newValue, ..}
instance Property "Monitoring" InstanceLaunchTemplateProperty where
  type PropertyType "Monitoring" InstanceLaunchTemplateProperty = Value Prelude.Text
  set newValue InstanceLaunchTemplateProperty {..}
    = InstanceLaunchTemplateProperty
        {monitoring = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" InstanceLaunchTemplateProperty where
  type PropertyType "NetworkConfiguration" InstanceLaunchTemplateProperty = ManagedInstancesNetworkConfigurationProperty
  set newValue InstanceLaunchTemplateProperty {..}
    = InstanceLaunchTemplateProperty
        {networkConfiguration = newValue, ..}
instance Property "StorageConfiguration" InstanceLaunchTemplateProperty where
  type PropertyType "StorageConfiguration" InstanceLaunchTemplateProperty = ManagedInstancesStorageConfigurationProperty
  set newValue InstanceLaunchTemplateProperty {..}
    = InstanceLaunchTemplateProperty
        {storageConfiguration = Prelude.pure newValue, ..}