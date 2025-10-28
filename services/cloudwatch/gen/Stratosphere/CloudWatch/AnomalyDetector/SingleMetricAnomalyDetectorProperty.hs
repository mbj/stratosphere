module Stratosphere.CloudWatch.AnomalyDetector.SingleMetricAnomalyDetectorProperty (
        module Exports, SingleMetricAnomalyDetectorProperty(..),
        mkSingleMetricAnomalyDetectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.DimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleMetricAnomalyDetectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-singlemetricanomalydetector.html>
    SingleMetricAnomalyDetectorProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-singlemetricanomalydetector.html#cfn-cloudwatch-anomalydetector-singlemetricanomalydetector-accountid>
                                         accountId :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-singlemetricanomalydetector.html#cfn-cloudwatch-anomalydetector-singlemetricanomalydetector-dimensions>
                                         dimensions :: (Prelude.Maybe [DimensionProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-singlemetricanomalydetector.html#cfn-cloudwatch-anomalydetector-singlemetricanomalydetector-metricname>
                                         metricName :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-singlemetricanomalydetector.html#cfn-cloudwatch-anomalydetector-singlemetricanomalydetector-namespace>
                                         namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-singlemetricanomalydetector.html#cfn-cloudwatch-anomalydetector-singlemetricanomalydetector-stat>
                                         stat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleMetricAnomalyDetectorProperty ::
  SingleMetricAnomalyDetectorProperty
mkSingleMetricAnomalyDetectorProperty
  = SingleMetricAnomalyDetectorProperty
      {haddock_workaround_ = (), accountId = Prelude.Nothing,
       dimensions = Prelude.Nothing, metricName = Prelude.Nothing,
       namespace = Prelude.Nothing, stat = Prelude.Nothing}
instance ToResourceProperties SingleMetricAnomalyDetectorProperty where
  toResourceProperties SingleMetricAnomalyDetectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector.SingleMetricAnomalyDetector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountId" Prelude.<$> accountId,
                            (JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Namespace" Prelude.<$> namespace,
                            (JSON..=) "Stat" Prelude.<$> stat])}
instance JSON.ToJSON SingleMetricAnomalyDetectorProperty where
  toJSON SingleMetricAnomalyDetectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountId" Prelude.<$> accountId,
               (JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Namespace" Prelude.<$> namespace,
               (JSON..=) "Stat" Prelude.<$> stat]))
instance Property "AccountId" SingleMetricAnomalyDetectorProperty where
  type PropertyType "AccountId" SingleMetricAnomalyDetectorProperty = Value Prelude.Text
  set newValue SingleMetricAnomalyDetectorProperty {..}
    = SingleMetricAnomalyDetectorProperty
        {accountId = Prelude.pure newValue, ..}
instance Property "Dimensions" SingleMetricAnomalyDetectorProperty where
  type PropertyType "Dimensions" SingleMetricAnomalyDetectorProperty = [DimensionProperty]
  set newValue SingleMetricAnomalyDetectorProperty {..}
    = SingleMetricAnomalyDetectorProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" SingleMetricAnomalyDetectorProperty where
  type PropertyType "MetricName" SingleMetricAnomalyDetectorProperty = Value Prelude.Text
  set newValue SingleMetricAnomalyDetectorProperty {..}
    = SingleMetricAnomalyDetectorProperty
        {metricName = Prelude.pure newValue, ..}
instance Property "Namespace" SingleMetricAnomalyDetectorProperty where
  type PropertyType "Namespace" SingleMetricAnomalyDetectorProperty = Value Prelude.Text
  set newValue SingleMetricAnomalyDetectorProperty {..}
    = SingleMetricAnomalyDetectorProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "Stat" SingleMetricAnomalyDetectorProperty where
  type PropertyType "Stat" SingleMetricAnomalyDetectorProperty = Value Prelude.Text
  set newValue SingleMetricAnomalyDetectorProperty {..}
    = SingleMetricAnomalyDetectorProperty
        {stat = Prelude.pure newValue, ..}