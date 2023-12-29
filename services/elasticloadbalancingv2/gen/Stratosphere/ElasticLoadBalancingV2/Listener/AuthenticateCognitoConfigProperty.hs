module Stratosphere.ElasticLoadBalancingV2.Listener.AuthenticateCognitoConfigProperty (
        AuthenticateCognitoConfigProperty(..),
        mkAuthenticateCognitoConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticateCognitoConfigProperty
  = AuthenticateCognitoConfigProperty {authenticationRequestExtraParams :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       onUnauthenticatedRequest :: (Prelude.Maybe (Value Prelude.Text)),
                                       scope :: (Prelude.Maybe (Value Prelude.Text)),
                                       sessionCookieName :: (Prelude.Maybe (Value Prelude.Text)),
                                       sessionTimeout :: (Prelude.Maybe (Value Prelude.Text)),
                                       userPoolArn :: (Value Prelude.Text),
                                       userPoolClientId :: (Value Prelude.Text),
                                       userPoolDomain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticateCognitoConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> AuthenticateCognitoConfigProperty
mkAuthenticateCognitoConfigProperty
  userPoolArn
  userPoolClientId
  userPoolDomain
  = AuthenticateCognitoConfigProperty
      {userPoolArn = userPoolArn, userPoolClientId = userPoolClientId,
       userPoolDomain = userPoolDomain,
       authenticationRequestExtraParams = Prelude.Nothing,
       onUnauthenticatedRequest = Prelude.Nothing,
       scope = Prelude.Nothing, sessionCookieName = Prelude.Nothing,
       sessionTimeout = Prelude.Nothing}
instance ToResourceProperties AuthenticateCognitoConfigProperty where
  toResourceProperties AuthenticateCognitoConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener.AuthenticateCognitoConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolArn" JSON..= userPoolArn,
                            "UserPoolClientId" JSON..= userPoolClientId,
                            "UserPoolDomain" JSON..= userPoolDomain]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationRequestExtraParams"
                                 Prelude.<$> authenticationRequestExtraParams,
                               (JSON..=) "OnUnauthenticatedRequest"
                                 Prelude.<$> onUnauthenticatedRequest,
                               (JSON..=) "Scope" Prelude.<$> scope,
                               (JSON..=) "SessionCookieName" Prelude.<$> sessionCookieName,
                               (JSON..=) "SessionTimeout" Prelude.<$> sessionTimeout]))}
instance JSON.ToJSON AuthenticateCognitoConfigProperty where
  toJSON AuthenticateCognitoConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolArn" JSON..= userPoolArn,
               "UserPoolClientId" JSON..= userPoolClientId,
               "UserPoolDomain" JSON..= userPoolDomain]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationRequestExtraParams"
                    Prelude.<$> authenticationRequestExtraParams,
                  (JSON..=) "OnUnauthenticatedRequest"
                    Prelude.<$> onUnauthenticatedRequest,
                  (JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "SessionCookieName" Prelude.<$> sessionCookieName,
                  (JSON..=) "SessionTimeout" Prelude.<$> sessionTimeout])))
instance Property "AuthenticationRequestExtraParams" AuthenticateCognitoConfigProperty where
  type PropertyType "AuthenticationRequestExtraParams" AuthenticateCognitoConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty
        {authenticationRequestExtraParams = Prelude.pure newValue, ..}
instance Property "OnUnauthenticatedRequest" AuthenticateCognitoConfigProperty where
  type PropertyType "OnUnauthenticatedRequest" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty
        {onUnauthenticatedRequest = Prelude.pure newValue, ..}
instance Property "Scope" AuthenticateCognitoConfigProperty where
  type PropertyType "Scope" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty
        {scope = Prelude.pure newValue, ..}
instance Property "SessionCookieName" AuthenticateCognitoConfigProperty where
  type PropertyType "SessionCookieName" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty
        {sessionCookieName = Prelude.pure newValue, ..}
instance Property "SessionTimeout" AuthenticateCognitoConfigProperty where
  type PropertyType "SessionTimeout" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty
        {sessionTimeout = Prelude.pure newValue, ..}
instance Property "UserPoolArn" AuthenticateCognitoConfigProperty where
  type PropertyType "UserPoolArn" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty {userPoolArn = newValue, ..}
instance Property "UserPoolClientId" AuthenticateCognitoConfigProperty where
  type PropertyType "UserPoolClientId" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty
        {userPoolClientId = newValue, ..}
instance Property "UserPoolDomain" AuthenticateCognitoConfigProperty where
  type PropertyType "UserPoolDomain" AuthenticateCognitoConfigProperty = Value Prelude.Text
  set newValue AuthenticateCognitoConfigProperty {..}
    = AuthenticateCognitoConfigProperty {userPoolDomain = newValue, ..}