module Stratosphere.GameLift.ContainerFleet.ScalingPolicyProperty (
        module Exports, ScalingPolicyProperty(..), mkScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.TargetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingPolicyProperty
  = ScalingPolicyProperty {comparisonOperator :: (Prelude.Maybe (Value Prelude.Text)),
                           evaluationPeriods :: (Prelude.Maybe (Value Prelude.Integer)),
                           metricName :: (Value Prelude.Text),
                           name :: (Value Prelude.Text),
                           policyType :: (Prelude.Maybe (Value Prelude.Text)),
                           scalingAdjustment :: (Prelude.Maybe (Value Prelude.Integer)),
                           scalingAdjustmentType :: (Prelude.Maybe (Value Prelude.Text)),
                           targetConfiguration :: (Prelude.Maybe TargetConfigurationProperty),
                           threshold :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingPolicyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ScalingPolicyProperty
mkScalingPolicyProperty metricName name
  = ScalingPolicyProperty
      {metricName = metricName, name = name,
       comparisonOperator = Prelude.Nothing,
       evaluationPeriods = Prelude.Nothing, policyType = Prelude.Nothing,
       scalingAdjustment = Prelude.Nothing,
       scalingAdjustmentType = Prelude.Nothing,
       targetConfiguration = Prelude.Nothing, threshold = Prelude.Nothing}
instance ToResourceProperties ScalingPolicyProperty where
  toResourceProperties ScalingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.ScalingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                               (JSON..=) "EvaluationPeriods" Prelude.<$> evaluationPeriods,
                               (JSON..=) "PolicyType" Prelude.<$> policyType,
                               (JSON..=) "ScalingAdjustment" Prelude.<$> scalingAdjustment,
                               (JSON..=) "ScalingAdjustmentType"
                                 Prelude.<$> scalingAdjustmentType,
                               (JSON..=) "TargetConfiguration" Prelude.<$> targetConfiguration,
                               (JSON..=) "Threshold" Prelude.<$> threshold]))}
instance JSON.ToJSON ScalingPolicyProperty where
  toJSON ScalingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                  (JSON..=) "EvaluationPeriods" Prelude.<$> evaluationPeriods,
                  (JSON..=) "PolicyType" Prelude.<$> policyType,
                  (JSON..=) "ScalingAdjustment" Prelude.<$> scalingAdjustment,
                  (JSON..=) "ScalingAdjustmentType"
                    Prelude.<$> scalingAdjustmentType,
                  (JSON..=) "TargetConfiguration" Prelude.<$> targetConfiguration,
                  (JSON..=) "Threshold" Prelude.<$> threshold])))
instance Property "ComparisonOperator" ScalingPolicyProperty where
  type PropertyType "ComparisonOperator" ScalingPolicyProperty = Value Prelude.Text
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty
        {comparisonOperator = Prelude.pure newValue, ..}
instance Property "EvaluationPeriods" ScalingPolicyProperty where
  type PropertyType "EvaluationPeriods" ScalingPolicyProperty = Value Prelude.Integer
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty
        {evaluationPeriods = Prelude.pure newValue, ..}
instance Property "MetricName" ScalingPolicyProperty where
  type PropertyType "MetricName" ScalingPolicyProperty = Value Prelude.Text
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty {metricName = newValue, ..}
instance Property "Name" ScalingPolicyProperty where
  type PropertyType "Name" ScalingPolicyProperty = Value Prelude.Text
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty {name = newValue, ..}
instance Property "PolicyType" ScalingPolicyProperty where
  type PropertyType "PolicyType" ScalingPolicyProperty = Value Prelude.Text
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty {policyType = Prelude.pure newValue, ..}
instance Property "ScalingAdjustment" ScalingPolicyProperty where
  type PropertyType "ScalingAdjustment" ScalingPolicyProperty = Value Prelude.Integer
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty
        {scalingAdjustment = Prelude.pure newValue, ..}
instance Property "ScalingAdjustmentType" ScalingPolicyProperty where
  type PropertyType "ScalingAdjustmentType" ScalingPolicyProperty = Value Prelude.Text
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty
        {scalingAdjustmentType = Prelude.pure newValue, ..}
instance Property "TargetConfiguration" ScalingPolicyProperty where
  type PropertyType "TargetConfiguration" ScalingPolicyProperty = TargetConfigurationProperty
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty
        {targetConfiguration = Prelude.pure newValue, ..}
instance Property "Threshold" ScalingPolicyProperty where
  type PropertyType "Threshold" ScalingPolicyProperty = Value Prelude.Double
  set newValue ScalingPolicyProperty {..}
    = ScalingPolicyProperty {threshold = Prelude.pure newValue, ..}