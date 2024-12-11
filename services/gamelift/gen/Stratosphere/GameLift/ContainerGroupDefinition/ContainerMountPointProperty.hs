module Stratosphere.GameLift.ContainerGroupDefinition.ContainerMountPointProperty (
        ContainerMountPointProperty(..), mkContainerMountPointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerMountPointProperty
  = ContainerMountPointProperty {accessLevel :: (Prelude.Maybe (Value Prelude.Text)),
                                 containerPath :: (Prelude.Maybe (Value Prelude.Text)),
                                 instancePath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerMountPointProperty ::
  Value Prelude.Text -> ContainerMountPointProperty
mkContainerMountPointProperty instancePath
  = ContainerMountPointProperty
      {instancePath = instancePath, accessLevel = Prelude.Nothing,
       containerPath = Prelude.Nothing}
instance ToResourceProperties ContainerMountPointProperty where
  toResourceProperties ContainerMountPointProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.ContainerMountPoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstancePath" JSON..= instancePath]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLevel" Prelude.<$> accessLevel,
                               (JSON..=) "ContainerPath" Prelude.<$> containerPath]))}
instance JSON.ToJSON ContainerMountPointProperty where
  toJSON ContainerMountPointProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstancePath" JSON..= instancePath]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLevel" Prelude.<$> accessLevel,
                  (JSON..=) "ContainerPath" Prelude.<$> containerPath])))
instance Property "AccessLevel" ContainerMountPointProperty where
  type PropertyType "AccessLevel" ContainerMountPointProperty = Value Prelude.Text
  set newValue ContainerMountPointProperty {..}
    = ContainerMountPointProperty
        {accessLevel = Prelude.pure newValue, ..}
instance Property "ContainerPath" ContainerMountPointProperty where
  type PropertyType "ContainerPath" ContainerMountPointProperty = Value Prelude.Text
  set newValue ContainerMountPointProperty {..}
    = ContainerMountPointProperty
        {containerPath = Prelude.pure newValue, ..}
instance Property "InstancePath" ContainerMountPointProperty where
  type PropertyType "InstancePath" ContainerMountPointProperty = Value Prelude.Text
  set newValue ContainerMountPointProperty {..}
    = ContainerMountPointProperty {instancePath = newValue, ..}