module Stratosphere.AppSync.DataSource.EventBridgeConfigProperty (
        EventBridgeConfigProperty(..), mkEventBridgeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-eventbridgeconfig.html>
    EventBridgeConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-eventbridgeconfig.html#cfn-appsync-datasource-eventbridgeconfig-eventbusarn>
                               eventBusArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeConfigProperty ::
  Value Prelude.Text -> EventBridgeConfigProperty
mkEventBridgeConfigProperty eventBusArn
  = EventBridgeConfigProperty
      {haddock_workaround_ = (), eventBusArn = eventBusArn}
instance ToResourceProperties EventBridgeConfigProperty where
  toResourceProperties EventBridgeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.EventBridgeConfig",
         supportsTags = Prelude.False,
         properties = ["EventBusArn" JSON..= eventBusArn]}
instance JSON.ToJSON EventBridgeConfigProperty where
  toJSON EventBridgeConfigProperty {..}
    = JSON.object ["EventBusArn" JSON..= eventBusArn]
instance Property "EventBusArn" EventBridgeConfigProperty where
  type PropertyType "EventBusArn" EventBridgeConfigProperty = Value Prelude.Text
  set newValue EventBridgeConfigProperty {..}
    = EventBridgeConfigProperty {eventBusArn = newValue, ..}