module Stratosphere.ECS.TaskDefinition.DockerVolumeConfigurationProperty (
        DockerVolumeConfigurationProperty(..),
        mkDockerVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DockerVolumeConfigurationProperty
  = DockerVolumeConfigurationProperty {autoprovision :: (Prelude.Maybe (Value Prelude.Bool)),
                                       driver :: (Prelude.Maybe (Value Prelude.Text)),
                                       driverOpts :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       labels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       scope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDockerVolumeConfigurationProperty ::
  DockerVolumeConfigurationProperty
mkDockerVolumeConfigurationProperty
  = DockerVolumeConfigurationProperty
      {autoprovision = Prelude.Nothing, driver = Prelude.Nothing,
       driverOpts = Prelude.Nothing, labels = Prelude.Nothing,
       scope = Prelude.Nothing}
instance ToResourceProperties DockerVolumeConfigurationProperty where
  toResourceProperties DockerVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.DockerVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Autoprovision" Prelude.<$> autoprovision,
                            (JSON..=) "Driver" Prelude.<$> driver,
                            (JSON..=) "DriverOpts" Prelude.<$> driverOpts,
                            (JSON..=) "Labels" Prelude.<$> labels,
                            (JSON..=) "Scope" Prelude.<$> scope])}
instance JSON.ToJSON DockerVolumeConfigurationProperty where
  toJSON DockerVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Autoprovision" Prelude.<$> autoprovision,
               (JSON..=) "Driver" Prelude.<$> driver,
               (JSON..=) "DriverOpts" Prelude.<$> driverOpts,
               (JSON..=) "Labels" Prelude.<$> labels,
               (JSON..=) "Scope" Prelude.<$> scope]))
instance Property "Autoprovision" DockerVolumeConfigurationProperty where
  type PropertyType "Autoprovision" DockerVolumeConfigurationProperty = Value Prelude.Bool
  set newValue DockerVolumeConfigurationProperty {..}
    = DockerVolumeConfigurationProperty
        {autoprovision = Prelude.pure newValue, ..}
instance Property "Driver" DockerVolumeConfigurationProperty where
  type PropertyType "Driver" DockerVolumeConfigurationProperty = Value Prelude.Text
  set newValue DockerVolumeConfigurationProperty {..}
    = DockerVolumeConfigurationProperty
        {driver = Prelude.pure newValue, ..}
instance Property "DriverOpts" DockerVolumeConfigurationProperty where
  type PropertyType "DriverOpts" DockerVolumeConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DockerVolumeConfigurationProperty {..}
    = DockerVolumeConfigurationProperty
        {driverOpts = Prelude.pure newValue, ..}
instance Property "Labels" DockerVolumeConfigurationProperty where
  type PropertyType "Labels" DockerVolumeConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DockerVolumeConfigurationProperty {..}
    = DockerVolumeConfigurationProperty
        {labels = Prelude.pure newValue, ..}
instance Property "Scope" DockerVolumeConfigurationProperty where
  type PropertyType "Scope" DockerVolumeConfigurationProperty = Value Prelude.Text
  set newValue DockerVolumeConfigurationProperty {..}
    = DockerVolumeConfigurationProperty
        {scope = Prelude.pure newValue, ..}