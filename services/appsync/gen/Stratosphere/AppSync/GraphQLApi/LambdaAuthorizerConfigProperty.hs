module Stratosphere.AppSync.GraphQLApi.LambdaAuthorizerConfigProperty (
        LambdaAuthorizerConfigProperty(..),
        mkLambdaAuthorizerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaAuthorizerConfigProperty
  = LambdaAuthorizerConfigProperty {authorizerResultTtlInSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                                    authorizerUri :: (Prelude.Maybe (Value Prelude.Text)),
                                    identityValidationExpression :: (Prelude.Maybe (Value Prelude.Text))}
mkLambdaAuthorizerConfigProperty :: LambdaAuthorizerConfigProperty
mkLambdaAuthorizerConfigProperty
  = LambdaAuthorizerConfigProperty
      {authorizerResultTtlInSeconds = Prelude.Nothing,
       authorizerUri = Prelude.Nothing,
       identityValidationExpression = Prelude.Nothing}
instance ToResourceProperties LambdaAuthorizerConfigProperty where
  toResourceProperties LambdaAuthorizerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.LambdaAuthorizerConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizerResultTtlInSeconds"
                              Prelude.<$> authorizerResultTtlInSeconds,
                            (JSON..=) "AuthorizerUri" Prelude.<$> authorizerUri,
                            (JSON..=) "IdentityValidationExpression"
                              Prelude.<$> identityValidationExpression])}
instance JSON.ToJSON LambdaAuthorizerConfigProperty where
  toJSON LambdaAuthorizerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizerResultTtlInSeconds"
                 Prelude.<$> authorizerResultTtlInSeconds,
               (JSON..=) "AuthorizerUri" Prelude.<$> authorizerUri,
               (JSON..=) "IdentityValidationExpression"
                 Prelude.<$> identityValidationExpression]))
instance Property "AuthorizerResultTtlInSeconds" LambdaAuthorizerConfigProperty where
  type PropertyType "AuthorizerResultTtlInSeconds" LambdaAuthorizerConfigProperty = Value Prelude.Double
  set newValue LambdaAuthorizerConfigProperty {..}
    = LambdaAuthorizerConfigProperty
        {authorizerResultTtlInSeconds = Prelude.pure newValue, ..}
instance Property "AuthorizerUri" LambdaAuthorizerConfigProperty where
  type PropertyType "AuthorizerUri" LambdaAuthorizerConfigProperty = Value Prelude.Text
  set newValue LambdaAuthorizerConfigProperty {..}
    = LambdaAuthorizerConfigProperty
        {authorizerUri = Prelude.pure newValue, ..}
instance Property "IdentityValidationExpression" LambdaAuthorizerConfigProperty where
  type PropertyType "IdentityValidationExpression" LambdaAuthorizerConfigProperty = Value Prelude.Text
  set newValue LambdaAuthorizerConfigProperty {..}
    = LambdaAuthorizerConfigProperty
        {identityValidationExpression = Prelude.pure newValue, ..}