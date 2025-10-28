module Stratosphere.Pinpoint.EventStream (
        EventStream(..), mkEventStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventStream
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html>
    EventStream {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-applicationid>
                 applicationId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-destinationstreamarn>
                 destinationStreamArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-rolearn>
                 roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventStream ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EventStream
mkEventStream applicationId destinationStreamArn roleArn
  = EventStream
      {haddock_workaround_ = (), applicationId = applicationId,
       destinationStreamArn = destinationStreamArn, roleArn = roleArn}
instance ToResourceProperties EventStream where
  toResourceProperties EventStream {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::EventStream",
         supportsTags = Prelude.False,
         properties = ["ApplicationId" JSON..= applicationId,
                       "DestinationStreamArn" JSON..= destinationStreamArn,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON EventStream where
  toJSON EventStream {..}
    = JSON.object
        ["ApplicationId" JSON..= applicationId,
         "DestinationStreamArn" JSON..= destinationStreamArn,
         "RoleArn" JSON..= roleArn]
instance Property "ApplicationId" EventStream where
  type PropertyType "ApplicationId" EventStream = Value Prelude.Text
  set newValue EventStream {..}
    = EventStream {applicationId = newValue, ..}
instance Property "DestinationStreamArn" EventStream where
  type PropertyType "DestinationStreamArn" EventStream = Value Prelude.Text
  set newValue EventStream {..}
    = EventStream {destinationStreamArn = newValue, ..}
instance Property "RoleArn" EventStream where
  type PropertyType "RoleArn" EventStream = Value Prelude.Text
  set newValue EventStream {..}
    = EventStream {roleArn = newValue, ..}