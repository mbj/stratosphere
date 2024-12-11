module Stratosphere.AppSync.Api.AuthProviderProperty (
        module Exports, AuthProviderProperty(..), mkAuthProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.Api.CognitoConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Api.LambdaAuthorizerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Api.OpenIDConnectConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthProviderProperty
  = AuthProviderProperty {authType :: (Value Prelude.Text),
                          cognitoConfig :: (Prelude.Maybe CognitoConfigProperty),
                          lambdaAuthorizerConfig :: (Prelude.Maybe LambdaAuthorizerConfigProperty),
                          openIDConnectConfig :: (Prelude.Maybe OpenIDConnectConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthProviderProperty ::
  Value Prelude.Text -> AuthProviderProperty
mkAuthProviderProperty authType
  = AuthProviderProperty
      {authType = authType, cognitoConfig = Prelude.Nothing,
       lambdaAuthorizerConfig = Prelude.Nothing,
       openIDConnectConfig = Prelude.Nothing}
instance ToResourceProperties AuthProviderProperty where
  toResourceProperties AuthProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.AuthProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthType" JSON..= authType]
                           (Prelude.catMaybes
                              [(JSON..=) "CognitoConfig" Prelude.<$> cognitoConfig,
                               (JSON..=) "LambdaAuthorizerConfig"
                                 Prelude.<$> lambdaAuthorizerConfig,
                               (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig]))}
instance JSON.ToJSON AuthProviderProperty where
  toJSON AuthProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthType" JSON..= authType]
              (Prelude.catMaybes
                 [(JSON..=) "CognitoConfig" Prelude.<$> cognitoConfig,
                  (JSON..=) "LambdaAuthorizerConfig"
                    Prelude.<$> lambdaAuthorizerConfig,
                  (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig])))
instance Property "AuthType" AuthProviderProperty where
  type PropertyType "AuthType" AuthProviderProperty = Value Prelude.Text
  set newValue AuthProviderProperty {..}
    = AuthProviderProperty {authType = newValue, ..}
instance Property "CognitoConfig" AuthProviderProperty where
  type PropertyType "CognitoConfig" AuthProviderProperty = CognitoConfigProperty
  set newValue AuthProviderProperty {..}
    = AuthProviderProperty {cognitoConfig = Prelude.pure newValue, ..}
instance Property "LambdaAuthorizerConfig" AuthProviderProperty where
  type PropertyType "LambdaAuthorizerConfig" AuthProviderProperty = LambdaAuthorizerConfigProperty
  set newValue AuthProviderProperty {..}
    = AuthProviderProperty
        {lambdaAuthorizerConfig = Prelude.pure newValue, ..}
instance Property "OpenIDConnectConfig" AuthProviderProperty where
  type PropertyType "OpenIDConnectConfig" AuthProviderProperty = OpenIDConnectConfigProperty
  set newValue AuthProviderProperty {..}
    = AuthProviderProperty
        {openIDConnectConfig = Prelude.pure newValue, ..}