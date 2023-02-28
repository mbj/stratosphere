module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingMetricSpecificationProperty (
        module Exports, PredictiveScalingMetricSpecificationProperty(..),
        mkPredictiveScalingMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingCustomizedCapacityMetricProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingCustomizedLoadMetricProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingCustomizedScalingMetricProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingPredefinedLoadMetricProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingPredefinedMetricPairProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingPredefinedScalingMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingMetricSpecificationProperty
  = PredictiveScalingMetricSpecificationProperty {customizedCapacityMetricSpecification :: (Prelude.Maybe PredictiveScalingCustomizedCapacityMetricProperty),
                                                  customizedLoadMetricSpecification :: (Prelude.Maybe PredictiveScalingCustomizedLoadMetricProperty),
                                                  customizedScalingMetricSpecification :: (Prelude.Maybe PredictiveScalingCustomizedScalingMetricProperty),
                                                  predefinedLoadMetricSpecification :: (Prelude.Maybe PredictiveScalingPredefinedLoadMetricProperty),
                                                  predefinedMetricPairSpecification :: (Prelude.Maybe PredictiveScalingPredefinedMetricPairProperty),
                                                  predefinedScalingMetricSpecification :: (Prelude.Maybe PredictiveScalingPredefinedScalingMetricProperty),
                                                  targetValue :: (Value Prelude.Double)}
mkPredictiveScalingMetricSpecificationProperty ::
  Value Prelude.Double
  -> PredictiveScalingMetricSpecificationProperty
mkPredictiveScalingMetricSpecificationProperty targetValue
  = PredictiveScalingMetricSpecificationProperty
      {targetValue = targetValue,
       customizedCapacityMetricSpecification = Prelude.Nothing,
       customizedLoadMetricSpecification = Prelude.Nothing,
       customizedScalingMetricSpecification = Prelude.Nothing,
       predefinedLoadMetricSpecification = Prelude.Nothing,
       predefinedMetricPairSpecification = Prelude.Nothing,
       predefinedScalingMetricSpecification = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingMetricSpecificationProperty where
  toResourceProperties
    PredictiveScalingMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.PredictiveScalingMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetValue" JSON..= targetValue]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomizedCapacityMetricSpecification"
                                 Prelude.<$> customizedCapacityMetricSpecification,
                               (JSON..=) "CustomizedLoadMetricSpecification"
                                 Prelude.<$> customizedLoadMetricSpecification,
                               (JSON..=) "CustomizedScalingMetricSpecification"
                                 Prelude.<$> customizedScalingMetricSpecification,
                               (JSON..=) "PredefinedLoadMetricSpecification"
                                 Prelude.<$> predefinedLoadMetricSpecification,
                               (JSON..=) "PredefinedMetricPairSpecification"
                                 Prelude.<$> predefinedMetricPairSpecification,
                               (JSON..=) "PredefinedScalingMetricSpecification"
                                 Prelude.<$> predefinedScalingMetricSpecification]))}
instance JSON.ToJSON PredictiveScalingMetricSpecificationProperty where
  toJSON PredictiveScalingMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetValue" JSON..= targetValue]
              (Prelude.catMaybes
                 [(JSON..=) "CustomizedCapacityMetricSpecification"
                    Prelude.<$> customizedCapacityMetricSpecification,
                  (JSON..=) "CustomizedLoadMetricSpecification"
                    Prelude.<$> customizedLoadMetricSpecification,
                  (JSON..=) "CustomizedScalingMetricSpecification"
                    Prelude.<$> customizedScalingMetricSpecification,
                  (JSON..=) "PredefinedLoadMetricSpecification"
                    Prelude.<$> predefinedLoadMetricSpecification,
                  (JSON..=) "PredefinedMetricPairSpecification"
                    Prelude.<$> predefinedMetricPairSpecification,
                  (JSON..=) "PredefinedScalingMetricSpecification"
                    Prelude.<$> predefinedScalingMetricSpecification])))
instance Property "CustomizedCapacityMetricSpecification" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "CustomizedCapacityMetricSpecification" PredictiveScalingMetricSpecificationProperty = PredictiveScalingCustomizedCapacityMetricProperty
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {customizedCapacityMetricSpecification = Prelude.pure newValue, ..}
instance Property "CustomizedLoadMetricSpecification" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "CustomizedLoadMetricSpecification" PredictiveScalingMetricSpecificationProperty = PredictiveScalingCustomizedLoadMetricProperty
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {customizedLoadMetricSpecification = Prelude.pure newValue, ..}
instance Property "CustomizedScalingMetricSpecification" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "CustomizedScalingMetricSpecification" PredictiveScalingMetricSpecificationProperty = PredictiveScalingCustomizedScalingMetricProperty
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {customizedScalingMetricSpecification = Prelude.pure newValue, ..}
instance Property "PredefinedLoadMetricSpecification" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "PredefinedLoadMetricSpecification" PredictiveScalingMetricSpecificationProperty = PredictiveScalingPredefinedLoadMetricProperty
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {predefinedLoadMetricSpecification = Prelude.pure newValue, ..}
instance Property "PredefinedMetricPairSpecification" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "PredefinedMetricPairSpecification" PredictiveScalingMetricSpecificationProperty = PredictiveScalingPredefinedMetricPairProperty
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {predefinedMetricPairSpecification = Prelude.pure newValue, ..}
instance Property "PredefinedScalingMetricSpecification" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "PredefinedScalingMetricSpecification" PredictiveScalingMetricSpecificationProperty = PredictiveScalingPredefinedScalingMetricProperty
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {predefinedScalingMetricSpecification = Prelude.pure newValue, ..}
instance Property "TargetValue" PredictiveScalingMetricSpecificationProperty where
  type PropertyType "TargetValue" PredictiveScalingMetricSpecificationProperty = Value Prelude.Double
  set newValue PredictiveScalingMetricSpecificationProperty {..}
    = PredictiveScalingMetricSpecificationProperty
        {targetValue = newValue, ..}