module Stratosphere.DevOpsGuru.NotificationChannel.NotificationChannelConfigProperty (
        module Exports, NotificationChannelConfigProperty(..),
        mkNotificationChannelConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DevOpsGuru.NotificationChannel.NotificationFilterConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.DevOpsGuru.NotificationChannel.SnsChannelConfigProperty as Exports
import Stratosphere.ResourceProperties
data NotificationChannelConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationchannelconfig.html>
    NotificationChannelConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationchannelconfig.html#cfn-devopsguru-notificationchannel-notificationchannelconfig-filters>
                                       filters :: (Prelude.Maybe NotificationFilterConfigProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationchannelconfig.html#cfn-devopsguru-notificationchannel-notificationchannelconfig-sns>
                                       sns :: (Prelude.Maybe SnsChannelConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationChannelConfigProperty ::
  NotificationChannelConfigProperty
mkNotificationChannelConfigProperty
  = NotificationChannelConfigProperty
      {haddock_workaround_ = (), filters = Prelude.Nothing,
       sns = Prelude.Nothing}
instance ToResourceProperties NotificationChannelConfigProperty where
  toResourceProperties NotificationChannelConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::NotificationChannel.NotificationChannelConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Filters" Prelude.<$> filters,
                            (JSON..=) "Sns" Prelude.<$> sns])}
instance JSON.ToJSON NotificationChannelConfigProperty where
  toJSON NotificationChannelConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Filters" Prelude.<$> filters,
               (JSON..=) "Sns" Prelude.<$> sns]))
instance Property "Filters" NotificationChannelConfigProperty where
  type PropertyType "Filters" NotificationChannelConfigProperty = NotificationFilterConfigProperty
  set newValue NotificationChannelConfigProperty {..}
    = NotificationChannelConfigProperty
        {filters = Prelude.pure newValue, ..}
instance Property "Sns" NotificationChannelConfigProperty where
  type PropertyType "Sns" NotificationChannelConfigProperty = SnsChannelConfigProperty
  set newValue NotificationChannelConfigProperty {..}
    = NotificationChannelConfigProperty
        {sns = Prelude.pure newValue, ..}