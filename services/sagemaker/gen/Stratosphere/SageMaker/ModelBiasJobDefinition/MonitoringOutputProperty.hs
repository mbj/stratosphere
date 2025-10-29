module Stratosphere.SageMaker.ModelBiasJobDefinition.MonitoringOutputProperty (
        module Exports, MonitoringOutputProperty(..),
        mkMonitoringOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.S3OutputProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringOutputProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-monitoringoutput.html>
    MonitoringOutputProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-monitoringoutput.html#cfn-sagemaker-modelbiasjobdefinition-monitoringoutput-s3output>
                              s3Output :: S3OutputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringOutputProperty ::
  S3OutputProperty -> MonitoringOutputProperty
mkMonitoringOutputProperty s3Output
  = MonitoringOutputProperty {s3Output = s3Output}
instance ToResourceProperties MonitoringOutputProperty where
  toResourceProperties MonitoringOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.MonitoringOutput",
         supportsTags = Prelude.False,
         properties = ["S3Output" JSON..= s3Output]}
instance JSON.ToJSON MonitoringOutputProperty where
  toJSON MonitoringOutputProperty {..}
    = JSON.object ["S3Output" JSON..= s3Output]
instance Property "S3Output" MonitoringOutputProperty where
  type PropertyType "S3Output" MonitoringOutputProperty = S3OutputProperty
  set newValue MonitoringOutputProperty {}
    = MonitoringOutputProperty {s3Output = newValue, ..}