module Stratosphere.KafkaConnect.Connector.ScaleInPolicyProperty (
        ScaleInPolicyProperty(..), mkScaleInPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScaleInPolicyProperty
  = ScaleInPolicyProperty {cpuUtilizationPercentage :: (Value Prelude.Integer)}
mkScaleInPolicyProperty ::
  Value Prelude.Integer -> ScaleInPolicyProperty
mkScaleInPolicyProperty cpuUtilizationPercentage
  = ScaleInPolicyProperty
      {cpuUtilizationPercentage = cpuUtilizationPercentage}
instance ToResourceProperties ScaleInPolicyProperty where
  toResourceProperties ScaleInPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.ScaleInPolicy",
         properties = ["CpuUtilizationPercentage"
                         JSON..= cpuUtilizationPercentage]}
instance JSON.ToJSON ScaleInPolicyProperty where
  toJSON ScaleInPolicyProperty {..}
    = JSON.object
        ["CpuUtilizationPercentage" JSON..= cpuUtilizationPercentage]
instance Property "CpuUtilizationPercentage" ScaleInPolicyProperty where
  type PropertyType "CpuUtilizationPercentage" ScaleInPolicyProperty = Value Prelude.Integer
  set newValue ScaleInPolicyProperty {}
    = ScaleInPolicyProperty {cpuUtilizationPercentage = newValue, ..}