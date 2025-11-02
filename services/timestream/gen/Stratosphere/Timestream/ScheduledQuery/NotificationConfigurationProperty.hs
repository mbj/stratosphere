module Stratosphere.Timestream.ScheduledQuery.NotificationConfigurationProperty (
        module Exports, NotificationConfigurationProperty(..),
        mkNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.SnsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NotificationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-notificationconfiguration.html>
    NotificationConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-notificationconfiguration.html#cfn-timestream-scheduledquery-notificationconfiguration-snsconfiguration>
                                       snsConfiguration :: SnsConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationConfigurationProperty ::
  SnsConfigurationProperty -> NotificationConfigurationProperty
mkNotificationConfigurationProperty snsConfiguration
  = NotificationConfigurationProperty
      {haddock_workaround_ = (), snsConfiguration = snsConfiguration}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.NotificationConfiguration",
         supportsTags = Prelude.False,
         properties = ["SnsConfiguration" JSON..= snsConfiguration]}
instance JSON.ToJSON NotificationConfigurationProperty where
  toJSON NotificationConfigurationProperty {..}
    = JSON.object ["SnsConfiguration" JSON..= snsConfiguration]
instance Property "SnsConfiguration" NotificationConfigurationProperty where
  type PropertyType "SnsConfiguration" NotificationConfigurationProperty = SnsConfigurationProperty
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {snsConfiguration = newValue, ..}