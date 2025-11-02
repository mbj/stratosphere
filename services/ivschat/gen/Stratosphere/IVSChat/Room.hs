module Stratosphere.IVSChat.Room (
        module Exports, Room(..), mkRoom
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVSChat.Room.MessageReviewHandlerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Room
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html>
    Room {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html#cfn-ivschat-room-loggingconfigurationidentifiers>
          loggingConfigurationIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html#cfn-ivschat-room-maximummessagelength>
          maximumMessageLength :: (Prelude.Maybe (Value Prelude.Integer)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html#cfn-ivschat-room-maximummessageratepersecond>
          maximumMessageRatePerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html#cfn-ivschat-room-messagereviewhandler>
          messageReviewHandler :: (Prelude.Maybe MessageReviewHandlerProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html#cfn-ivschat-room-name>
          name :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-room.html#cfn-ivschat-room-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoom :: Room
mkRoom
  = Room
      {haddock_workaround_ = (),
       loggingConfigurationIdentifiers = Prelude.Nothing,
       maximumMessageLength = Prelude.Nothing,
       maximumMessageRatePerSecond = Prelude.Nothing,
       messageReviewHandler = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Room where
  toResourceProperties Room {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::Room", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LoggingConfigurationIdentifiers"
                              Prelude.<$> loggingConfigurationIdentifiers,
                            (JSON..=) "MaximumMessageLength" Prelude.<$> maximumMessageLength,
                            (JSON..=) "MaximumMessageRatePerSecond"
                              Prelude.<$> maximumMessageRatePerSecond,
                            (JSON..=) "MessageReviewHandler" Prelude.<$> messageReviewHandler,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Room where
  toJSON Room {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LoggingConfigurationIdentifiers"
                 Prelude.<$> loggingConfigurationIdentifiers,
               (JSON..=) "MaximumMessageLength" Prelude.<$> maximumMessageLength,
               (JSON..=) "MaximumMessageRatePerSecond"
                 Prelude.<$> maximumMessageRatePerSecond,
               (JSON..=) "MessageReviewHandler" Prelude.<$> messageReviewHandler,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "LoggingConfigurationIdentifiers" Room where
  type PropertyType "LoggingConfigurationIdentifiers" Room = ValueList Prelude.Text
  set newValue Room {..}
    = Room
        {loggingConfigurationIdentifiers = Prelude.pure newValue, ..}
instance Property "MaximumMessageLength" Room where
  type PropertyType "MaximumMessageLength" Room = Value Prelude.Integer
  set newValue Room {..}
    = Room {maximumMessageLength = Prelude.pure newValue, ..}
instance Property "MaximumMessageRatePerSecond" Room where
  type PropertyType "MaximumMessageRatePerSecond" Room = Value Prelude.Integer
  set newValue Room {..}
    = Room {maximumMessageRatePerSecond = Prelude.pure newValue, ..}
instance Property "MessageReviewHandler" Room where
  type PropertyType "MessageReviewHandler" Room = MessageReviewHandlerProperty
  set newValue Room {..}
    = Room {messageReviewHandler = Prelude.pure newValue, ..}
instance Property "Name" Room where
  type PropertyType "Name" Room = Value Prelude.Text
  set newValue Room {..} = Room {name = Prelude.pure newValue, ..}
instance Property "Tags" Room where
  type PropertyType "Tags" Room = [Tag]
  set newValue Room {..} = Room {tags = Prelude.pure newValue, ..}