module Stratosphere.ECS.CapacityProvider.ManagedInstancesStorageConfigurationProperty (
        ManagedInstancesStorageConfigurationProperty(..),
        mkManagedInstancesStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedInstancesStorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesstorageconfiguration.html>
    ManagedInstancesStorageConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesstorageconfiguration.html#cfn-ecs-capacityprovider-managedinstancesstorageconfiguration-storagesizegib>
                                                  storageSizeGiB :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedInstancesStorageConfigurationProperty ::
  Value Prelude.Integer
  -> ManagedInstancesStorageConfigurationProperty
mkManagedInstancesStorageConfigurationProperty storageSizeGiB
  = ManagedInstancesStorageConfigurationProperty
      {haddock_workaround_ = (), storageSizeGiB = storageSizeGiB}
instance ToResourceProperties ManagedInstancesStorageConfigurationProperty where
  toResourceProperties
    ManagedInstancesStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.ManagedInstancesStorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["StorageSizeGiB" JSON..= storageSizeGiB]}
instance JSON.ToJSON ManagedInstancesStorageConfigurationProperty where
  toJSON ManagedInstancesStorageConfigurationProperty {..}
    = JSON.object ["StorageSizeGiB" JSON..= storageSizeGiB]
instance Property "StorageSizeGiB" ManagedInstancesStorageConfigurationProperty where
  type PropertyType "StorageSizeGiB" ManagedInstancesStorageConfigurationProperty = Value Prelude.Integer
  set newValue ManagedInstancesStorageConfigurationProperty {..}
    = ManagedInstancesStorageConfigurationProperty
        {storageSizeGiB = newValue, ..}