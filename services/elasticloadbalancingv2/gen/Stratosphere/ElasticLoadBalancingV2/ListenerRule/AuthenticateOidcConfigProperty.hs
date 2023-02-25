module Stratosphere.ElasticLoadBalancingV2.ListenerRule.AuthenticateOidcConfigProperty (
        AuthenticateOidcConfigProperty(..),
        mkAuthenticateOidcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticateOidcConfigProperty
  = AuthenticateOidcConfigProperty {authenticationRequestExtraParams :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                    authorizationEndpoint :: (Value Prelude.Text),
                                    clientId :: (Value Prelude.Text),
                                    clientSecret :: (Prelude.Maybe (Value Prelude.Text)),
                                    issuer :: (Value Prelude.Text),
                                    onUnauthenticatedRequest :: (Prelude.Maybe (Value Prelude.Text)),
                                    scope :: (Prelude.Maybe (Value Prelude.Text)),
                                    sessionCookieName :: (Prelude.Maybe (Value Prelude.Text)),
                                    sessionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                    tokenEndpoint :: (Value Prelude.Text),
                                    useExistingClientSecret :: (Prelude.Maybe (Value Prelude.Bool)),
                                    userInfoEndpoint :: (Value Prelude.Text)}
mkAuthenticateOidcConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> AuthenticateOidcConfigProperty
mkAuthenticateOidcConfigProperty
  authorizationEndpoint
  clientId
  issuer
  tokenEndpoint
  userInfoEndpoint
  = AuthenticateOidcConfigProperty
      {authorizationEndpoint = authorizationEndpoint,
       clientId = clientId, issuer = issuer,
       tokenEndpoint = tokenEndpoint, userInfoEndpoint = userInfoEndpoint,
       authenticationRequestExtraParams = Prelude.Nothing,
       clientSecret = Prelude.Nothing,
       onUnauthenticatedRequest = Prelude.Nothing,
       scope = Prelude.Nothing, sessionCookieName = Prelude.Nothing,
       sessionTimeout = Prelude.Nothing,
       useExistingClientSecret = Prelude.Nothing}
instance ToResourceProperties AuthenticateOidcConfigProperty where
  toResourceProperties AuthenticateOidcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.AuthenticateOidcConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizationEndpoint" JSON..= authorizationEndpoint,
                            "ClientId" JSON..= clientId, "Issuer" JSON..= issuer,
                            "TokenEndpoint" JSON..= tokenEndpoint,
                            "UserInfoEndpoint" JSON..= userInfoEndpoint]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationRequestExtraParams"
                                 Prelude.<$> authenticationRequestExtraParams,
                               (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
                               (JSON..=) "OnUnauthenticatedRequest"
                                 Prelude.<$> onUnauthenticatedRequest,
                               (JSON..=) "Scope" Prelude.<$> scope,
                               (JSON..=) "SessionCookieName" Prelude.<$> sessionCookieName,
                               (JSON..=) "SessionTimeout" Prelude.<$> sessionTimeout,
                               (JSON..=) "UseExistingClientSecret"
                                 Prelude.<$> useExistingClientSecret]))}
instance JSON.ToJSON AuthenticateOidcConfigProperty where
  toJSON AuthenticateOidcConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizationEndpoint" JSON..= authorizationEndpoint,
               "ClientId" JSON..= clientId, "Issuer" JSON..= issuer,
               "TokenEndpoint" JSON..= tokenEndpoint,
               "UserInfoEndpoint" JSON..= userInfoEndpoint]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationRequestExtraParams"
                    Prelude.<$> authenticationRequestExtraParams,
                  (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
                  (JSON..=) "OnUnauthenticatedRequest"
                    Prelude.<$> onUnauthenticatedRequest,
                  (JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "SessionCookieName" Prelude.<$> sessionCookieName,
                  (JSON..=) "SessionTimeout" Prelude.<$> sessionTimeout,
                  (JSON..=) "UseExistingClientSecret"
                    Prelude.<$> useExistingClientSecret])))
instance Property "AuthenticationRequestExtraParams" AuthenticateOidcConfigProperty where
  type PropertyType "AuthenticationRequestExtraParams" AuthenticateOidcConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {authenticationRequestExtraParams = Prelude.pure newValue, ..}
instance Property "AuthorizationEndpoint" AuthenticateOidcConfigProperty where
  type PropertyType "AuthorizationEndpoint" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {authorizationEndpoint = newValue, ..}
instance Property "ClientId" AuthenticateOidcConfigProperty where
  type PropertyType "ClientId" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty {clientId = newValue, ..}
instance Property "ClientSecret" AuthenticateOidcConfigProperty where
  type PropertyType "ClientSecret" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {clientSecret = Prelude.pure newValue, ..}
instance Property "Issuer" AuthenticateOidcConfigProperty where
  type PropertyType "Issuer" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty {issuer = newValue, ..}
instance Property "OnUnauthenticatedRequest" AuthenticateOidcConfigProperty where
  type PropertyType "OnUnauthenticatedRequest" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {onUnauthenticatedRequest = Prelude.pure newValue, ..}
instance Property "Scope" AuthenticateOidcConfigProperty where
  type PropertyType "Scope" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {scope = Prelude.pure newValue, ..}
instance Property "SessionCookieName" AuthenticateOidcConfigProperty where
  type PropertyType "SessionCookieName" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {sessionCookieName = Prelude.pure newValue, ..}
instance Property "SessionTimeout" AuthenticateOidcConfigProperty where
  type PropertyType "SessionTimeout" AuthenticateOidcConfigProperty = Value Prelude.Integer
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {sessionTimeout = Prelude.pure newValue, ..}
instance Property "TokenEndpoint" AuthenticateOidcConfigProperty where
  type PropertyType "TokenEndpoint" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty {tokenEndpoint = newValue, ..}
instance Property "UseExistingClientSecret" AuthenticateOidcConfigProperty where
  type PropertyType "UseExistingClientSecret" AuthenticateOidcConfigProperty = Value Prelude.Bool
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty
        {useExistingClientSecret = Prelude.pure newValue, ..}
instance Property "UserInfoEndpoint" AuthenticateOidcConfigProperty where
  type PropertyType "UserInfoEndpoint" AuthenticateOidcConfigProperty = Value Prelude.Text
  set newValue AuthenticateOidcConfigProperty {..}
    = AuthenticateOidcConfigProperty {userInfoEndpoint = newValue, ..}