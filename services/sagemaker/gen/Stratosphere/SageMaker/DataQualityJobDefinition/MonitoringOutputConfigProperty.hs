module Stratosphere.SageMaker.DataQualityJobDefinition.MonitoringOutputConfigProperty (
        module Exports, MonitoringOutputConfigProperty(..),
        mkMonitoringOutputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.MonitoringOutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringOutputConfigProperty
  = MonitoringOutputConfigProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                    monitoringOutputs :: [MonitoringOutputProperty]}
mkMonitoringOutputConfigProperty ::
  [MonitoringOutputProperty] -> MonitoringOutputConfigProperty
mkMonitoringOutputConfigProperty monitoringOutputs
  = MonitoringOutputConfigProperty
      {monitoringOutputs = monitoringOutputs, kmsKeyId = Prelude.Nothing}
instance ToResourceProperties MonitoringOutputConfigProperty where
  toResourceProperties MonitoringOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.MonitoringOutputConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MonitoringOutputs" JSON..= monitoringOutputs]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON MonitoringOutputConfigProperty where
  toJSON MonitoringOutputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MonitoringOutputs" JSON..= monitoringOutputs]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" MonitoringOutputConfigProperty where
  type PropertyType "KmsKeyId" MonitoringOutputConfigProperty = Value Prelude.Text
  set newValue MonitoringOutputConfigProperty {..}
    = MonitoringOutputConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MonitoringOutputs" MonitoringOutputConfigProperty where
  type PropertyType "MonitoringOutputs" MonitoringOutputConfigProperty = [MonitoringOutputProperty]
  set newValue MonitoringOutputConfigProperty {..}
    = MonitoringOutputConfigProperty {monitoringOutputs = newValue, ..}