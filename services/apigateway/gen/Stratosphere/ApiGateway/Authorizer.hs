module Stratosphere.ApiGateway.Authorizer (
        Authorizer(..), mkAuthorizer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Authorizer
  = Authorizer {authType :: (Prelude.Maybe (Value Prelude.Text)),
                authorizerCredentials :: (Prelude.Maybe (Value Prelude.Text)),
                authorizerResultTtlInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                authorizerUri :: (Prelude.Maybe (Value Prelude.Text)),
                identitySource :: (Prelude.Maybe (Value Prelude.Text)),
                identityValidationExpression :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Value Prelude.Text),
                providerARNs :: (Prelude.Maybe (ValueList Prelude.Text)),
                restApiId :: (Value Prelude.Text),
                type' :: (Value Prelude.Text)}
mkAuthorizer ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Authorizer
mkAuthorizer name restApiId type'
  = Authorizer
      {name = name, restApiId = restApiId, type' = type',
       authType = Prelude.Nothing,
       authorizerCredentials = Prelude.Nothing,
       authorizerResultTtlInSeconds = Prelude.Nothing,
       authorizerUri = Prelude.Nothing, identitySource = Prelude.Nothing,
       identityValidationExpression = Prelude.Nothing,
       providerARNs = Prelude.Nothing}
instance ToResourceProperties Authorizer where
  toResourceProperties Authorizer {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Authorizer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RestApiId" JSON..= restApiId,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AuthType" Prelude.<$> authType,
                               (JSON..=) "AuthorizerCredentials"
                                 Prelude.<$> authorizerCredentials,
                               (JSON..=) "AuthorizerResultTtlInSeconds"
                                 Prelude.<$> authorizerResultTtlInSeconds,
                               (JSON..=) "AuthorizerUri" Prelude.<$> authorizerUri,
                               (JSON..=) "IdentitySource" Prelude.<$> identitySource,
                               (JSON..=) "IdentityValidationExpression"
                                 Prelude.<$> identityValidationExpression,
                               (JSON..=) "ProviderARNs" Prelude.<$> providerARNs]))}
instance JSON.ToJSON Authorizer where
  toJSON Authorizer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RestApiId" JSON..= restApiId,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AuthType" Prelude.<$> authType,
                  (JSON..=) "AuthorizerCredentials"
                    Prelude.<$> authorizerCredentials,
                  (JSON..=) "AuthorizerResultTtlInSeconds"
                    Prelude.<$> authorizerResultTtlInSeconds,
                  (JSON..=) "AuthorizerUri" Prelude.<$> authorizerUri,
                  (JSON..=) "IdentitySource" Prelude.<$> identitySource,
                  (JSON..=) "IdentityValidationExpression"
                    Prelude.<$> identityValidationExpression,
                  (JSON..=) "ProviderARNs" Prelude.<$> providerARNs])))
instance Property "AuthType" Authorizer where
  type PropertyType "AuthType" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authType = Prelude.pure newValue, ..}
instance Property "AuthorizerCredentials" Authorizer where
  type PropertyType "AuthorizerCredentials" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerCredentials = Prelude.pure newValue, ..}
instance Property "AuthorizerResultTtlInSeconds" Authorizer where
  type PropertyType "AuthorizerResultTtlInSeconds" Authorizer = Value Prelude.Integer
  set newValue Authorizer {..}
    = Authorizer
        {authorizerResultTtlInSeconds = Prelude.pure newValue, ..}
instance Property "AuthorizerUri" Authorizer where
  type PropertyType "AuthorizerUri" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerUri = Prelude.pure newValue, ..}
instance Property "IdentitySource" Authorizer where
  type PropertyType "IdentitySource" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {identitySource = Prelude.pure newValue, ..}
instance Property "IdentityValidationExpression" Authorizer where
  type PropertyType "IdentityValidationExpression" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer
        {identityValidationExpression = Prelude.pure newValue, ..}
instance Property "Name" Authorizer where
  type PropertyType "Name" Authorizer = Value Prelude.Text
  set newValue Authorizer {..} = Authorizer {name = newValue, ..}
instance Property "ProviderARNs" Authorizer where
  type PropertyType "ProviderARNs" Authorizer = ValueList Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {providerARNs = Prelude.pure newValue, ..}
instance Property "RestApiId" Authorizer where
  type PropertyType "RestApiId" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {restApiId = newValue, ..}
instance Property "Type" Authorizer where
  type PropertyType "Type" Authorizer = Value Prelude.Text
  set newValue Authorizer {..} = Authorizer {type' = newValue, ..}