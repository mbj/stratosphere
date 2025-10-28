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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeuereference.html>
    RoutingProfileQueueReferenceProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeuereference.html#cfn-connect-routingprofile-routingprofilequeuereference-channel>
                                          channel :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeuereference.html#cfn-connect-routingprofile-routingprofilequeuereference-queuearn>
                                          queueArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingProfileQueueReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RoutingProfileQueueReferenceProperty
mkRoutingProfileQueueReferenceProperty channel queueArn
  = RoutingProfileQueueReferenceProperty
      {haddock_workaround_ = (), channel = channel, queueArn = queueArn}
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