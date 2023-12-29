module Stratosphere.KafkaConnect.Connector.ScaleOutPolicyProperty (
        ScaleOutPolicyProperty(..), mkScaleOutPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScaleOutPolicyProperty
  = ScaleOutPolicyProperty {cpuUtilizationPercentage :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScaleOutPolicyProperty ::
  Value Prelude.Integer -> ScaleOutPolicyProperty
mkScaleOutPolicyProperty cpuUtilizationPercentage
  = ScaleOutPolicyProperty
      {cpuUtilizationPercentage = cpuUtilizationPercentage}
instance ToResourceProperties ScaleOutPolicyProperty where
  toResourceProperties ScaleOutPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.ScaleOutPolicy",
         supportsTags = Prelude.False,
         properties = ["CpuUtilizationPercentage"
                         JSON..= cpuUtilizationPercentage]}
instance JSON.ToJSON ScaleOutPolicyProperty where
  toJSON ScaleOutPolicyProperty {..}
    = JSON.object
        ["CpuUtilizationPercentage" JSON..= cpuUtilizationPercentage]
instance Property "CpuUtilizationPercentage" ScaleOutPolicyProperty where
  type PropertyType "CpuUtilizationPercentage" ScaleOutPolicyProperty = Value Prelude.Integer
  set newValue ScaleOutPolicyProperty {}
    = ScaleOutPolicyProperty {cpuUtilizationPercentage = newValue, ..}