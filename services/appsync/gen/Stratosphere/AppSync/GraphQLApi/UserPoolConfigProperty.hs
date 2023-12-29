module Stratosphere.AppSync.GraphQLApi.UserPoolConfigProperty (
        UserPoolConfigProperty(..), mkUserPoolConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolConfigProperty
  = UserPoolConfigProperty {appIdClientRegex :: (Prelude.Maybe (Value Prelude.Text)),
                            awsRegion :: (Prelude.Maybe (Value Prelude.Text)),
                            defaultAction :: (Prelude.Maybe (Value Prelude.Text)),
                            userPoolId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolConfigProperty :: UserPoolConfigProperty
mkUserPoolConfigProperty
  = UserPoolConfigProperty
      {appIdClientRegex = Prelude.Nothing, awsRegion = Prelude.Nothing,
       defaultAction = Prelude.Nothing, userPoolId = Prelude.Nothing}
instance ToResourceProperties UserPoolConfigProperty where
  toResourceProperties UserPoolConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.UserPoolConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppIdClientRegex" Prelude.<$> appIdClientRegex,
                            (JSON..=) "AwsRegion" Prelude.<$> awsRegion,
                            (JSON..=) "DefaultAction" Prelude.<$> defaultAction,
                            (JSON..=) "UserPoolId" Prelude.<$> userPoolId])}
instance JSON.ToJSON UserPoolConfigProperty where
  toJSON UserPoolConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppIdClientRegex" Prelude.<$> appIdClientRegex,
               (JSON..=) "AwsRegion" Prelude.<$> awsRegion,
               (JSON..=) "DefaultAction" Prelude.<$> defaultAction,
               (JSON..=) "UserPoolId" Prelude.<$> userPoolId]))
instance Property "AppIdClientRegex" UserPoolConfigProperty where
  type PropertyType "AppIdClientRegex" UserPoolConfigProperty = Value Prelude.Text
  set newValue UserPoolConfigProperty {..}
    = UserPoolConfigProperty
        {appIdClientRegex = Prelude.pure newValue, ..}
instance Property "AwsRegion" UserPoolConfigProperty where
  type PropertyType "AwsRegion" UserPoolConfigProperty = Value Prelude.Text
  set newValue UserPoolConfigProperty {..}
    = UserPoolConfigProperty {awsRegion = Prelude.pure newValue, ..}
instance Property "DefaultAction" UserPoolConfigProperty where
  type PropertyType "DefaultAction" UserPoolConfigProperty = Value Prelude.Text
  set newValue UserPoolConfigProperty {..}
    = UserPoolConfigProperty
        {defaultAction = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolConfigProperty where
  type PropertyType "UserPoolId" UserPoolConfigProperty = Value Prelude.Text
  set newValue UserPoolConfigProperty {..}
    = UserPoolConfigProperty {userPoolId = Prelude.pure newValue, ..}