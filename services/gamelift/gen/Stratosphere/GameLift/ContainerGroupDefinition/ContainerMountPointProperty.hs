module Stratosphere.GameLift.ContainerGroupDefinition.ContainerMountPointProperty (
        ContainerMountPointProperty(..), mkContainerMountPointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerMountPointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containermountpoint.html>
    ContainerMountPointProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containermountpoint.html#cfn-gamelift-containergroupdefinition-containermountpoint-accesslevel>
                                 accessLevel :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containermountpoint.html#cfn-gamelift-containergroupdefinition-containermountpoint-containerpath>
                                 containerPath :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containermountpoint.html#cfn-gamelift-containergroupdefinition-containermountpoint-instancepath>
                                 instancePath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerMountPointProperty ::
  Value Prelude.Text -> ContainerMountPointProperty
mkContainerMountPointProperty instancePath
  = ContainerMountPointProperty
      {haddock_workaround_ = (), instancePath = instancePath,
       accessLevel = Prelude.Nothing, containerPath = Prelude.Nothing}
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