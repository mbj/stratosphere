module Stratosphere.AutoScaling.ScalingPolicy.StepAdjustmentProperty (
        StepAdjustmentProperty(..), mkStepAdjustmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepAdjustmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustment.html>
    StepAdjustmentProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustment.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervallowerbound>
                            metricIntervalLowerBound :: (Prelude.Maybe (Value Prelude.Double)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustment.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervalupperbound>
                            metricIntervalUpperBound :: (Prelude.Maybe (Value Prelude.Double)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustment.html#cfn-autoscaling-scalingpolicy-stepadjustment-scalingadjustment>
                            scalingAdjustment :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepAdjustmentProperty ::
  Value Prelude.Integer -> StepAdjustmentProperty
mkStepAdjustmentProperty scalingAdjustment
  = StepAdjustmentProperty
      {haddock_workaround_ = (), scalingAdjustment = scalingAdjustment,
       metricIntervalLowerBound = Prelude.Nothing,
       metricIntervalUpperBound = Prelude.Nothing}
instance ToResourceProperties StepAdjustmentProperty where
  toResourceProperties StepAdjustmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.StepAdjustment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScalingAdjustment" JSON..= scalingAdjustment]
                           (Prelude.catMaybes
                              [(JSON..=) "MetricIntervalLowerBound"
                                 Prelude.<$> metricIntervalLowerBound,
                               (JSON..=) "MetricIntervalUpperBound"
                                 Prelude.<$> metricIntervalUpperBound]))}
instance JSON.ToJSON StepAdjustmentProperty where
  toJSON StepAdjustmentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScalingAdjustment" JSON..= scalingAdjustment]
              (Prelude.catMaybes
                 [(JSON..=) "MetricIntervalLowerBound"
                    Prelude.<$> metricIntervalLowerBound,
                  (JSON..=) "MetricIntervalUpperBound"
                    Prelude.<$> metricIntervalUpperBound])))
instance Property "MetricIntervalLowerBound" StepAdjustmentProperty where
  type PropertyType "MetricIntervalLowerBound" StepAdjustmentProperty = Value Prelude.Double
  set newValue StepAdjustmentProperty {..}
    = StepAdjustmentProperty
        {metricIntervalLowerBound = Prelude.pure newValue, ..}
instance Property "MetricIntervalUpperBound" StepAdjustmentProperty where
  type PropertyType "MetricIntervalUpperBound" StepAdjustmentProperty = Value Prelude.Double
  set newValue StepAdjustmentProperty {..}
    = StepAdjustmentProperty
        {metricIntervalUpperBound = Prelude.pure newValue, ..}
instance Property "ScalingAdjustment" StepAdjustmentProperty where
  type PropertyType "ScalingAdjustment" StepAdjustmentProperty = Value Prelude.Integer
  set newValue StepAdjustmentProperty {..}
    = StepAdjustmentProperty {scalingAdjustment = newValue, ..}