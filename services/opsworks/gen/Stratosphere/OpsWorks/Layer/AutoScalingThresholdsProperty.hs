module Stratosphere.OpsWorks.Layer.AutoScalingThresholdsProperty (
        AutoScalingThresholdsProperty(..), mkAutoScalingThresholdsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingThresholdsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html>
    AutoScalingThresholdsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-cputhreshold>
                                   cpuThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-ignoremetricstime>
                                   ignoreMetricsTime :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-instancecount>
                                   instanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-loadthreshold>
                                   loadThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-memorythreshold>
                                   memoryThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-thresholdwaittime>
                                   thresholdsWaitTime :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingThresholdsProperty :: AutoScalingThresholdsProperty
mkAutoScalingThresholdsProperty
  = AutoScalingThresholdsProperty
      {haddock_workaround_ = (), cpuThreshold = Prelude.Nothing,
       ignoreMetricsTime = Prelude.Nothing,
       instanceCount = Prelude.Nothing, loadThreshold = Prelude.Nothing,
       memoryThreshold = Prelude.Nothing,
       thresholdsWaitTime = Prelude.Nothing}
instance ToResourceProperties AutoScalingThresholdsProperty where
  toResourceProperties AutoScalingThresholdsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.AutoScalingThresholds",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CpuThreshold" Prelude.<$> cpuThreshold,
                            (JSON..=) "IgnoreMetricsTime" Prelude.<$> ignoreMetricsTime,
                            (JSON..=) "InstanceCount" Prelude.<$> instanceCount,
                            (JSON..=) "LoadThreshold" Prelude.<$> loadThreshold,
                            (JSON..=) "MemoryThreshold" Prelude.<$> memoryThreshold,
                            (JSON..=) "ThresholdsWaitTime" Prelude.<$> thresholdsWaitTime])}
instance JSON.ToJSON AutoScalingThresholdsProperty where
  toJSON AutoScalingThresholdsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CpuThreshold" Prelude.<$> cpuThreshold,
               (JSON..=) "IgnoreMetricsTime" Prelude.<$> ignoreMetricsTime,
               (JSON..=) "InstanceCount" Prelude.<$> instanceCount,
               (JSON..=) "LoadThreshold" Prelude.<$> loadThreshold,
               (JSON..=) "MemoryThreshold" Prelude.<$> memoryThreshold,
               (JSON..=) "ThresholdsWaitTime" Prelude.<$> thresholdsWaitTime]))
instance Property "CpuThreshold" AutoScalingThresholdsProperty where
  type PropertyType "CpuThreshold" AutoScalingThresholdsProperty = Value Prelude.Double
  set newValue AutoScalingThresholdsProperty {..}
    = AutoScalingThresholdsProperty
        {cpuThreshold = Prelude.pure newValue, ..}
instance Property "IgnoreMetricsTime" AutoScalingThresholdsProperty where
  type PropertyType "IgnoreMetricsTime" AutoScalingThresholdsProperty = Value Prelude.Integer
  set newValue AutoScalingThresholdsProperty {..}
    = AutoScalingThresholdsProperty
        {ignoreMetricsTime = Prelude.pure newValue, ..}
instance Property "InstanceCount" AutoScalingThresholdsProperty where
  type PropertyType "InstanceCount" AutoScalingThresholdsProperty = Value Prelude.Integer
  set newValue AutoScalingThresholdsProperty {..}
    = AutoScalingThresholdsProperty
        {instanceCount = Prelude.pure newValue, ..}
instance Property "LoadThreshold" AutoScalingThresholdsProperty where
  type PropertyType "LoadThreshold" AutoScalingThresholdsProperty = Value Prelude.Double
  set newValue AutoScalingThresholdsProperty {..}
    = AutoScalingThresholdsProperty
        {loadThreshold = Prelude.pure newValue, ..}
instance Property "MemoryThreshold" AutoScalingThresholdsProperty where
  type PropertyType "MemoryThreshold" AutoScalingThresholdsProperty = Value Prelude.Double
  set newValue AutoScalingThresholdsProperty {..}
    = AutoScalingThresholdsProperty
        {memoryThreshold = Prelude.pure newValue, ..}
instance Property "ThresholdsWaitTime" AutoScalingThresholdsProperty where
  type PropertyType "ThresholdsWaitTime" AutoScalingThresholdsProperty = Value Prelude.Integer
  set newValue AutoScalingThresholdsProperty {..}
    = AutoScalingThresholdsProperty
        {thresholdsWaitTime = Prelude.pure newValue, ..}