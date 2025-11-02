module Stratosphere.Rekognition.StreamProcessor.NotificationChannelProperty (
        NotificationChannelProperty(..), mkNotificationChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationChannelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-notificationchannel.html>
    NotificationChannelProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-notificationchannel.html#cfn-rekognition-streamprocessor-notificationchannel-arn>
                                 arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationChannelProperty ::
  Value Prelude.Text -> NotificationChannelProperty
mkNotificationChannelProperty arn
  = NotificationChannelProperty {haddock_workaround_ = (), arn = arn}
instance ToResourceProperties NotificationChannelProperty where
  toResourceProperties NotificationChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.NotificationChannel",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON NotificationChannelProperty where
  toJSON NotificationChannelProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" NotificationChannelProperty where
  type PropertyType "Arn" NotificationChannelProperty = Value Prelude.Text
  set newValue NotificationChannelProperty {..}
    = NotificationChannelProperty {arn = newValue, ..}