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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html>
    BehaviorCriteriaProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-comparisonoperator>
                              comparisonOperator :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-consecutivedatapointstoalarm>
                              consecutiveDatapointsToAlarm :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-consecutivedatapointstoclear>
                              consecutiveDatapointsToClear :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-durationseconds>
                              durationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-mldetectionconfig>
                              mlDetectionConfig :: (Prelude.Maybe MachineLearningDetectionConfigProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-statisticalthreshold>
                              statisticalThreshold :: (Prelude.Maybe StatisticalThresholdProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behaviorcriteria.html#cfn-iot-securityprofile-behaviorcriteria-value>
                              value :: (Prelude.Maybe MetricValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBehaviorCriteriaProperty :: BehaviorCriteriaProperty
mkBehaviorCriteriaProperty
  = BehaviorCriteriaProperty
      {haddock_workaround_ = (), comparisonOperator = Prelude.Nothing,
       consecutiveDatapointsToAlarm = Prelude.Nothing,
       consecutiveDatapointsToClear = Prelude.Nothing,
       durationSeconds = Prelude.Nothing,
       mlDetectionConfig = Prelude.Nothing,
       statisticalThreshold = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties BehaviorCriteriaProperty where
  toResourceProperties BehaviorCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.BehaviorCriteria",
         supportsTags = Prelude.False,
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