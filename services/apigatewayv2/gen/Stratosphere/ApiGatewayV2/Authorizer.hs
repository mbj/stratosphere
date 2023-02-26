module Stratosphere.ApiGatewayV2.Authorizer (
        module Exports, Authorizer(..), mkAuthorizer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Authorizer.JWTConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Authorizer
  = Authorizer {apiId :: (Value Prelude.Text),
                authorizerCredentialsArn :: (Prelude.Maybe (Value Prelude.Text)),
                authorizerPayloadFormatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                authorizerResultTtlInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                authorizerType :: (Value Prelude.Text),
                authorizerUri :: (Prelude.Maybe (Value Prelude.Text)),
                enableSimpleResponses :: (Prelude.Maybe (Value Prelude.Bool)),
                identitySource :: (Prelude.Maybe (ValueList Prelude.Text)),
                identityValidationExpression :: (Prelude.Maybe (Value Prelude.Text)),
                jwtConfiguration :: (Prelude.Maybe JWTConfigurationProperty),
                name :: (Value Prelude.Text)}
mkAuthorizer ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Authorizer
mkAuthorizer apiId authorizerType name
  = Authorizer
      {apiId = apiId, authorizerType = authorizerType, name = name,
       authorizerCredentialsArn = Prelude.Nothing,
       authorizerPayloadFormatVersion = Prelude.Nothing,
       authorizerResultTtlInSeconds = Prelude.Nothing,
       authorizerUri = Prelude.Nothing,
       enableSimpleResponses = Prelude.Nothing,
       identitySource = Prelude.Nothing,
       identityValidationExpression = Prelude.Nothing,
       jwtConfiguration = Prelude.Nothing}
instance ToResourceProperties Authorizer where
  toResourceProperties Authorizer {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Authorizer",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "AuthorizerType" JSON..= authorizerType,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizerCredentialsArn"
                                 Prelude.<$> authorizerCredentialsArn,
                               (JSON..=) "AuthorizerPayloadFormatVersion"
                                 Prelude.<$> authorizerPayloadFormatVersion,
                               (JSON..=) "AuthorizerResultTtlInSeconds"
                                 Prelude.<$> authorizerResultTtlInSeconds,
                               (JSON..=) "AuthorizerUri" Prelude.<$> authorizerUri,
                               (JSON..=) "EnableSimpleResponses"
                                 Prelude.<$> enableSimpleResponses,
                               (JSON..=) "IdentitySource" Prelude.<$> identitySource,
                               (JSON..=) "IdentityValidationExpression"
                                 Prelude.<$> identityValidationExpression,
                               (JSON..=) "JwtConfiguration" Prelude.<$> jwtConfiguration]))}
instance JSON.ToJSON Authorizer where
  toJSON Authorizer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "AuthorizerType" JSON..= authorizerType,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizerCredentialsArn"
                    Prelude.<$> authorizerCredentialsArn,
                  (JSON..=) "AuthorizerPayloadFormatVersion"
                    Prelude.<$> authorizerPayloadFormatVersion,
                  (JSON..=) "AuthorizerResultTtlInSeconds"
                    Prelude.<$> authorizerResultTtlInSeconds,
                  (JSON..=) "AuthorizerUri" Prelude.<$> authorizerUri,
                  (JSON..=) "EnableSimpleResponses"
                    Prelude.<$> enableSimpleResponses,
                  (JSON..=) "IdentitySource" Prelude.<$> identitySource,
                  (JSON..=) "IdentityValidationExpression"
                    Prelude.<$> identityValidationExpression,
                  (JSON..=) "JwtConfiguration" Prelude.<$> jwtConfiguration])))
instance Property "ApiId" Authorizer where
  type PropertyType "ApiId" Authorizer = Value Prelude.Text
  set newValue Authorizer {..} = Authorizer {apiId = newValue, ..}
instance Property "AuthorizerCredentialsArn" Authorizer where
  type PropertyType "AuthorizerCredentialsArn" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerCredentialsArn = Prelude.pure newValue, ..}
instance Property "AuthorizerPayloadFormatVersion" Authorizer where
  type PropertyType "AuthorizerPayloadFormatVersion" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer
        {authorizerPayloadFormatVersion = Prelude.pure newValue, ..}
instance Property "AuthorizerResultTtlInSeconds" Authorizer where
  type PropertyType "AuthorizerResultTtlInSeconds" Authorizer = Value Prelude.Integer
  set newValue Authorizer {..}
    = Authorizer
        {authorizerResultTtlInSeconds = Prelude.pure newValue, ..}
instance Property "AuthorizerType" Authorizer where
  type PropertyType "AuthorizerType" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerType = newValue, ..}
instance Property "AuthorizerUri" Authorizer where
  type PropertyType "AuthorizerUri" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {authorizerUri = Prelude.pure newValue, ..}
instance Property "EnableSimpleResponses" Authorizer where
  type PropertyType "EnableSimpleResponses" Authorizer = Value Prelude.Bool
  set newValue Authorizer {..}
    = Authorizer {enableSimpleResponses = Prelude.pure newValue, ..}
instance Property "IdentitySource" Authorizer where
  type PropertyType "IdentitySource" Authorizer = ValueList Prelude.Text
  set newValue Authorizer {..}
    = Authorizer {identitySource = Prelude.pure newValue, ..}
instance Property "IdentityValidationExpression" Authorizer where
  type PropertyType "IdentityValidationExpression" Authorizer = Value Prelude.Text
  set newValue Authorizer {..}
    = Authorizer
        {identityValidationExpression = Prelude.pure newValue, ..}
instance Property "JwtConfiguration" Authorizer where
  type PropertyType "JwtConfiguration" Authorizer = JWTConfigurationProperty
  set newValue Authorizer {..}
    = Authorizer {jwtConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Authorizer where
  type PropertyType "Name" Authorizer = Value Prelude.Text
  set newValue Authorizer {..} = Authorizer {name = newValue, ..}