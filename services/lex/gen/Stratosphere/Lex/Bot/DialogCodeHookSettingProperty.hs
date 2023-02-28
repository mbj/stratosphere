module Stratosphere.Lex.Bot.DialogCodeHookSettingProperty (
        DialogCodeHookSettingProperty(..), mkDialogCodeHookSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DialogCodeHookSettingProperty
  = DialogCodeHookSettingProperty {enabled :: (Value Prelude.Bool)}
mkDialogCodeHookSettingProperty ::
  Value Prelude.Bool -> DialogCodeHookSettingProperty
mkDialogCodeHookSettingProperty enabled
  = DialogCodeHookSettingProperty {enabled = enabled}
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
  set newValue DialogCodeHookSettingProperty {}
    = DialogCodeHookSettingProperty {enabled = newValue, ..}