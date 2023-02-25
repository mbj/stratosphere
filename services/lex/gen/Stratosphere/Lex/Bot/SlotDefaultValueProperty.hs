module Stratosphere.Lex.Bot.SlotDefaultValueProperty (
        SlotDefaultValueProperty(..), mkSlotDefaultValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotDefaultValueProperty
  = SlotDefaultValueProperty {defaultValue :: (Value Prelude.Text)}
mkSlotDefaultValueProperty ::
  Value Prelude.Text -> SlotDefaultValueProperty
mkSlotDefaultValueProperty defaultValue
  = SlotDefaultValueProperty {defaultValue = defaultValue}
instance ToResourceProperties SlotDefaultValueProperty where
  toResourceProperties SlotDefaultValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotDefaultValue",
         properties = ["DefaultValue" JSON..= defaultValue]}
instance JSON.ToJSON SlotDefaultValueProperty where
  toJSON SlotDefaultValueProperty {..}
    = JSON.object ["DefaultValue" JSON..= defaultValue]
instance Property "DefaultValue" SlotDefaultValueProperty where
  type PropertyType "DefaultValue" SlotDefaultValueProperty = Value Prelude.Text
  set newValue SlotDefaultValueProperty {}
    = SlotDefaultValueProperty {defaultValue = newValue, ..}