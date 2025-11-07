module Stratosphere.Connect.RoutingProfile.RoutingProfileManualAssignmentQueueConfigProperty (
        module Exports,
        RoutingProfileManualAssignmentQueueConfigProperty(..),
        mkRoutingProfileManualAssignmentQueueConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.RoutingProfile.RoutingProfileQueueReferenceProperty as Exports
import Stratosphere.ResourceProperties
data RoutingProfileManualAssignmentQueueConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilemanualassignmentqueueconfig.html>
    RoutingProfileManualAssignmentQueueConfigProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilemanualassignmentqueueconfig.html#cfn-connect-routingprofile-routingprofilemanualassignmentqueueconfig-queuereference>
                                                       queueReference :: RoutingProfileQueueReferenceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingProfileManualAssignmentQueueConfigProperty ::
  RoutingProfileQueueReferenceProperty
  -> RoutingProfileManualAssignmentQueueConfigProperty
mkRoutingProfileManualAssignmentQueueConfigProperty queueReference
  = RoutingProfileManualAssignmentQueueConfigProperty
      {haddock_workaround_ = (), queueReference = queueReference}
instance ToResourceProperties RoutingProfileManualAssignmentQueueConfigProperty where
  toResourceProperties
    RoutingProfileManualAssignmentQueueConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::RoutingProfile.RoutingProfileManualAssignmentQueueConfig",
         supportsTags = Prelude.False,
         properties = ["QueueReference" JSON..= queueReference]}
instance JSON.ToJSON RoutingProfileManualAssignmentQueueConfigProperty where
  toJSON RoutingProfileManualAssignmentQueueConfigProperty {..}
    = JSON.object ["QueueReference" JSON..= queueReference]
instance Property "QueueReference" RoutingProfileManualAssignmentQueueConfigProperty where
  type PropertyType "QueueReference" RoutingProfileManualAssignmentQueueConfigProperty = RoutingProfileQueueReferenceProperty
  set newValue RoutingProfileManualAssignmentQueueConfigProperty {..}
    = RoutingProfileManualAssignmentQueueConfigProperty
        {queueReference = newValue, ..}