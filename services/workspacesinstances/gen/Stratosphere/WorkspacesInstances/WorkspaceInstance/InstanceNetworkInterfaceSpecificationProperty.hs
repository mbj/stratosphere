module Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceNetworkInterfaceSpecificationProperty (
        InstanceNetworkInterfaceSpecificationProperty(..),
        mkInstanceNetworkInterfaceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceNetworkInterfaceSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification.html>
    InstanceNetworkInterfaceSpecificationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification.html#cfn-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification-description>
                                                   description :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification.html#cfn-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification-deviceindex>
                                                   deviceIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification.html#cfn-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification-groups>
                                                   groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification.html#cfn-workspacesinstances-workspaceinstance-instancenetworkinterfacespecification-subnetid>
                                                   subnetId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceNetworkInterfaceSpecificationProperty ::
  InstanceNetworkInterfaceSpecificationProperty
mkInstanceNetworkInterfaceSpecificationProperty
  = InstanceNetworkInterfaceSpecificationProperty
      {haddock_workaround_ = (), description = Prelude.Nothing,
       deviceIndex = Prelude.Nothing, groups = Prelude.Nothing,
       subnetId = Prelude.Nothing}
instance ToResourceProperties InstanceNetworkInterfaceSpecificationProperty where
  toResourceProperties
    InstanceNetworkInterfaceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.InstanceNetworkInterfaceSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
                            (JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId])}
instance JSON.ToJSON InstanceNetworkInterfaceSpecificationProperty where
  toJSON InstanceNetworkInterfaceSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
               (JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "SubnetId" Prelude.<$> subnetId]))
instance Property "Description" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "Description" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {description = Prelude.pure newValue, ..}
instance Property "DeviceIndex" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "DeviceIndex" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Integer
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {deviceIndex = Prelude.pure newValue, ..}
instance Property "Groups" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "Groups" InstanceNetworkInterfaceSpecificationProperty = ValueList Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {groups = Prelude.pure newValue, ..}
instance Property "SubnetId" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "SubnetId" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {subnetId = Prelude.pure newValue, ..}