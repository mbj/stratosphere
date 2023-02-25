module Stratosphere.DevOpsGuru.NotificationChannel.SnsChannelConfigProperty (
        SnsChannelConfigProperty(..), mkSnsChannelConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsChannelConfigProperty
  = SnsChannelConfigProperty {topicArn :: (Prelude.Maybe (Value Prelude.Text))}
mkSnsChannelConfigProperty :: SnsChannelConfigProperty
mkSnsChannelConfigProperty
  = SnsChannelConfigProperty {topicArn = Prelude.Nothing}
instance ToResourceProperties SnsChannelConfigProperty where
  toResourceProperties SnsChannelConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::NotificationChannel.SnsChannelConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn])}
instance JSON.ToJSON SnsChannelConfigProperty where
  toJSON SnsChannelConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn]))
instance Property "TopicArn" SnsChannelConfigProperty where
  type PropertyType "TopicArn" SnsChannelConfigProperty = Value Prelude.Text
  set newValue SnsChannelConfigProperty {}
    = SnsChannelConfigProperty {topicArn = Prelude.pure newValue, ..}