module Stratosphere.LookoutMetrics.AnomalyDetector.CloudwatchConfigProperty (
        CloudwatchConfigProperty(..), mkCloudwatchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudwatchConfigProperty
  = CloudwatchConfigProperty {roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudwatchConfigProperty ::
  Value Prelude.Text -> CloudwatchConfigProperty
mkCloudwatchConfigProperty roleArn
  = CloudwatchConfigProperty {roleArn = roleArn}
instance ToResourceProperties CloudwatchConfigProperty where
  toResourceProperties CloudwatchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.CloudwatchConfig",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn]}
instance JSON.ToJSON CloudwatchConfigProperty where
  toJSON CloudwatchConfigProperty {..}
    = JSON.object ["RoleArn" JSON..= roleArn]
instance Property "RoleArn" CloudwatchConfigProperty where
  type PropertyType "RoleArn" CloudwatchConfigProperty = Value Prelude.Text
  set newValue CloudwatchConfigProperty {}
    = CloudwatchConfigProperty {roleArn = newValue, ..}