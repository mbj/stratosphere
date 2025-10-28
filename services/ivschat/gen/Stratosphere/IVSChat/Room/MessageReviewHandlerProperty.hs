module Stratosphere.IVSChat.Room.MessageReviewHandlerProperty (
        MessageReviewHandlerProperty(..), mkMessageReviewHandlerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageReviewHandlerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-room-messagereviewhandler.html>
    MessageReviewHandlerProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-room-messagereviewhandler.html#cfn-ivschat-room-messagereviewhandler-fallbackresult>
                                  fallbackResult :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-room-messagereviewhandler.html#cfn-ivschat-room-messagereviewhandler-uri>
                                  uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageReviewHandlerProperty :: MessageReviewHandlerProperty
mkMessageReviewHandlerProperty
  = MessageReviewHandlerProperty
      {haddock_workaround_ = (), fallbackResult = Prelude.Nothing,
       uri = Prelude.Nothing}
instance ToResourceProperties MessageReviewHandlerProperty where
  toResourceProperties MessageReviewHandlerProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::Room.MessageReviewHandler",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FallbackResult" Prelude.<$> fallbackResult,
                            (JSON..=) "Uri" Prelude.<$> uri])}
instance JSON.ToJSON MessageReviewHandlerProperty where
  toJSON MessageReviewHandlerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FallbackResult" Prelude.<$> fallbackResult,
               (JSON..=) "Uri" Prelude.<$> uri]))
instance Property "FallbackResult" MessageReviewHandlerProperty where
  type PropertyType "FallbackResult" MessageReviewHandlerProperty = Value Prelude.Text
  set newValue MessageReviewHandlerProperty {..}
    = MessageReviewHandlerProperty
        {fallbackResult = Prelude.pure newValue, ..}
instance Property "Uri" MessageReviewHandlerProperty where
  type PropertyType "Uri" MessageReviewHandlerProperty = Value Prelude.Text
  set newValue MessageReviewHandlerProperty {..}
    = MessageReviewHandlerProperty {uri = Prelude.pure newValue, ..}