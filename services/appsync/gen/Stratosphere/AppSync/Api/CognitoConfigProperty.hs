module Stratosphere.AppSync.Api.CognitoConfigProperty (
        CognitoConfigProperty(..), mkCognitoConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-cognitoconfig.html>
    CognitoConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-cognitoconfig.html#cfn-appsync-api-cognitoconfig-appidclientregex>
                           appIdClientRegex :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-cognitoconfig.html#cfn-appsync-api-cognitoconfig-awsregion>
                           awsRegion :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-cognitoconfig.html#cfn-appsync-api-cognitoconfig-userpoolid>
                           userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CognitoConfigProperty
mkCognitoConfigProperty awsRegion userPoolId
  = CognitoConfigProperty
      {haddock_workaround_ = (), awsRegion = awsRegion,
       userPoolId = userPoolId, appIdClientRegex = Prelude.Nothing}
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