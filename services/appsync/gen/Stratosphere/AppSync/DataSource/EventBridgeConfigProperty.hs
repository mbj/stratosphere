module Stratosphere.AppSync.DataSource.EventBridgeConfigProperty (
        EventBridgeConfigProperty(..), mkEventBridgeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeConfigProperty
  = EventBridgeConfigProperty {eventBusArn :: (Value Prelude.Text)}
mkEventBridgeConfigProperty ::
  Value Prelude.Text -> EventBridgeConfigProperty
mkEventBridgeConfigProperty eventBusArn
  = EventBridgeConfigProperty {eventBusArn = eventBusArn}
instance ToResourceProperties EventBridgeConfigProperty where
  toResourceProperties EventBridgeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.EventBridgeConfig",
         properties = ["EventBusArn" JSON..= eventBusArn]}
instance JSON.ToJSON EventBridgeConfigProperty where
  toJSON EventBridgeConfigProperty {..}
    = JSON.object ["EventBusArn" JSON..= eventBusArn]
instance Property "EventBusArn" EventBridgeConfigProperty where
  type PropertyType "EventBusArn" EventBridgeConfigProperty = Value Prelude.Text
  set newValue EventBridgeConfigProperty {}
    = EventBridgeConfigProperty {eventBusArn = newValue, ..}