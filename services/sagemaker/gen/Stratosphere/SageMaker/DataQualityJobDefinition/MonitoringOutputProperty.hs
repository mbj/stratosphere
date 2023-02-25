module Stratosphere.SageMaker.DataQualityJobDefinition.MonitoringOutputProperty (
        module Exports, MonitoringOutputProperty(..),
        mkMonitoringOutputProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.S3OutputProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringOutputProperty
  = MonitoringOutputProperty {s3Output :: S3OutputProperty}
mkMonitoringOutputProperty ::
  S3OutputProperty -> MonitoringOutputProperty
mkMonitoringOutputProperty s3Output
  = MonitoringOutputProperty {s3Output = s3Output}
instance ToResourceProperties MonitoringOutputProperty where
  toResourceProperties MonitoringOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.MonitoringOutput",
         properties = ["S3Output" JSON..= s3Output]}
instance JSON.ToJSON MonitoringOutputProperty where
  toJSON MonitoringOutputProperty {..}
    = JSON.object ["S3Output" JSON..= s3Output]
instance Property "S3Output" MonitoringOutputProperty where
  type PropertyType "S3Output" MonitoringOutputProperty = S3OutputProperty
  set newValue MonitoringOutputProperty {}
    = MonitoringOutputProperty {s3Output = newValue, ..}