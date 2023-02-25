module Stratosphere.Lex.Bot.ObfuscationSettingProperty (
        ObfuscationSettingProperty(..), mkObfuscationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObfuscationSettingProperty
  = ObfuscationSettingProperty {obfuscationSettingType :: (Value Prelude.Text)}
mkObfuscationSettingProperty ::
  Value Prelude.Text -> ObfuscationSettingProperty
mkObfuscationSettingProperty obfuscationSettingType
  = ObfuscationSettingProperty
      {obfuscationSettingType = obfuscationSettingType}
instance ToResourceProperties ObfuscationSettingProperty where
  toResourceProperties ObfuscationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ObfuscationSetting",
         properties = ["ObfuscationSettingType"
                         JSON..= obfuscationSettingType]}
instance JSON.ToJSON ObfuscationSettingProperty where
  toJSON ObfuscationSettingProperty {..}
    = JSON.object
        ["ObfuscationSettingType" JSON..= obfuscationSettingType]
instance Property "ObfuscationSettingType" ObfuscationSettingProperty where
  type PropertyType "ObfuscationSettingType" ObfuscationSettingProperty = Value Prelude.Text
  set newValue ObfuscationSettingProperty {}
    = ObfuscationSettingProperty
        {obfuscationSettingType = newValue, ..}