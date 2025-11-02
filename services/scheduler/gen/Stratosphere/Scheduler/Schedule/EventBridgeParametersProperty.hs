module Stratosphere.Scheduler.Schedule.EventBridgeParametersProperty (
        EventBridgeParametersProperty(..), mkEventBridgeParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-eventbridgeparameters.html>
    EventBridgeParametersProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-eventbridgeparameters.html#cfn-scheduler-schedule-eventbridgeparameters-detailtype>
                                   detailType :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-eventbridgeparameters.html#cfn-scheduler-schedule-eventbridgeparameters-source>
                                   source :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EventBridgeParametersProperty
mkEventBridgeParametersProperty detailType source
  = EventBridgeParametersProperty
      {haddock_workaround_ = (), detailType = detailType,
       source = source}
instance ToResourceProperties EventBridgeParametersProperty where
  toResourceProperties EventBridgeParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.EventBridgeParameters",
         supportsTags = Prelude.False,
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