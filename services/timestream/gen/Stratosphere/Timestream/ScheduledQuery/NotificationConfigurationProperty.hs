module Stratosphere.Timestream.ScheduledQuery.NotificationConfigurationProperty (
        module Exports, NotificationConfigurationProperty(..),
        mkNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.SnsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NotificationConfigurationProperty
  = NotificationConfigurationProperty {snsConfiguration :: SnsConfigurationProperty}
mkNotificationConfigurationProperty ::
  SnsConfigurationProperty -> NotificationConfigurationProperty
mkNotificationConfigurationProperty snsConfiguration
  = NotificationConfigurationProperty
      {snsConfiguration = snsConfiguration}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.NotificationConfiguration",
         properties = ["SnsConfiguration" JSON..= snsConfiguration]}
instance JSON.ToJSON NotificationConfigurationProperty where
  toJSON NotificationConfigurationProperty {..}
    = JSON.object ["SnsConfiguration" JSON..= snsConfiguration]
instance Property "SnsConfiguration" NotificationConfigurationProperty where
  type PropertyType "SnsConfiguration" NotificationConfigurationProperty = SnsConfigurationProperty
  set newValue NotificationConfigurationProperty {}
    = NotificationConfigurationProperty
        {snsConfiguration = newValue, ..}