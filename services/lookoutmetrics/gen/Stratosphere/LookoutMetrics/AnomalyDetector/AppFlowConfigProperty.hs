module Stratosphere.LookoutMetrics.AnomalyDetector.AppFlowConfigProperty (
        AppFlowConfigProperty(..), mkAppFlowConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppFlowConfigProperty
  = AppFlowConfigProperty {flowName :: (Value Prelude.Text),
                           roleArn :: (Value Prelude.Text)}
mkAppFlowConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AppFlowConfigProperty
mkAppFlowConfigProperty flowName roleArn
  = AppFlowConfigProperty {flowName = flowName, roleArn = roleArn}
instance ToResourceProperties AppFlowConfigProperty where
  toResourceProperties AppFlowConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.AppFlowConfig",
         supportsTags = Prelude.False,
         properties = ["FlowName" JSON..= flowName,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON AppFlowConfigProperty where
  toJSON AppFlowConfigProperty {..}
    = JSON.object
        ["FlowName" JSON..= flowName, "RoleArn" JSON..= roleArn]
instance Property "FlowName" AppFlowConfigProperty where
  type PropertyType "FlowName" AppFlowConfigProperty = Value Prelude.Text
  set newValue AppFlowConfigProperty {..}
    = AppFlowConfigProperty {flowName = newValue, ..}
instance Property "RoleArn" AppFlowConfigProperty where
  type PropertyType "RoleArn" AppFlowConfigProperty = Value Prelude.Text
  set newValue AppFlowConfigProperty {..}
    = AppFlowConfigProperty {roleArn = newValue, ..}