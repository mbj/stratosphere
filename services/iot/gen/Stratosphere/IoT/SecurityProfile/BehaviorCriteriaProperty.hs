module Stratosphere.IoT.SecurityProfile.BehaviorCriteriaProperty (
        module Exports, BehaviorCriteriaProperty(..),
        mkBehaviorCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MachineLearningDetectionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MetricValueProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.StatisticalThresholdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BehaviorCriteriaProperty
  = BehaviorCriteriaProperty {comparisonOperator :: (Prelude.Maybe (Value Prelude.Text)),
                              consecutiveDatapointsToAlarm :: (Prelude.Maybe (Value Prelude.Integer)),
                              consecutiveDatapointsToClear :: (Prelude.Maybe (Value Prelude.Integer)),
                              durationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                              mlDetectionConfig :: (Prelude.Maybe MachineLearningDetectionConfigProperty),
                              statisticalThreshold :: (Prelude.Maybe StatisticalThresholdProperty),
                              value :: (Prelude.Maybe MetricValueProperty)}
mkBehaviorCriteriaProperty :: BehaviorCriteriaProperty
mkBehaviorCriteriaProperty
  = BehaviorCriteriaProperty
      {comparisonOperator = Prelude.Nothing,
       consecutiveDatapointsToAlarm = Prelude.Nothing,
       consecutiveDatapointsToClear = Prelude.Nothing,
       durationSeconds = Prelude.Nothing,
       mlDetectionConfig = Prelude.Nothing,
       statisticalThreshold = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties BehaviorCriteriaProperty where
  toResourceProperties BehaviorCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.BehaviorCriteria",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                            (JSON..=) "ConsecutiveDatapointsToAlarm"
                              Prelude.<$> consecutiveDatapointsToAlarm,
                            (JSON..=) "ConsecutiveDatapointsToClear"
                              Prelude.<$> consecutiveDatapointsToClear,
                            (JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
                            (JSON..=) "MlDetectionConfig" Prelude.<$> mlDetectionConfig,
                            (JSON..=) "StatisticalThreshold" Prelude.<$> statisticalThreshold,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON BehaviorCriteriaProperty where
  toJSON BehaviorCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
               (JSON..=) "ConsecutiveDatapointsToAlarm"
                 Prelude.<$> consecutiveDatapointsToAlarm,
               (JSON..=) "ConsecutiveDatapointsToClear"
                 Prelude.<$> consecutiveDatapointsToClear,
               (JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
               (JSON..=) "MlDetectionConfig" Prelude.<$> mlDetectionConfig,
               (JSON..=) "StatisticalThreshold" Prelude.<$> statisticalThreshold,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "ComparisonOperator" BehaviorCriteriaProperty where
  type PropertyType "ComparisonOperator" BehaviorCriteriaProperty = Value Prelude.Text
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty
        {comparisonOperator = Prelude.pure newValue, ..}
instance Property "ConsecutiveDatapointsToAlarm" BehaviorCriteriaProperty where
  type PropertyType "ConsecutiveDatapointsToAlarm" BehaviorCriteriaProperty = Value Prelude.Integer
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty
        {consecutiveDatapointsToAlarm = Prelude.pure newValue, ..}
instance Property "ConsecutiveDatapointsToClear" BehaviorCriteriaProperty where
  type PropertyType "ConsecutiveDatapointsToClear" BehaviorCriteriaProperty = Value Prelude.Integer
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty
        {consecutiveDatapointsToClear = Prelude.pure newValue, ..}
instance Property "DurationSeconds" BehaviorCriteriaProperty where
  type PropertyType "DurationSeconds" BehaviorCriteriaProperty = Value Prelude.Integer
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty
        {durationSeconds = Prelude.pure newValue, ..}
instance Property "MlDetectionConfig" BehaviorCriteriaProperty where
  type PropertyType "MlDetectionConfig" BehaviorCriteriaProperty = MachineLearningDetectionConfigProperty
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty
        {mlDetectionConfig = Prelude.pure newValue, ..}
instance Property "StatisticalThreshold" BehaviorCriteriaProperty where
  type PropertyType "StatisticalThreshold" BehaviorCriteriaProperty = StatisticalThresholdProperty
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty
        {statisticalThreshold = Prelude.pure newValue, ..}
instance Property "Value" BehaviorCriteriaProperty where
  type PropertyType "Value" BehaviorCriteriaProperty = MetricValueProperty
  set newValue BehaviorCriteriaProperty {..}
    = BehaviorCriteriaProperty {value = Prelude.pure newValue, ..}