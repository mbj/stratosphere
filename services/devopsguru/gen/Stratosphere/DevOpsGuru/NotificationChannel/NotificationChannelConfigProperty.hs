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
  = NotificationChannelConfigProperty {filters :: (Prelude.Maybe NotificationFilterConfigProperty),
                                       sns :: (Prelude.Maybe SnsChannelConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationChannelConfigProperty ::
  NotificationChannelConfigProperty
mkNotificationChannelConfigProperty
  = NotificationChannelConfigProperty
      {filters = Prelude.Nothing, sns = Prelude.Nothing}
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