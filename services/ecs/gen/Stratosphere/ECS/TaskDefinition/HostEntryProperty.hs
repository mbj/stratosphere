module Stratosphere.ECS.TaskDefinition.HostEntryProperty (
        HostEntryProperty(..), mkHostEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-hostentry.html>
    HostEntryProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-hostentry.html#cfn-ecs-taskdefinition-hostentry-hostname>
                       hostname :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-hostentry.html#cfn-ecs-taskdefinition-hostentry-ipaddress>
                       ipAddress :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostEntryProperty :: HostEntryProperty
mkHostEntryProperty
  = HostEntryProperty
      {haddock_workaround_ = (), hostname = Prelude.Nothing,
       ipAddress = Prelude.Nothing}
instance ToResourceProperties HostEntryProperty where
  toResourceProperties HostEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.HostEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Hostname" Prelude.<$> hostname,
                            (JSON..=) "IpAddress" Prelude.<$> ipAddress])}
instance JSON.ToJSON HostEntryProperty where
  toJSON HostEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Hostname" Prelude.<$> hostname,
               (JSON..=) "IpAddress" Prelude.<$> ipAddress]))
instance Property "Hostname" HostEntryProperty where
  type PropertyType "Hostname" HostEntryProperty = Value Prelude.Text
  set newValue HostEntryProperty {..}
    = HostEntryProperty {hostname = Prelude.pure newValue, ..}
instance Property "IpAddress" HostEntryProperty where
  type PropertyType "IpAddress" HostEntryProperty = Value Prelude.Text
  set newValue HostEntryProperty {..}
    = HostEntryProperty {ipAddress = Prelude.pure newValue, ..}