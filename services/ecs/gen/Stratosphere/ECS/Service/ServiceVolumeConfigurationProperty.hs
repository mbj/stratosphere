module Stratosphere.ECS.Service.ServiceVolumeConfigurationProperty (
        module Exports, ServiceVolumeConfigurationProperty(..),
        mkServiceVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceManagedEBSVolumeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceVolumeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicevolumeconfiguration.html>
    ServiceVolumeConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicevolumeconfiguration.html#cfn-ecs-service-servicevolumeconfiguration-managedebsvolume>
                                        managedEBSVolume :: (Prelude.Maybe ServiceManagedEBSVolumeConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicevolumeconfiguration.html#cfn-ecs-service-servicevolumeconfiguration-name>
                                        name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceVolumeConfigurationProperty ::
  Value Prelude.Text -> ServiceVolumeConfigurationProperty
mkServiceVolumeConfigurationProperty name
  = ServiceVolumeConfigurationProperty
      {haddock_workaround_ = (), name = name,
       managedEBSVolume = Prelude.Nothing}
instance ToResourceProperties ServiceVolumeConfigurationProperty where
  toResourceProperties ServiceVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ManagedEBSVolume" Prelude.<$> managedEBSVolume]))}
instance JSON.ToJSON ServiceVolumeConfigurationProperty where
  toJSON ServiceVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ManagedEBSVolume" Prelude.<$> managedEBSVolume])))
instance Property "ManagedEBSVolume" ServiceVolumeConfigurationProperty where
  type PropertyType "ManagedEBSVolume" ServiceVolumeConfigurationProperty = ServiceManagedEBSVolumeConfigurationProperty
  set newValue ServiceVolumeConfigurationProperty {..}
    = ServiceVolumeConfigurationProperty
        {managedEBSVolume = Prelude.pure newValue, ..}
instance Property "Name" ServiceVolumeConfigurationProperty where
  type PropertyType "Name" ServiceVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceVolumeConfigurationProperty {..}
    = ServiceVolumeConfigurationProperty {name = newValue, ..}