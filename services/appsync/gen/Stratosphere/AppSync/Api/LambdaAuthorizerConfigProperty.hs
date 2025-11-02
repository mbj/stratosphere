module Stratosphere.AppSync.Api.LambdaAuthorizerConfigProperty (
        LambdaAuthorizerConfigProperty(..),
        mkLambdaAuthorizerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaAuthorizerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-lambdaauthorizerconfig.html>
    LambdaAuthorizerConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-lambdaauthorizerconfig.html#cfn-appsync-api-lambdaauthorizerconfig-authorizerresultttlinseconds>
                                    authorizerResultTtlInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-lambdaauthorizerconfig.html#cfn-appsync-api-lambdaauthorizerconfig-authorizeruri>
                                    authorizerUri :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-lambdaauthorizerconfig.html#cfn-appsync-api-lambdaauthorizerconfig-identityvalidationexpression>
                                    identityValidationExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaAuthorizerConfigProperty ::
  Value Prelude.Text -> LambdaAuthorizerConfigProperty
mkLambdaAuthorizerConfigProperty authorizerUri
  = LambdaAuthorizerConfigProperty
      {haddock_workaround_ = (), authorizerUri = authorizerUri,
       authorizerResultTtlInSeconds = Prelude.Nothing,
       identityValidationExpression = Prelude.Nothing}
instance ToResourceProperties LambdaAuthorizerConfigProperty where
  toResourceProperties LambdaAuthorizerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.LambdaAuthorizerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizerUri" JSON..= authorizerUri]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizerResultTtlInSeconds"
                                 Prelude.<$> authorizerResultTtlInSeconds,
                               (JSON..=) "IdentityValidationExpression"
                                 Prelude.<$> identityValidationExpression]))}
instance JSON.ToJSON LambdaAuthorizerConfigProperty where
  toJSON LambdaAuthorizerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizerUri" JSON..= authorizerUri]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizerResultTtlInSeconds"
                    Prelude.<$> authorizerResultTtlInSeconds,
                  (JSON..=) "IdentityValidationExpression"
                    Prelude.<$> identityValidationExpression])))
instance Property "AuthorizerResultTtlInSeconds" LambdaAuthorizerConfigProperty where
  type PropertyType "AuthorizerResultTtlInSeconds" LambdaAuthorizerConfigProperty = Value Prelude.Integer
  set newValue LambdaAuthorizerConfigProperty {..}
    = LambdaAuthorizerConfigProperty
        {authorizerResultTtlInSeconds = Prelude.pure newValue, ..}
instance Property "AuthorizerUri" LambdaAuthorizerConfigProperty where
  type PropertyType "AuthorizerUri" LambdaAuthorizerConfigProperty = Value Prelude.Text
  set newValue LambdaAuthorizerConfigProperty {..}
    = LambdaAuthorizerConfigProperty {authorizerUri = newValue, ..}
instance Property "IdentityValidationExpression" LambdaAuthorizerConfigProperty where
  type PropertyType "IdentityValidationExpression" LambdaAuthorizerConfigProperty = Value Prelude.Text
  set newValue LambdaAuthorizerConfigProperty {..}
    = LambdaAuthorizerConfigProperty
        {identityValidationExpression = Prelude.pure newValue, ..}