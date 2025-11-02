module Stratosphere.SES.ConfigurationSetEventDestination.EventBridgeDestinationProperty (
        EventBridgeDestinationProperty(..),
        mkEventBridgeDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventbridgedestination.html>
    EventBridgeDestinationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventbridgedestination.html#cfn-ses-configurationseteventdestination-eventbridgedestination-eventbusarn>
                                    eventBusArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeDestinationProperty ::
  Value Prelude.Text -> EventBridgeDestinationProperty
mkEventBridgeDestinationProperty eventBusArn
  = EventBridgeDestinationProperty
      {haddock_workaround_ = (), eventBusArn = eventBusArn}
instance ToResourceProperties EventBridgeDestinationProperty where
  toResourceProperties EventBridgeDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.EventBridgeDestination",
         supportsTags = Prelude.False,
         properties = ["EventBusArn" JSON..= eventBusArn]}
instance JSON.ToJSON EventBridgeDestinationProperty where
  toJSON EventBridgeDestinationProperty {..}
    = JSON.object ["EventBusArn" JSON..= eventBusArn]
instance Property "EventBusArn" EventBridgeDestinationProperty where
  type PropertyType "EventBusArn" EventBridgeDestinationProperty = Value Prelude.Text
  set newValue EventBridgeDestinationProperty {..}
    = EventBridgeDestinationProperty {eventBusArn = newValue, ..}