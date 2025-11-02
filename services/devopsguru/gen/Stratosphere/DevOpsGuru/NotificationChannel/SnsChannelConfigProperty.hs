module Stratosphere.DevOpsGuru.NotificationChannel.SnsChannelConfigProperty (
        SnsChannelConfigProperty(..), mkSnsChannelConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsChannelConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-snschannelconfig.html>
    SnsChannelConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-snschannelconfig.html#cfn-devopsguru-notificationchannel-snschannelconfig-topicarn>
                              topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsChannelConfigProperty :: SnsChannelConfigProperty
mkSnsChannelConfigProperty
  = SnsChannelConfigProperty
      {haddock_workaround_ = (), topicArn = Prelude.Nothing}
instance ToResourceProperties SnsChannelConfigProperty where
  toResourceProperties SnsChannelConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::NotificationChannel.SnsChannelConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn])}
instance JSON.ToJSON SnsChannelConfigProperty where
  toJSON SnsChannelConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn]))
instance Property "TopicArn" SnsChannelConfigProperty where
  type PropertyType "TopicArn" SnsChannelConfigProperty = Value Prelude.Text
  set newValue SnsChannelConfigProperty {..}
    = SnsChannelConfigProperty {topicArn = Prelude.pure newValue, ..}