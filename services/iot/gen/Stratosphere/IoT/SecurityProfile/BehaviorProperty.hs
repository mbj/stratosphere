module Stratosphere.IoT.SecurityProfile.BehaviorProperty (
        module Exports, BehaviorProperty(..), mkBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.BehaviorCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BehaviorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html>
    BehaviorProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html#cfn-iot-securityprofile-behavior-criteria>
                      criteria :: (Prelude.Maybe BehaviorCriteriaProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html#cfn-iot-securityprofile-behavior-exportmetric>
                      exportMetric :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html#cfn-iot-securityprofile-behavior-metric>
                      metric :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html#cfn-iot-securityprofile-behavior-metricdimension>
                      metricDimension :: (Prelude.Maybe MetricDimensionProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html#cfn-iot-securityprofile-behavior-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-behavior.html#cfn-iot-securityprofile-behavior-suppressalerts>
                      suppressAlerts :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBehaviorProperty :: Value Prelude.Text -> BehaviorProperty
mkBehaviorProperty name
  = BehaviorProperty
      {haddock_workaround_ = (), name = name, criteria = Prelude.Nothing,
       exportMetric = Prelude.Nothing, metric = Prelude.Nothing,
       metricDimension = Prelude.Nothing,
       suppressAlerts = Prelude.Nothing}
instance ToResourceProperties BehaviorProperty where
  toResourceProperties BehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.Behavior",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Criteria" Prelude.<$> criteria,
                               (JSON..=) "ExportMetric" Prelude.<$> exportMetric,
                               (JSON..=) "Metric" Prelude.<$> metric,
                               (JSON..=) "MetricDimension" Prelude.<$> metricDimension,
                               (JSON..=) "SuppressAlerts" Prelude.<$> suppressAlerts]))}
instance JSON.ToJSON BehaviorProperty where
  toJSON BehaviorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Criteria" Prelude.<$> criteria,
                  (JSON..=) "ExportMetric" Prelude.<$> exportMetric,
                  (JSON..=) "Metric" Prelude.<$> metric,
                  (JSON..=) "MetricDimension" Prelude.<$> metricDimension,
                  (JSON..=) "SuppressAlerts" Prelude.<$> suppressAlerts])))
instance Property "Criteria" BehaviorProperty where
  type PropertyType "Criteria" BehaviorProperty = BehaviorCriteriaProperty
  set newValue BehaviorProperty {..}
    = BehaviorProperty {criteria = Prelude.pure newValue, ..}
instance Property "ExportMetric" BehaviorProperty where
  type PropertyType "ExportMetric" BehaviorProperty = Value Prelude.Bool
  set newValue BehaviorProperty {..}
    = BehaviorProperty {exportMetric = Prelude.pure newValue, ..}
instance Property "Metric" BehaviorProperty where
  type PropertyType "Metric" BehaviorProperty = Value Prelude.Text
  set newValue BehaviorProperty {..}
    = BehaviorProperty {metric = Prelude.pure newValue, ..}
instance Property "MetricDimension" BehaviorProperty where
  type PropertyType "MetricDimension" BehaviorProperty = MetricDimensionProperty
  set newValue BehaviorProperty {..}
    = BehaviorProperty {metricDimension = Prelude.pure newValue, ..}
instance Property "Name" BehaviorProperty where
  type PropertyType "Name" BehaviorProperty = Value Prelude.Text
  set newValue BehaviorProperty {..}
    = BehaviorProperty {name = newValue, ..}
instance Property "SuppressAlerts" BehaviorProperty where
  type PropertyType "SuppressAlerts" BehaviorProperty = Value Prelude.Bool
  set newValue BehaviorProperty {..}
    = BehaviorProperty {suppressAlerts = Prelude.pure newValue, ..}