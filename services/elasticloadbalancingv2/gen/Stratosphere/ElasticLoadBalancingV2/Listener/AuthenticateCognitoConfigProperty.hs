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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html>
    AuthenticateCognitoConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-authenticationrequestextraparams>
                                       authenticationRequestExtraParams :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-onunauthenticatedrequest>
                                       onUnauthenticatedRequest :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-scope>
                                       scope :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-sessioncookiename>
                                       sessionCookieName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-sessiontimeout>
                                       sessionTimeout :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpoolarn>
                                       userPoolArn :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpoolclientid>
                                       userPoolClientId :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpooldomain>
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
      {haddock_workaround_ = (), userPoolArn = userPoolArn,
       userPoolClientId = userPoolClientId,
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