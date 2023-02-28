module Stratosphere.Connect.SecurityKey (
        SecurityKey(..), mkSecurityKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityKey
  = SecurityKey {instanceId :: (Value Prelude.Text),
                 key :: (Value Prelude.Text)}
mkSecurityKey ::
  Value Prelude.Text -> Value Prelude.Text -> SecurityKey
mkSecurityKey instanceId key
  = SecurityKey {instanceId = instanceId, key = key}
instance ToResourceProperties SecurityKey where
  toResourceProperties SecurityKey {..}
    = ResourceProperties
        {awsType = "AWS::Connect::SecurityKey",
         supportsTags = Prelude.False,
         properties = ["InstanceId" JSON..= instanceId, "Key" JSON..= key]}
instance JSON.ToJSON SecurityKey where
  toJSON SecurityKey {..}
    = JSON.object ["InstanceId" JSON..= instanceId, "Key" JSON..= key]
instance Property "InstanceId" SecurityKey where
  type PropertyType "InstanceId" SecurityKey = Value Prelude.Text
  set newValue SecurityKey {..}
    = SecurityKey {instanceId = newValue, ..}
instance Property "Key" SecurityKey where
  type PropertyType "Key" SecurityKey = Value Prelude.Text
  set newValue SecurityKey {..} = SecurityKey {key = newValue, ..}