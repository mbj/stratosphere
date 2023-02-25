module Stratosphere.OpsWorks.Layer.AutoScalingThresholdsProperty (
        AutoScalingThresholdsProperty(..), mkAutoScalingThresholdsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingThresholdsProperty
  = AutoScalingThresholdsProperty {cpuThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                   ignoreMetricsTime :: (Prelude.Maybe (Value Prelude.Integer)),
                                   instanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                   loadThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                   memoryThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                   thresholdsWaitTime :: (Prelude.Maybe (Value Prelude.Integer))}
mkAutoScalingThresholdsProperty :: AutoScalingThresholdsProperty
mkAutoScalingThresholdsProperty
  = AutoScalingThresholdsProperty
      {cpuThreshold = Prelude.Nothing,
       ignoreMetricsTime = Prelude.Nothing,
       instanceCount = Prelude.Nothing, loadThreshold = Prelude.Nothing,
       memoryThreshold = Prelude.Nothing,
       thresholdsWaitTime = Prelude.Nothing}
instance ToResourceProperties AutoScalingThresholdsProperty where
  toResourceProperties AutoScalingThresholdsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.AutoScalingThresholds",
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