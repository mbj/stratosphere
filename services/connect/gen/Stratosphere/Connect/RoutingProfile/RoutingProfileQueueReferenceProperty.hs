module Stratosphere.Connect.RoutingProfile.RoutingProfileQueueReferenceProperty (
        RoutingProfileQueueReferenceProperty(..),
        mkRoutingProfileQueueReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingProfileQueueReferenceProperty
  = RoutingProfileQueueReferenceProperty {channel :: (Value Prelude.Text),
                                          queueArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingProfileQueueReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RoutingProfileQueueReferenceProperty
mkRoutingProfileQueueReferenceProperty channel queueArn
  = RoutingProfileQueueReferenceProperty
      {channel = channel, queueArn = queueArn}
instance ToResourceProperties RoutingProfileQueueReferenceProperty where
  toResourceProperties RoutingProfileQueueReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::RoutingProfile.RoutingProfileQueueReference",
         supportsTags = Prelude.False,
         properties = ["Channel" JSON..= channel,
                       "QueueArn" JSON..= queueArn]}
instance JSON.ToJSON RoutingProfileQueueReferenceProperty where
  toJSON RoutingProfileQueueReferenceProperty {..}
    = JSON.object
        ["Channel" JSON..= channel, "QueueArn" JSON..= queueArn]
instance Property "Channel" RoutingProfileQueueReferenceProperty where
  type PropertyType "Channel" RoutingProfileQueueReferenceProperty = Value Prelude.Text
  set newValue RoutingProfileQueueReferenceProperty {..}
    = RoutingProfileQueueReferenceProperty {channel = newValue, ..}
instance Property "QueueArn" RoutingProfileQueueReferenceProperty where
  type PropertyType "QueueArn" RoutingProfileQueueReferenceProperty = Value Prelude.Text
  set newValue RoutingProfileQueueReferenceProperty {..}
    = RoutingProfileQueueReferenceProperty {queueArn = newValue, ..}