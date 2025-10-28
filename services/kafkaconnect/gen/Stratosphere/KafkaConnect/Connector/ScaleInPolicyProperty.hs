module Stratosphere.KafkaConnect.Connector.ScaleInPolicyProperty (
        ScaleInPolicyProperty(..), mkScaleInPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScaleInPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-scaleinpolicy.html>
    ScaleInPolicyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-scaleinpolicy.html#cfn-kafkaconnect-connector-scaleinpolicy-cpuutilizationpercentage>
                           cpuUtilizationPercentage :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScaleInPolicyProperty ::
  Value Prelude.Integer -> ScaleInPolicyProperty
mkScaleInPolicyProperty cpuUtilizationPercentage
  = ScaleInPolicyProperty
      {haddock_workaround_ = (),
       cpuUtilizationPercentage = cpuUtilizationPercentage}
instance ToResourceProperties ScaleInPolicyProperty where
  toResourceProperties ScaleInPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.ScaleInPolicy",
         supportsTags = Prelude.False,
         properties = ["CpuUtilizationPercentage"
                         JSON..= cpuUtilizationPercentage]}
instance JSON.ToJSON ScaleInPolicyProperty where
  toJSON ScaleInPolicyProperty {..}
    = JSON.object
        ["CpuUtilizationPercentage" JSON..= cpuUtilizationPercentage]
instance Property "CpuUtilizationPercentage" ScaleInPolicyProperty where
  type PropertyType "CpuUtilizationPercentage" ScaleInPolicyProperty = Value Prelude.Integer
  set newValue ScaleInPolicyProperty {..}
    = ScaleInPolicyProperty {cpuUtilizationPercentage = newValue, ..}