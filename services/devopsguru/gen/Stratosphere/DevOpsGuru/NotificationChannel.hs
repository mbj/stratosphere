module Stratosphere.DevOpsGuru.NotificationChannel (
        module Exports, NotificationChannel(..), mkNotificationChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DevOpsGuru.NotificationChannel.NotificationChannelConfigProperty as Exports
import Stratosphere.ResourceProperties
data NotificationChannel
  = NotificationChannel {config :: NotificationChannelConfigProperty}
mkNotificationChannel ::
  NotificationChannelConfigProperty -> NotificationChannel
mkNotificationChannel config
  = NotificationChannel {config = config}
instance ToResourceProperties NotificationChannel where
  toResourceProperties NotificationChannel {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::NotificationChannel",
         supportsTags = Prelude.False,
         properties = ["Config" JSON..= config]}
instance JSON.ToJSON NotificationChannel where
  toJSON NotificationChannel {..}
    = JSON.object ["Config" JSON..= config]
instance Property "Config" NotificationChannel where
  type PropertyType "Config" NotificationChannel = NotificationChannelConfigProperty
  set newValue NotificationChannel {}
    = NotificationChannel {config = newValue, ..}