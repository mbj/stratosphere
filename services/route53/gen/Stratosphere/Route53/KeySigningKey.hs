module Stratosphere.Route53.KeySigningKey (
        KeySigningKey(..), mkKeySigningKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeySigningKey
  = KeySigningKey {hostedZoneId :: (Value Prelude.Text),
                   keyManagementServiceArn :: (Value Prelude.Text),
                   name :: (Value Prelude.Text),
                   status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeySigningKey ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> KeySigningKey
mkKeySigningKey hostedZoneId keyManagementServiceArn name status
  = KeySigningKey
      {hostedZoneId = hostedZoneId,
       keyManagementServiceArn = keyManagementServiceArn, name = name,
       status = status}
instance ToResourceProperties KeySigningKey where
  toResourceProperties KeySigningKey {..}
    = ResourceProperties
        {awsType = "AWS::Route53::KeySigningKey",
         supportsTags = Prelude.False,
         properties = ["HostedZoneId" JSON..= hostedZoneId,
                       "KeyManagementServiceArn" JSON..= keyManagementServiceArn,
                       "Name" JSON..= name, "Status" JSON..= status]}
instance JSON.ToJSON KeySigningKey where
  toJSON KeySigningKey {..}
    = JSON.object
        ["HostedZoneId" JSON..= hostedZoneId,
         "KeyManagementServiceArn" JSON..= keyManagementServiceArn,
         "Name" JSON..= name, "Status" JSON..= status]
instance Property "HostedZoneId" KeySigningKey where
  type PropertyType "HostedZoneId" KeySigningKey = Value Prelude.Text
  set newValue KeySigningKey {..}
    = KeySigningKey {hostedZoneId = newValue, ..}
instance Property "KeyManagementServiceArn" KeySigningKey where
  type PropertyType "KeyManagementServiceArn" KeySigningKey = Value Prelude.Text
  set newValue KeySigningKey {..}
    = KeySigningKey {keyManagementServiceArn = newValue, ..}
instance Property "Name" KeySigningKey where
  type PropertyType "Name" KeySigningKey = Value Prelude.Text
  set newValue KeySigningKey {..}
    = KeySigningKey {name = newValue, ..}
instance Property "Status" KeySigningKey where
  type PropertyType "Status" KeySigningKey = Value Prelude.Text
  set newValue KeySigningKey {..}
    = KeySigningKey {status = newValue, ..}