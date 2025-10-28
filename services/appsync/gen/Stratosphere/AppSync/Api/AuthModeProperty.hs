module Stratosphere.AppSync.Api.AuthModeProperty (
        AuthModeProperty(..), mkAuthModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authmode.html>
    AuthModeProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authmode.html#cfn-appsync-api-authmode-authtype>
                      authType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthModeProperty :: AuthModeProperty
mkAuthModeProperty
  = AuthModeProperty
      {haddock_workaround_ = (), authType = Prelude.Nothing}
instance ToResourceProperties AuthModeProperty where
  toResourceProperties AuthModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.AuthMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AuthType" Prelude.<$> authType])}
instance JSON.ToJSON AuthModeProperty where
  toJSON AuthModeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AuthType" Prelude.<$> authType]))
instance Property "AuthType" AuthModeProperty where
  type PropertyType "AuthType" AuthModeProperty = Value Prelude.Text
  set newValue AuthModeProperty {..}
    = AuthModeProperty {authType = Prelude.pure newValue, ..}