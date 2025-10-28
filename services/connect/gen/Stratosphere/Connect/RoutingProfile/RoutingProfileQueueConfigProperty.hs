module Stratosphere.Connect.RoutingProfile.RoutingProfileQueueConfigProperty (
        module Exports, RoutingProfileQueueConfigProperty(..),
        mkRoutingProfileQueueConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.RoutingProfile.RoutingProfileQueueReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingProfileQueueConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeueconfig.html>
    RoutingProfileQueueConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeueconfig.html#cfn-connect-routingprofile-routingprofilequeueconfig-delay>
                                       delay :: (Value Prelude.Integer),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeueconfig.html#cfn-connect-routingprofile-routingprofilequeueconfig-priority>
                                       priority :: (Value Prelude.Integer),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilequeueconfig.html#cfn-connect-routingprofile-routingprofilequeueconfig-queuereference>
                                       queueReference :: RoutingProfileQueueReferenceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingProfileQueueConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> RoutingProfileQueueReferenceProperty
        -> RoutingProfileQueueConfigProperty
mkRoutingProfileQueueConfigProperty delay priority queueReference
  = RoutingProfileQueueConfigProperty
      {haddock_workaround_ = (), delay = delay, priority = priority,
       queueReference = queueReference}
instance ToResourceProperties RoutingProfileQueueConfigProperty where
  toResourceProperties RoutingProfileQueueConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::RoutingProfile.RoutingProfileQueueConfig",
         supportsTags = Prelude.False,
         properties = ["Delay" JSON..= delay, "Priority" JSON..= priority,
                       "QueueReference" JSON..= queueReference]}
instance JSON.ToJSON RoutingProfileQueueConfigProperty where
  toJSON RoutingProfileQueueConfigProperty {..}
    = JSON.object
        ["Delay" JSON..= delay, "Priority" JSON..= priority,
         "QueueReference" JSON..= queueReference]
instance Property "Delay" RoutingProfileQueueConfigProperty where
  type PropertyType "Delay" RoutingProfileQueueConfigProperty = Value Prelude.Integer
  set newValue RoutingProfileQueueConfigProperty {..}
    = RoutingProfileQueueConfigProperty {delay = newValue, ..}
instance Property "Priority" RoutingProfileQueueConfigProperty where
  type PropertyType "Priority" RoutingProfileQueueConfigProperty = Value Prelude.Integer
  set newValue RoutingProfileQueueConfigProperty {..}
    = RoutingProfileQueueConfigProperty {priority = newValue, ..}
instance Property "QueueReference" RoutingProfileQueueConfigProperty where
  type PropertyType "QueueReference" RoutingProfileQueueConfigProperty = RoutingProfileQueueReferenceProperty
  set newValue RoutingProfileQueueConfigProperty {..}
    = RoutingProfileQueueConfigProperty {queueReference = newValue, ..}