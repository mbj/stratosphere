module Stratosphere.AppSync.ChannelNamespace.AuthModeProperty (
        AuthModeProperty(..), mkAuthModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthModeProperty
  = AuthModeProperty {authType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthModeProperty :: AuthModeProperty
mkAuthModeProperty = AuthModeProperty {authType = Prelude.Nothing}
instance ToResourceProperties AuthModeProperty where
  toResourceProperties AuthModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ChannelNamespace.AuthMode",
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
  set newValue AuthModeProperty {}
    = AuthModeProperty {authType = Prelude.pure newValue, ..}