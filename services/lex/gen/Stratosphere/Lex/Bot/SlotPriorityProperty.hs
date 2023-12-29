module Stratosphere.Lex.Bot.SlotPriorityProperty (
        SlotPriorityProperty(..), mkSlotPriorityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotPriorityProperty
  = SlotPriorityProperty {priority :: (Value Prelude.Integer),
                          slotName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotPriorityProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> SlotPriorityProperty
mkSlotPriorityProperty priority slotName
  = SlotPriorityProperty {priority = priority, slotName = slotName}
instance ToResourceProperties SlotPriorityProperty where
  toResourceProperties SlotPriorityProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotPriority",
         supportsTags = Prelude.False,
         properties = ["Priority" JSON..= priority,
                       "SlotName" JSON..= slotName]}
instance JSON.ToJSON SlotPriorityProperty where
  toJSON SlotPriorityProperty {..}
    = JSON.object
        ["Priority" JSON..= priority, "SlotName" JSON..= slotName]
instance Property "Priority" SlotPriorityProperty where
  type PropertyType "Priority" SlotPriorityProperty = Value Prelude.Integer
  set newValue SlotPriorityProperty {..}
    = SlotPriorityProperty {priority = newValue, ..}
instance Property "SlotName" SlotPriorityProperty where
  type PropertyType "SlotName" SlotPriorityProperty = Value Prelude.Text
  set newValue SlotPriorityProperty {..}
    = SlotPriorityProperty {slotName = newValue, ..}