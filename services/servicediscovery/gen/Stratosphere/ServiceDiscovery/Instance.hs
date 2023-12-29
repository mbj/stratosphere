module Stratosphere.ServiceDiscovery.Instance (
        Instance(..), mkInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Instance
  = Instance {instanceAttributes :: JSON.Object,
              instanceId :: (Prelude.Maybe (Value Prelude.Text)),
              serviceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstance :: JSON.Object -> Value Prelude.Text -> Instance
mkInstance instanceAttributes serviceId
  = Instance
      {instanceAttributes = instanceAttributes, serviceId = serviceId,
       instanceId = Prelude.Nothing}
instance ToResourceProperties Instance where
  toResourceProperties Instance {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Instance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceAttributes" JSON..= instanceAttributes,
                            "ServiceId" JSON..= serviceId]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceId" Prelude.<$> instanceId]))}
instance JSON.ToJSON Instance where
  toJSON Instance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceAttributes" JSON..= instanceAttributes,
               "ServiceId" JSON..= serviceId]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceId" Prelude.<$> instanceId])))
instance Property "InstanceAttributes" Instance where
  type PropertyType "InstanceAttributes" Instance = JSON.Object
  set newValue Instance {..}
    = Instance {instanceAttributes = newValue, ..}
instance Property "InstanceId" Instance where
  type PropertyType "InstanceId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {instanceId = Prelude.pure newValue, ..}
instance Property "ServiceId" Instance where
  type PropertyType "ServiceId" Instance = Value Prelude.Text
  set newValue Instance {..} = Instance {serviceId = newValue, ..}