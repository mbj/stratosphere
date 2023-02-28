module Stratosphere.S3.Bucket.QueueConfigurationProperty (
        module Exports, QueueConfigurationProperty(..),
        mkQueueConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.NotificationFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueConfigurationProperty
  = QueueConfigurationProperty {event :: (Value Prelude.Text),
                                filter :: (Prelude.Maybe NotificationFilterProperty),
                                queue :: (Value Prelude.Text)}
mkQueueConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> QueueConfigurationProperty
mkQueueConfigurationProperty event queue
  = QueueConfigurationProperty
      {event = event, queue = queue, filter = Prelude.Nothing}
instance ToResourceProperties QueueConfigurationProperty where
  toResourceProperties QueueConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.QueueConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Event" JSON..= event, "Queue" JSON..= queue]
                           (Prelude.catMaybes [(JSON..=) "Filter" Prelude.<$> filter]))}
instance JSON.ToJSON QueueConfigurationProperty where
  toJSON QueueConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Event" JSON..= event, "Queue" JSON..= queue]
              (Prelude.catMaybes [(JSON..=) "Filter" Prelude.<$> filter])))
instance Property "Event" QueueConfigurationProperty where
  type PropertyType "Event" QueueConfigurationProperty = Value Prelude.Text
  set newValue QueueConfigurationProperty {..}
    = QueueConfigurationProperty {event = newValue, ..}
instance Property "Filter" QueueConfigurationProperty where
  type PropertyType "Filter" QueueConfigurationProperty = NotificationFilterProperty
  set newValue QueueConfigurationProperty {..}
    = QueueConfigurationProperty {filter = Prelude.pure newValue, ..}
instance Property "Queue" QueueConfigurationProperty where
  type PropertyType "Queue" QueueConfigurationProperty = Value Prelude.Text
  set newValue QueueConfigurationProperty {..}
    = QueueConfigurationProperty {queue = newValue, ..}