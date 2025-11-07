module Stratosphere.Lex.Bot.ErrorLogSettingsProperty (
        ErrorLogSettingsProperty(..), mkErrorLogSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ErrorLogSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-errorlogsettings.html>
    ErrorLogSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-errorlogsettings.html#cfn-lex-bot-errorlogsettings-enabled>
                              enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkErrorLogSettingsProperty ::
  Value Prelude.Bool -> ErrorLogSettingsProperty
mkErrorLogSettingsProperty enabled
  = ErrorLogSettingsProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties ErrorLogSettingsProperty where
  toResourceProperties ErrorLogSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ErrorLogSettings",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON ErrorLogSettingsProperty where
  toJSON ErrorLogSettingsProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" ErrorLogSettingsProperty where
  type PropertyType "Enabled" ErrorLogSettingsProperty = Value Prelude.Bool
  set newValue ErrorLogSettingsProperty {..}
    = ErrorLogSettingsProperty {enabled = newValue, ..}