module Stratosphere.Lex.Bot.SlotValueRegexFilterProperty (
        SlotValueRegexFilterProperty(..), mkSlotValueRegexFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueRegexFilterProperty
  = SlotValueRegexFilterProperty {pattern :: (Value Prelude.Text)}
mkSlotValueRegexFilterProperty ::
  Value Prelude.Text -> SlotValueRegexFilterProperty
mkSlotValueRegexFilterProperty pattern
  = SlotValueRegexFilterProperty {pattern = pattern}
instance ToResourceProperties SlotValueRegexFilterProperty where
  toResourceProperties SlotValueRegexFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValueRegexFilter",
         properties = ["Pattern" JSON..= pattern]}
instance JSON.ToJSON SlotValueRegexFilterProperty where
  toJSON SlotValueRegexFilterProperty {..}
    = JSON.object ["Pattern" JSON..= pattern]
instance Property "Pattern" SlotValueRegexFilterProperty where
  type PropertyType "Pattern" SlotValueRegexFilterProperty = Value Prelude.Text
  set newValue SlotValueRegexFilterProperty {}
    = SlotValueRegexFilterProperty {pattern = newValue, ..}