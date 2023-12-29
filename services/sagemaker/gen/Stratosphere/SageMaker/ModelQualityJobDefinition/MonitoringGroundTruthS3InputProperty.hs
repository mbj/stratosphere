module Stratosphere.SageMaker.ModelQualityJobDefinition.MonitoringGroundTruthS3InputProperty (
        MonitoringGroundTruthS3InputProperty(..),
        mkMonitoringGroundTruthS3InputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringGroundTruthS3InputProperty
  = MonitoringGroundTruthS3InputProperty {s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringGroundTruthS3InputProperty ::
  Value Prelude.Text -> MonitoringGroundTruthS3InputProperty
mkMonitoringGroundTruthS3InputProperty s3Uri
  = MonitoringGroundTruthS3InputProperty {s3Uri = s3Uri}
instance ToResourceProperties MonitoringGroundTruthS3InputProperty where
  toResourceProperties MonitoringGroundTruthS3InputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.MonitoringGroundTruthS3Input",
         supportsTags = Prelude.False, properties = ["S3Uri" JSON..= s3Uri]}
instance JSON.ToJSON MonitoringGroundTruthS3InputProperty where
  toJSON MonitoringGroundTruthS3InputProperty {..}
    = JSON.object ["S3Uri" JSON..= s3Uri]
instance Property "S3Uri" MonitoringGroundTruthS3InputProperty where
  type PropertyType "S3Uri" MonitoringGroundTruthS3InputProperty = Value Prelude.Text
  set newValue MonitoringGroundTruthS3InputProperty {}
    = MonitoringGroundTruthS3InputProperty {s3Uri = newValue, ..}