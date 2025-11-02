module Stratosphere.AppSync.GraphQLApi.CognitoUserPoolConfigProperty (
        CognitoUserPoolConfigProperty(..), mkCognitoUserPoolConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoUserPoolConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html>
    CognitoUserPoolConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-appidclientregex>
                                   appIdClientRegex :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-awsregion>
                                   awsRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-userpoolid>
                                   userPoolId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoUserPoolConfigProperty :: CognitoUserPoolConfigProperty
mkCognitoUserPoolConfigProperty
  = CognitoUserPoolConfigProperty
      {haddock_workaround_ = (), appIdClientRegex = Prelude.Nothing,
       awsRegion = Prelude.Nothing, userPoolId = Prelude.Nothing}
instance ToResourceProperties CognitoUserPoolConfigProperty where
  toResourceProperties CognitoUserPoolConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.CognitoUserPoolConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppIdClientRegex" Prelude.<$> appIdClientRegex,
                            (JSON..=) "AwsRegion" Prelude.<$> awsRegion,
                            (JSON..=) "UserPoolId" Prelude.<$> userPoolId])}
instance JSON.ToJSON CognitoUserPoolConfigProperty where
  toJSON CognitoUserPoolConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppIdClientRegex" Prelude.<$> appIdClientRegex,
               (JSON..=) "AwsRegion" Prelude.<$> awsRegion,
               (JSON..=) "UserPoolId" Prelude.<$> userPoolId]))
instance Property "AppIdClientRegex" CognitoUserPoolConfigProperty where
  type PropertyType "AppIdClientRegex" CognitoUserPoolConfigProperty = Value Prelude.Text
  set newValue CognitoUserPoolConfigProperty {..}
    = CognitoUserPoolConfigProperty
        {appIdClientRegex = Prelude.pure newValue, ..}
instance Property "AwsRegion" CognitoUserPoolConfigProperty where
  type PropertyType "AwsRegion" CognitoUserPoolConfigProperty = Value Prelude.Text
  set newValue CognitoUserPoolConfigProperty {..}
    = CognitoUserPoolConfigProperty
        {awsRegion = Prelude.pure newValue, ..}
instance Property "UserPoolId" CognitoUserPoolConfigProperty where
  type PropertyType "UserPoolId" CognitoUserPoolConfigProperty = Value Prelude.Text
  set newValue CognitoUserPoolConfigProperty {..}
    = CognitoUserPoolConfigProperty
        {userPoolId = Prelude.pure newValue, ..}