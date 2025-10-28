module Stratosphere.Lex.Bot.MessageGroupProperty (
        module Exports, MessageGroupProperty(..), mkMessageGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MessageProperty as Exports
import Stratosphere.ResourceProperties
data MessageGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-messagegroup.html>
    MessageGroupProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-messagegroup.html#cfn-lex-bot-messagegroup-message>
                          message :: MessageProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-messagegroup.html#cfn-lex-bot-messagegroup-variations>
                          variations :: (Prelude.Maybe [MessageProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageGroupProperty :: MessageProperty -> MessageGroupProperty
mkMessageGroupProperty message
  = MessageGroupProperty
      {haddock_workaround_ = (), message = message,
       variations = Prelude.Nothing}
instance ToResourceProperties MessageGroupProperty where
  toResourceProperties MessageGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.MessageGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Message" JSON..= message]
                           (Prelude.catMaybes
                              [(JSON..=) "Variations" Prelude.<$> variations]))}
instance JSON.ToJSON MessageGroupProperty where
  toJSON MessageGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Message" JSON..= message]
              (Prelude.catMaybes
                 [(JSON..=) "Variations" Prelude.<$> variations])))
instance Property "Message" MessageGroupProperty where
  type PropertyType "Message" MessageGroupProperty = MessageProperty
  set newValue MessageGroupProperty {..}
    = MessageGroupProperty {message = newValue, ..}
instance Property "Variations" MessageGroupProperty where
  type PropertyType "Variations" MessageGroupProperty = [MessageProperty]
  set newValue MessageGroupProperty {..}
    = MessageGroupProperty {variations = Prelude.pure newValue, ..}