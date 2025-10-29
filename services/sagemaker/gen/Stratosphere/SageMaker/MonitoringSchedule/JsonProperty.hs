module Stratosphere.SageMaker.MonitoringSchedule.JsonProperty (
        JsonProperty(..), mkJsonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-json.html>
    JsonProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-json.html#cfn-sagemaker-monitoringschedule-json-line>
                  line :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonProperty :: JsonProperty
mkJsonProperty = JsonProperty {line = Prelude.Nothing}
instance ToResourceProperties JsonProperty where
  toResourceProperties JsonProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.Json",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Line" Prelude.<$> line])}
instance JSON.ToJSON JsonProperty where
  toJSON JsonProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Line" Prelude.<$> line]))
instance Property "Line" JsonProperty where
  type PropertyType "Line" JsonProperty = Value Prelude.Bool
  set newValue JsonProperty {}
    = JsonProperty {line = Prelude.pure newValue, ..}