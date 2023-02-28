module Stratosphere.S3.Bucket.NotificationConfigurationProperty (
        module Exports, NotificationConfigurationProperty(..),
        mkNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.EventBridgeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.LambdaConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.QueueConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.TopicConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NotificationConfigurationProperty
  = NotificationConfigurationProperty {eventBridgeConfiguration :: (Prelude.Maybe EventBridgeConfigurationProperty),
                                       lambdaConfigurations :: (Prelude.Maybe [LambdaConfigurationProperty]),
                                       queueConfigurations :: (Prelude.Maybe [QueueConfigurationProperty]),
                                       topicConfigurations :: (Prelude.Maybe [TopicConfigurationProperty])}
mkNotificationConfigurationProperty ::
  NotificationConfigurationProperty
mkNotificationConfigurationProperty
  = NotificationConfigurationProperty
      {eventBridgeConfiguration = Prelude.Nothing,
       lambdaConfigurations = Prelude.Nothing,
       queueConfigurations = Prelude.Nothing,
       topicConfigurations = Prelude.Nothing}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.NotificationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EventBridgeConfiguration"
                              Prelude.<$> eventBridgeConfiguration,
                            (JSON..=) "LambdaConfigurations" Prelude.<$> lambdaConfigurations,
                            (JSON..=) "QueueConfigurations" Prelude.<$> queueConfigurations,
                            (JSON..=) "TopicConfigurations" Prelude.<$> topicConfigurations])}
instance JSON.ToJSON NotificationConfigurationProperty where
  toJSON NotificationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EventBridgeConfiguration"
                 Prelude.<$> eventBridgeConfiguration,
               (JSON..=) "LambdaConfigurations" Prelude.<$> lambdaConfigurations,
               (JSON..=) "QueueConfigurations" Prelude.<$> queueConfigurations,
               (JSON..=) "TopicConfigurations" Prelude.<$> topicConfigurations]))
instance Property "EventBridgeConfiguration" NotificationConfigurationProperty where
  type PropertyType "EventBridgeConfiguration" NotificationConfigurationProperty = EventBridgeConfigurationProperty
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {eventBridgeConfiguration = Prelude.pure newValue, ..}
instance Property "LambdaConfigurations" NotificationConfigurationProperty where
  type PropertyType "LambdaConfigurations" NotificationConfigurationProperty = [LambdaConfigurationProperty]
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {lambdaConfigurations = Prelude.pure newValue, ..}
instance Property "QueueConfigurations" NotificationConfigurationProperty where
  type PropertyType "QueueConfigurations" NotificationConfigurationProperty = [QueueConfigurationProperty]
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {queueConfigurations = Prelude.pure newValue, ..}
instance Property "TopicConfigurations" NotificationConfigurationProperty where
  type PropertyType "TopicConfigurations" NotificationConfigurationProperty = [TopicConfigurationProperty]
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {topicConfigurations = Prelude.pure newValue, ..}