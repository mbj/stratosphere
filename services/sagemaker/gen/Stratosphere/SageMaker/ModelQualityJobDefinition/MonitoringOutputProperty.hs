module Stratosphere.SageMaker.ModelQualityJobDefinition.MonitoringOutputProperty (
        module Exports, MonitoringOutputProperty(..),
        mkMonitoringOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.S3OutputProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringOutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-monitoringoutput.html>
    MonitoringOutputProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-monitoringoutput.html#cfn-sagemaker-modelqualityjobdefinition-monitoringoutput-s3output>
                              s3Output :: S3OutputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringOutputProperty ::
  S3OutputProperty -> MonitoringOutputProperty
mkMonitoringOutputProperty s3Output
  = MonitoringOutputProperty
      {haddock_workaround_ = (), s3Output = s3Output}
instance ToResourceProperties MonitoringOutputProperty where
  toResourceProperties MonitoringOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.MonitoringOutput",
         supportsTags = Prelude.False,
         properties = ["S3Output" JSON..= s3Output]}
instance JSON.ToJSON MonitoringOutputProperty where
  toJSON MonitoringOutputProperty {..}
    = JSON.object ["S3Output" JSON..= s3Output]
instance Property "S3Output" MonitoringOutputProperty where
  type PropertyType "S3Output" MonitoringOutputProperty = S3OutputProperty
  set newValue MonitoringOutputProperty {..}
    = MonitoringOutputProperty {s3Output = newValue, ..}