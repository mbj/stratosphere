module Stratosphere.ECS.TaskDefinition.HostEntryProperty (
        HostEntryProperty(..), mkHostEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostEntryProperty
  = HostEntryProperty {hostname :: (Prelude.Maybe (Value Prelude.Text)),
                       ipAddress :: (Prelude.Maybe (Value Prelude.Text))}
mkHostEntryProperty :: HostEntryProperty
mkHostEntryProperty
  = HostEntryProperty
      {hostname = Prelude.Nothing, ipAddress = Prelude.Nothing}
instance ToResourceProperties HostEntryProperty where
  toResourceProperties HostEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.HostEntry",
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