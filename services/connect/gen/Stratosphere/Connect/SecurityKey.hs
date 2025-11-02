module Stratosphere.Connect.SecurityKey (
        SecurityKey(..), mkSecurityKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityKey
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securitykey.html>
    SecurityKey {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securitykey.html#cfn-connect-securitykey-instanceid>
                 instanceId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securitykey.html#cfn-connect-securitykey-key>
                 key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityKey ::
  Value Prelude.Text -> Value Prelude.Text -> SecurityKey
mkSecurityKey instanceId key
  = SecurityKey
      {haddock_workaround_ = (), instanceId = instanceId, key = key}
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