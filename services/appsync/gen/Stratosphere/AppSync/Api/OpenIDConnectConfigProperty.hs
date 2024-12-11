module Stratosphere.AppSync.Api.OpenIDConnectConfigProperty (
        OpenIDConnectConfigProperty(..), mkOpenIDConnectConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIDConnectConfigProperty
  = OpenIDConnectConfigProperty {authTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                 clientId :: (Prelude.Maybe (Value Prelude.Text)),
                                 iatTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                 issuer :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIDConnectConfigProperty ::
  Value Prelude.Text -> OpenIDConnectConfigProperty
mkOpenIDConnectConfigProperty issuer
  = OpenIDConnectConfigProperty
      {issuer = issuer, authTTL = Prelude.Nothing,
       clientId = Prelude.Nothing, iatTTL = Prelude.Nothing}
instance ToResourceProperties OpenIDConnectConfigProperty where
  toResourceProperties OpenIDConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.OpenIDConnectConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Issuer" JSON..= issuer]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthTTL" Prelude.<$> authTTL,
                               (JSON..=) "ClientId" Prelude.<$> clientId,
                               (JSON..=) "IatTTL" Prelude.<$> iatTTL]))}
instance JSON.ToJSON OpenIDConnectConfigProperty where
  toJSON OpenIDConnectConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Issuer" JSON..= issuer]
              (Prelude.catMaybes
                 [(JSON..=) "AuthTTL" Prelude.<$> authTTL,
                  (JSON..=) "ClientId" Prelude.<$> clientId,
                  (JSON..=) "IatTTL" Prelude.<$> iatTTL])))
instance Property "AuthTTL" OpenIDConnectConfigProperty where
  type PropertyType "AuthTTL" OpenIDConnectConfigProperty = Value Prelude.Double
  set newValue OpenIDConnectConfigProperty {..}
    = OpenIDConnectConfigProperty {authTTL = Prelude.pure newValue, ..}
instance Property "ClientId" OpenIDConnectConfigProperty where
  type PropertyType "ClientId" OpenIDConnectConfigProperty = Value Prelude.Text
  set newValue OpenIDConnectConfigProperty {..}
    = OpenIDConnectConfigProperty
        {clientId = Prelude.pure newValue, ..}
instance Property "IatTTL" OpenIDConnectConfigProperty where
  type PropertyType "IatTTL" OpenIDConnectConfigProperty = Value Prelude.Double
  set newValue OpenIDConnectConfigProperty {..}
    = OpenIDConnectConfigProperty {iatTTL = Prelude.pure newValue, ..}
instance Property "Issuer" OpenIDConnectConfigProperty where
  type PropertyType "Issuer" OpenIDConnectConfigProperty = Value Prelude.Text
  set newValue OpenIDConnectConfigProperty {..}
    = OpenIDConnectConfigProperty {issuer = newValue, ..}