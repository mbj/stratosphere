module Stratosphere.Lex.Bot.MessageProperty (
        module Exports, MessageProperty(..), mkMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CustomPayloadProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ImageResponseCardProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.PlainTextMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SSMLMessageProperty as Exports
import Stratosphere.ResourceProperties
data MessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html>
    MessageProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-custompayload>
                     customPayload :: (Prelude.Maybe CustomPayloadProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-imageresponsecard>
                     imageResponseCard :: (Prelude.Maybe ImageResponseCardProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-plaintextmessage>
                     plainTextMessage :: (Prelude.Maybe PlainTextMessageProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-ssmlmessage>
                     sSMLMessage :: (Prelude.Maybe SSMLMessageProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageProperty :: MessageProperty
mkMessageProperty
  = MessageProperty
      {haddock_workaround_ = (), customPayload = Prelude.Nothing,
       imageResponseCard = Prelude.Nothing,
       plainTextMessage = Prelude.Nothing, sSMLMessage = Prelude.Nothing}
instance ToResourceProperties MessageProperty where
  toResourceProperties MessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Message", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomPayload" Prelude.<$> customPayload,
                            (JSON..=) "ImageResponseCard" Prelude.<$> imageResponseCard,
                            (JSON..=) "PlainTextMessage" Prelude.<$> plainTextMessage,
                            (JSON..=) "SSMLMessage" Prelude.<$> sSMLMessage])}
instance JSON.ToJSON MessageProperty where
  toJSON MessageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomPayload" Prelude.<$> customPayload,
               (JSON..=) "ImageResponseCard" Prelude.<$> imageResponseCard,
               (JSON..=) "PlainTextMessage" Prelude.<$> plainTextMessage,
               (JSON..=) "SSMLMessage" Prelude.<$> sSMLMessage]))
instance Property "CustomPayload" MessageProperty where
  type PropertyType "CustomPayload" MessageProperty = CustomPayloadProperty
  set newValue MessageProperty {..}
    = MessageProperty {customPayload = Prelude.pure newValue, ..}
instance Property "ImageResponseCard" MessageProperty where
  type PropertyType "ImageResponseCard" MessageProperty = ImageResponseCardProperty
  set newValue MessageProperty {..}
    = MessageProperty {imageResponseCard = Prelude.pure newValue, ..}
instance Property "PlainTextMessage" MessageProperty where
  type PropertyType "PlainTextMessage" MessageProperty = PlainTextMessageProperty
  set newValue MessageProperty {..}
    = MessageProperty {plainTextMessage = Prelude.pure newValue, ..}
instance Property "SSMLMessage" MessageProperty where
  type PropertyType "SSMLMessage" MessageProperty = SSMLMessageProperty
  set newValue MessageProperty {..}
    = MessageProperty {sSMLMessage = Prelude.pure newValue, ..}