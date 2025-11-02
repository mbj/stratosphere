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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-lambdaauthorizerconfig.html>
    LambdaAuthorizerConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-lambdaauthorizerconfig.html#cfn-appsync-graphqlapi-lambdaauthorizerconfig-authorizerresultttlinseconds>
                                    authorizerResultTtlInSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-lambdaauthorizerconfig.html#cfn-appsync-graphqlapi-lambdaauthorizerconfig-authorizeruri>
                                    authorizerUri :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-lambdaauthorizerconfig.html#cfn-appsync-graphqlapi-lambdaauthorizerconfig-identityvalidationexpression>
                                    identityValidationExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaAuthorizerConfigProperty :: LambdaAuthorizerConfigProperty
mkLambdaAuthorizerConfigProperty
  = LambdaAuthorizerConfigProperty
      {haddock_workaround_ = (),
       authorizerResultTtlInSeconds = Prelude.Nothing,
       authorizerUri = Prelude.Nothing,
       identityValidationExpression = Prelude.Nothing}
instance ToResourceProperties LambdaAuthorizerConfigProperty where
  toResourceProperties LambdaAuthorizerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.LambdaAuthorizerConfig",
         supportsTags = Prelude.False,
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