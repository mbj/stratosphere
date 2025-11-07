module Stratosphere.ECS.CapacityProvider.ManagedInstancesNetworkConfigurationProperty (
        ManagedInstancesNetworkConfigurationProperty(..),
        mkManagedInstancesNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedInstancesNetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesnetworkconfiguration.html>
    ManagedInstancesNetworkConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesnetworkconfiguration.html#cfn-ecs-capacityprovider-managedinstancesnetworkconfiguration-securitygroups>
                                                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesnetworkconfiguration.html#cfn-ecs-capacityprovider-managedinstancesnetworkconfiguration-subnets>
                                                  subnets :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedInstancesNetworkConfigurationProperty ::
  ValueList Prelude.Text
  -> ManagedInstancesNetworkConfigurationProperty
mkManagedInstancesNetworkConfigurationProperty subnets
  = ManagedInstancesNetworkConfigurationProperty
      {haddock_workaround_ = (), subnets = subnets,
       securityGroups = Prelude.Nothing}
instance ToResourceProperties ManagedInstancesNetworkConfigurationProperty where
  toResourceProperties
    ManagedInstancesNetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.ManagedInstancesNetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Subnets" JSON..= subnets]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroups" Prelude.<$> securityGroups]))}
instance JSON.ToJSON ManagedInstancesNetworkConfigurationProperty where
  toJSON ManagedInstancesNetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Subnets" JSON..= subnets]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroups" Prelude.<$> securityGroups])))
instance Property "SecurityGroups" ManagedInstancesNetworkConfigurationProperty where
  type PropertyType "SecurityGroups" ManagedInstancesNetworkConfigurationProperty = ValueList Prelude.Text
  set newValue ManagedInstancesNetworkConfigurationProperty {..}
    = ManagedInstancesNetworkConfigurationProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "Subnets" ManagedInstancesNetworkConfigurationProperty where
  type PropertyType "Subnets" ManagedInstancesNetworkConfigurationProperty = ValueList Prelude.Text
  set newValue ManagedInstancesNetworkConfigurationProperty {..}
    = ManagedInstancesNetworkConfigurationProperty
        {subnets = newValue, ..}