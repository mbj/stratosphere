module Stratosphere.AppSync.GraphQLApi.AdditionalAuthenticationProviderProperty (
        module Exports, AdditionalAuthenticationProviderProperty(..),
        mkAdditionalAuthenticationProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.CognitoUserPoolConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.LambdaAuthorizerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.GraphQLApi.OpenIDConnectConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalAuthenticationProviderProperty
  = AdditionalAuthenticationProviderProperty {authenticationType :: (Value Prelude.Text),
                                              lambdaAuthorizerConfig :: (Prelude.Maybe LambdaAuthorizerConfigProperty),
                                              openIDConnectConfig :: (Prelude.Maybe OpenIDConnectConfigProperty),
                                              userPoolConfig :: (Prelude.Maybe CognitoUserPoolConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdditionalAuthenticationProviderProperty ::
  Value Prelude.Text -> AdditionalAuthenticationProviderProperty
mkAdditionalAuthenticationProviderProperty authenticationType
  = AdditionalAuthenticationProviderProperty
      {authenticationType = authenticationType,
       lambdaAuthorizerConfig = Prelude.Nothing,
       openIDConnectConfig = Prelude.Nothing,
       userPoolConfig = Prelude.Nothing}
instance ToResourceProperties AdditionalAuthenticationProviderProperty where
  toResourceProperties AdditionalAuthenticationProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.AdditionalAuthenticationProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType]
                           (Prelude.catMaybes
                              [(JSON..=) "LambdaAuthorizerConfig"
                                 Prelude.<$> lambdaAuthorizerConfig,
                               (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig,
                               (JSON..=) "UserPoolConfig" Prelude.<$> userPoolConfig]))}
instance JSON.ToJSON AdditionalAuthenticationProviderProperty where
  toJSON AdditionalAuthenticationProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType]
              (Prelude.catMaybes
                 [(JSON..=) "LambdaAuthorizerConfig"
                    Prelude.<$> lambdaAuthorizerConfig,
                  (JSON..=) "OpenIDConnectConfig" Prelude.<$> openIDConnectConfig,
                  (JSON..=) "UserPoolConfig" Prelude.<$> userPoolConfig])))
instance Property "AuthenticationType" AdditionalAuthenticationProviderProperty where
  type PropertyType "AuthenticationType" AdditionalAuthenticationProviderProperty = Value Prelude.Text
  set newValue AdditionalAuthenticationProviderProperty {..}
    = AdditionalAuthenticationProviderProperty
        {authenticationType = newValue, ..}
instance Property "LambdaAuthorizerConfig" AdditionalAuthenticationProviderProperty where
  type PropertyType "LambdaAuthorizerConfig" AdditionalAuthenticationProviderProperty = LambdaAuthorizerConfigProperty
  set newValue AdditionalAuthenticationProviderProperty {..}
    = AdditionalAuthenticationProviderProperty
        {lambdaAuthorizerConfig = Prelude.pure newValue, ..}
instance Property "OpenIDConnectConfig" AdditionalAuthenticationProviderProperty where
  type PropertyType "OpenIDConnectConfig" AdditionalAuthenticationProviderProperty = OpenIDConnectConfigProperty
  set newValue AdditionalAuthenticationProviderProperty {..}
    = AdditionalAuthenticationProviderProperty
        {openIDConnectConfig = Prelude.pure newValue, ..}
instance Property "UserPoolConfig" AdditionalAuthenticationProviderProperty where
  type PropertyType "UserPoolConfig" AdditionalAuthenticationProviderProperty = CognitoUserPoolConfigProperty
  set newValue AdditionalAuthenticationProviderProperty {..}
    = AdditionalAuthenticationProviderProperty
        {userPoolConfig = Prelude.pure newValue, ..}