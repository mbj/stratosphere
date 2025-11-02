module Stratosphere.SageMaker.MonitoringSchedule.MonitoringInputProperty (
        module Exports, MonitoringInputProperty(..),
        mkMonitoringInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.BatchTransformInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.EndpointInputProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html>
    MonitoringInputProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html#cfn-sagemaker-monitoringschedule-monitoringinput-batchtransforminput>
                             batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html#cfn-sagemaker-monitoringschedule-monitoringinput-endpointinput>
                             endpointInput :: (Prelude.Maybe EndpointInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringInputProperty :: MonitoringInputProperty
mkMonitoringInputProperty
  = MonitoringInputProperty
      {haddock_workaround_ = (), batchTransformInput = Prelude.Nothing,
       endpointInput = Prelude.Nothing}
instance ToResourceProperties MonitoringInputProperty where
  toResourceProperties MonitoringInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.MonitoringInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                            (JSON..=) "EndpointInput" Prelude.<$> endpointInput])}
instance JSON.ToJSON MonitoringInputProperty where
  toJSON MonitoringInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
               (JSON..=) "EndpointInput" Prelude.<$> endpointInput]))
instance Property "BatchTransformInput" MonitoringInputProperty where
  type PropertyType "BatchTransformInput" MonitoringInputProperty = BatchTransformInputProperty
  set newValue MonitoringInputProperty {..}
    = MonitoringInputProperty
        {batchTransformInput = Prelude.pure newValue, ..}
instance Property "EndpointInput" MonitoringInputProperty where
  type PropertyType "EndpointInput" MonitoringInputProperty = EndpointInputProperty
  set newValue MonitoringInputProperty {..}
    = MonitoringInputProperty
        {endpointInput = Prelude.pure newValue, ..}