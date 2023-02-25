module Stratosphere.Rekognition.StreamProcessor.NotificationChannelProperty (
        NotificationChannelProperty(..), mkNotificationChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationChannelProperty
  = NotificationChannelProperty {arn :: (Value Prelude.Text)}
mkNotificationChannelProperty ::
  Value Prelude.Text -> NotificationChannelProperty
mkNotificationChannelProperty arn
  = NotificationChannelProperty {arn = arn}
instance ToResourceProperties NotificationChannelProperty where
  toResourceProperties NotificationChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.NotificationChannel",
         properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON NotificationChannelProperty where
  toJSON NotificationChannelProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" NotificationChannelProperty where
  type PropertyType "Arn" NotificationChannelProperty = Value Prelude.Text
  set newValue NotificationChannelProperty {}
    = NotificationChannelProperty {arn = newValue, ..}