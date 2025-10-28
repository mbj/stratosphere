module Stratosphere.Lex.Bot.ObfuscationSettingProperty (
        ObfuscationSettingProperty(..), mkObfuscationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObfuscationSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-obfuscationsetting.html>
    ObfuscationSettingProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-obfuscationsetting.html#cfn-lex-bot-obfuscationsetting-obfuscationsettingtype>
                                obfuscationSettingType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObfuscationSettingProperty ::
  Value Prelude.Text -> ObfuscationSettingProperty
mkObfuscationSettingProperty obfuscationSettingType
  = ObfuscationSettingProperty
      {haddock_workaround_ = (),
       obfuscationSettingType = obfuscationSettingType}
instance ToResourceProperties ObfuscationSettingProperty where
  toResourceProperties ObfuscationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ObfuscationSetting",
         supportsTags = Prelude.False,
         properties = ["ObfuscationSettingType"
                         JSON..= obfuscationSettingType]}
instance JSON.ToJSON ObfuscationSettingProperty where
  toJSON ObfuscationSettingProperty {..}
    = JSON.object
        ["ObfuscationSettingType" JSON..= obfuscationSettingType]
instance Property "ObfuscationSettingType" ObfuscationSettingProperty where
  type PropertyType "ObfuscationSettingType" ObfuscationSettingProperty = Value Prelude.Text
  set newValue ObfuscationSettingProperty {..}
    = ObfuscationSettingProperty
        {obfuscationSettingType = newValue, ..}