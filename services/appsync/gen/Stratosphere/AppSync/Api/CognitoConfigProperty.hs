module Stratosphere.AppSync.Api.CognitoConfigProperty (
        CognitoConfigProperty(..), mkCognitoConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoConfigProperty
  = CognitoConfigProperty {appIdClientRegex :: (Prelude.Maybe (Value Prelude.Text)),
                           awsRegion :: (Value Prelude.Text),
                           userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CognitoConfigProperty
mkCognitoConfigProperty awsRegion userPoolId
  = CognitoConfigProperty
      {awsRegion = awsRegion, userPoolId = userPoolId,
       appIdClientRegex = Prelude.Nothing}
instance ToResourceProperties CognitoConfigProperty where
  toResourceProperties CognitoConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.CognitoConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsRegion" JSON..= awsRegion, "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "AppIdClientRegex" Prelude.<$> appIdClientRegex]))}
instance JSON.ToJSON CognitoConfigProperty where
  toJSON CognitoConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsRegion" JSON..= awsRegion, "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "AppIdClientRegex" Prelude.<$> appIdClientRegex])))
instance Property "AppIdClientRegex" CognitoConfigProperty where
  type PropertyType "AppIdClientRegex" CognitoConfigProperty = Value Prelude.Text
  set newValue CognitoConfigProperty {..}
    = CognitoConfigProperty
        {appIdClientRegex = Prelude.pure newValue, ..}
instance Property "AwsRegion" CognitoConfigProperty where
  type PropertyType "AwsRegion" CognitoConfigProperty = Value Prelude.Text
  set newValue CognitoConfigProperty {..}
    = CognitoConfigProperty {awsRegion = newValue, ..}
instance Property "UserPoolId" CognitoConfigProperty where
  type PropertyType "UserPoolId" CognitoConfigProperty = Value Prelude.Text
  set newValue CognitoConfigProperty {..}
    = CognitoConfigProperty {userPoolId = newValue, ..}