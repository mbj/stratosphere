module Stratosphere.Lex.Bot.DialogCodeHookSettingProperty (
        DialogCodeHookSettingProperty(..), mkDialogCodeHookSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DialogCodeHookSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehooksetting.html>
    DialogCodeHookSettingProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehooksetting.html#cfn-lex-bot-dialogcodehooksetting-enabled>
                                   enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDialogCodeHookSettingProperty ::
  Value Prelude.Bool -> DialogCodeHookSettingProperty
mkDialogCodeHookSettingProperty enabled
  = DialogCodeHookSettingProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties DialogCodeHookSettingProperty where
  toResourceProperties DialogCodeHookSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DialogCodeHookSetting",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON DialogCodeHookSettingProperty where
  toJSON DialogCodeHookSettingProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" DialogCodeHookSettingProperty where
  type PropertyType "Enabled" DialogCodeHookSettingProperty = Value Prelude.Bool
  set newValue DialogCodeHookSettingProperty {..}
    = DialogCodeHookSettingProperty {enabled = newValue, ..}