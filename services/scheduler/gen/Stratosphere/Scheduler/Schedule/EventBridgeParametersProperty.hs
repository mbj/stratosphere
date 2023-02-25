module Stratosphere.Scheduler.Schedule.EventBridgeParametersProperty (
        EventBridgeParametersProperty(..), mkEventBridgeParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeParametersProperty
  = EventBridgeParametersProperty {detailType :: (Value Prelude.Text),
                                   source :: (Value Prelude.Text)}
mkEventBridgeParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EventBridgeParametersProperty
mkEventBridgeParametersProperty detailType source
  = EventBridgeParametersProperty
      {detailType = detailType, source = source}
instance ToResourceProperties EventBridgeParametersProperty where
  toResourceProperties EventBridgeParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.EventBridgeParameters",
         properties = ["DetailType" JSON..= detailType,
                       "Source" JSON..= source]}
instance JSON.ToJSON EventBridgeParametersProperty where
  toJSON EventBridgeParametersProperty {..}
    = JSON.object
        ["DetailType" JSON..= detailType, "Source" JSON..= source]
instance Property "DetailType" EventBridgeParametersProperty where
  type PropertyType "DetailType" EventBridgeParametersProperty = Value Prelude.Text
  set newValue EventBridgeParametersProperty {..}
    = EventBridgeParametersProperty {detailType = newValue, ..}
instance Property "Source" EventBridgeParametersProperty where
  type PropertyType "Source" EventBridgeParametersProperty = Value Prelude.Text
  set newValue EventBridgeParametersProperty {..}
    = EventBridgeParametersProperty {source = newValue, ..}