module Stratosphere.Lex.Bot.SlotValueRegexFilterProperty (
        SlotValueRegexFilterProperty(..), mkSlotValueRegexFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueRegexFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueregexfilter.html>
    SlotValueRegexFilterProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueregexfilter.html#cfn-lex-bot-slotvalueregexfilter-pattern>
                                  pattern :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotValueRegexFilterProperty ::
  Value Prelude.Text -> SlotValueRegexFilterProperty
mkSlotValueRegexFilterProperty pattern
  = SlotValueRegexFilterProperty
      {haddock_workaround_ = (), pattern = pattern}
instance ToResourceProperties SlotValueRegexFilterProperty where
  toResourceProperties SlotValueRegexFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValueRegexFilter",
         supportsTags = Prelude.False,
         properties = ["Pattern" JSON..= pattern]}
instance JSON.ToJSON SlotValueRegexFilterProperty where
  toJSON SlotValueRegexFilterProperty {..}
    = JSON.object ["Pattern" JSON..= pattern]
instance Property "Pattern" SlotValueRegexFilterProperty where
  type PropertyType "Pattern" SlotValueRegexFilterProperty = Value Prelude.Text
  set newValue SlotValueRegexFilterProperty {..}
    = SlotValueRegexFilterProperty {pattern = newValue, ..}