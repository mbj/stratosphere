module Stratosphere.Connect.Rule.EventBridgeActionProperty (
        EventBridgeActionProperty(..), mkEventBridgeActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeActionProperty
  = EventBridgeActionProperty {name :: (Value Prelude.Text)}
mkEventBridgeActionProperty ::
  Value Prelude.Text -> EventBridgeActionProperty
mkEventBridgeActionProperty name
  = EventBridgeActionProperty {name = name}
instance ToResourceProperties EventBridgeActionProperty where
  toResourceProperties EventBridgeActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.EventBridgeAction",
         properties = ["Name" JSON..= name]}
instance JSON.ToJSON EventBridgeActionProperty where
  toJSON EventBridgeActionProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" EventBridgeActionProperty where
  type PropertyType "Name" EventBridgeActionProperty = Value Prelude.Text
  set newValue EventBridgeActionProperty {}
    = EventBridgeActionProperty {name = newValue, ..}