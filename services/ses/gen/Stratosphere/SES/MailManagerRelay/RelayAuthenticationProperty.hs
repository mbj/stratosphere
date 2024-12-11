module Stratosphere.SES.MailManagerRelay.RelayAuthenticationProperty (
        RelayAuthenticationProperty(..), mkRelayAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelayAuthenticationProperty
  = RelayAuthenticationProperty {noAuthentication :: (Prelude.Maybe JSON.Object),
                                 secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelayAuthenticationProperty :: RelayAuthenticationProperty
mkRelayAuthenticationProperty
  = RelayAuthenticationProperty
      {noAuthentication = Prelude.Nothing, secretArn = Prelude.Nothing}
instance ToResourceProperties RelayAuthenticationProperty where
  toResourceProperties RelayAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRelay.RelayAuthentication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NoAuthentication" Prelude.<$> noAuthentication,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON RelayAuthenticationProperty where
  toJSON RelayAuthenticationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NoAuthentication" Prelude.<$> noAuthentication,
               (JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "NoAuthentication" RelayAuthenticationProperty where
  type PropertyType "NoAuthentication" RelayAuthenticationProperty = JSON.Object
  set newValue RelayAuthenticationProperty {..}
    = RelayAuthenticationProperty
        {noAuthentication = Prelude.pure newValue, ..}
instance Property "SecretArn" RelayAuthenticationProperty where
  type PropertyType "SecretArn" RelayAuthenticationProperty = Value Prelude.Text
  set newValue RelayAuthenticationProperty {..}
    = RelayAuthenticationProperty
        {secretArn = Prelude.pure newValue, ..}