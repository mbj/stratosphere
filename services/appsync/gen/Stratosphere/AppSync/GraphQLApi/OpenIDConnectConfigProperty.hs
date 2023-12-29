module Stratosphere.AppSync.GraphQLApi.OpenIDConnectConfigProperty (
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
                                 issuer :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIDConnectConfigProperty :: OpenIDConnectConfigProperty
mkOpenIDConnectConfigProperty
  = OpenIDConnectConfigProperty
      {authTTL = Prelude.Nothing, clientId = Prelude.Nothing,
       iatTTL = Prelude.Nothing, issuer = Prelude.Nothing}
instance ToResourceProperties OpenIDConnectConfigProperty where
  toResourceProperties OpenIDConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.OpenIDConnectConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthTTL" Prelude.<$> authTTL,
                            (JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "IatTTL" Prelude.<$> iatTTL,
                            (JSON..=) "Issuer" Prelude.<$> issuer])}
instance JSON.ToJSON OpenIDConnectConfigProperty where
  toJSON OpenIDConnectConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthTTL" Prelude.<$> authTTL,
               (JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "IatTTL" Prelude.<$> iatTTL,
               (JSON..=) "Issuer" Prelude.<$> issuer]))
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
    = OpenIDConnectConfigProperty {issuer = Prelude.pure newValue, ..}