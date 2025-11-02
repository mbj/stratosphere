module Stratosphere.Lex.Bot.SlotDefaultValueProperty (
        SlotDefaultValueProperty(..), mkSlotDefaultValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotDefaultValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotdefaultvalue.html>
    SlotDefaultValueProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotdefaultvalue.html#cfn-lex-bot-slotdefaultvalue-defaultvalue>
                              defaultValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotDefaultValueProperty ::
  Value Prelude.Text -> SlotDefaultValueProperty
mkSlotDefaultValueProperty defaultValue
  = SlotDefaultValueProperty
      {haddock_workaround_ = (), defaultValue = defaultValue}
instance ToResourceProperties SlotDefaultValueProperty where
  toResourceProperties SlotDefaultValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotDefaultValue",
         supportsTags = Prelude.False,
         properties = ["DefaultValue" JSON..= defaultValue]}
instance JSON.ToJSON SlotDefaultValueProperty where
  toJSON SlotDefaultValueProperty {..}
    = JSON.object ["DefaultValue" JSON..= defaultValue]
instance Property "DefaultValue" SlotDefaultValueProperty where
  type PropertyType "DefaultValue" SlotDefaultValueProperty = Value Prelude.Text
  set newValue SlotDefaultValueProperty {..}
    = SlotDefaultValueProperty {defaultValue = newValue, ..}