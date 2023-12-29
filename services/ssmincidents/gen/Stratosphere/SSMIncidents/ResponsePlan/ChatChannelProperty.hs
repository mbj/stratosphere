module Stratosphere.SSMIncidents.ResponsePlan.ChatChannelProperty (
        ChatChannelProperty(..), mkChatChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChatChannelProperty
  = ChatChannelProperty {chatbotSns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChatChannelProperty :: ChatChannelProperty
mkChatChannelProperty
  = ChatChannelProperty {chatbotSns = Prelude.Nothing}
instance ToResourceProperties ChatChannelProperty where
  toResourceProperties ChatChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.ChatChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChatbotSns" Prelude.<$> chatbotSns])}
instance JSON.ToJSON ChatChannelProperty where
  toJSON ChatChannelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChatbotSns" Prelude.<$> chatbotSns]))
instance Property "ChatbotSns" ChatChannelProperty where
  type PropertyType "ChatbotSns" ChatChannelProperty = ValueList Prelude.Text
  set newValue ChatChannelProperty {}
    = ChatChannelProperty {chatbotSns = Prelude.pure newValue, ..}