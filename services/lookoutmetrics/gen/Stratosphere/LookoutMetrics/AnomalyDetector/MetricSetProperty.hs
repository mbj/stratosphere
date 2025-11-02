module Stratosphere.LookoutMetrics.AnomalyDetector.MetricSetProperty (
        module Exports, MetricSetProperty(..), mkMetricSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.MetricProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.MetricSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.TimestampColumnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html>
    MetricSetProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-dimensionlist>
                       dimensionList :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-metriclist>
                       metricList :: [MetricProperty],
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-metricsetdescription>
                       metricSetDescription :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-metricsetfrequency>
                       metricSetFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-metricsetname>
                       metricSetName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-metricsource>
                       metricSource :: MetricSourceProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-offset>
                       offset :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-timestampcolumn>
                       timestampColumn :: (Prelude.Maybe TimestampColumnProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricset.html#cfn-lookoutmetrics-anomalydetector-metricset-timezone>
                       timezone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricSetProperty ::
  [MetricProperty]
  -> Value Prelude.Text -> MetricSourceProperty -> MetricSetProperty
mkMetricSetProperty metricList metricSetName metricSource
  = MetricSetProperty
      {haddock_workaround_ = (), metricList = metricList,
       metricSetName = metricSetName, metricSource = metricSource,
       dimensionList = Prelude.Nothing,
       metricSetDescription = Prelude.Nothing,
       metricSetFrequency = Prelude.Nothing, offset = Prelude.Nothing,
       timestampColumn = Prelude.Nothing, timezone = Prelude.Nothing}
instance ToResourceProperties MetricSetProperty where
  toResourceProperties MetricSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.MetricSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricList" JSON..= metricList,
                            "MetricSetName" JSON..= metricSetName,
                            "MetricSource" JSON..= metricSource]
                           (Prelude.catMaybes
                              [(JSON..=) "DimensionList" Prelude.<$> dimensionList,
                               (JSON..=) "MetricSetDescription" Prelude.<$> metricSetDescription,
                               (JSON..=) "MetricSetFrequency" Prelude.<$> metricSetFrequency,
                               (JSON..=) "Offset" Prelude.<$> offset,
                               (JSON..=) "TimestampColumn" Prelude.<$> timestampColumn,
                               (JSON..=) "Timezone" Prelude.<$> timezone]))}
instance JSON.ToJSON MetricSetProperty where
  toJSON MetricSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricList" JSON..= metricList,
               "MetricSetName" JSON..= metricSetName,
               "MetricSource" JSON..= metricSource]
              (Prelude.catMaybes
                 [(JSON..=) "DimensionList" Prelude.<$> dimensionList,
                  (JSON..=) "MetricSetDescription" Prelude.<$> metricSetDescription,
                  (JSON..=) "MetricSetFrequency" Prelude.<$> metricSetFrequency,
                  (JSON..=) "Offset" Prelude.<$> offset,
                  (JSON..=) "TimestampColumn" Prelude.<$> timestampColumn,
                  (JSON..=) "Timezone" Prelude.<$> timezone])))
instance Property "DimensionList" MetricSetProperty where
  type PropertyType "DimensionList" MetricSetProperty = ValueList Prelude.Text
  set newValue MetricSetProperty {..}
    = MetricSetProperty {dimensionList = Prelude.pure newValue, ..}
instance Property "MetricList" MetricSetProperty where
  type PropertyType "MetricList" MetricSetProperty = [MetricProperty]
  set newValue MetricSetProperty {..}
    = MetricSetProperty {metricList = newValue, ..}
instance Property "MetricSetDescription" MetricSetProperty where
  type PropertyType "MetricSetDescription" MetricSetProperty = Value Prelude.Text
  set newValue MetricSetProperty {..}
    = MetricSetProperty
        {metricSetDescription = Prelude.pure newValue, ..}
instance Property "MetricSetFrequency" MetricSetProperty where
  type PropertyType "MetricSetFrequency" MetricSetProperty = Value Prelude.Text
  set newValue MetricSetProperty {..}
    = MetricSetProperty
        {metricSetFrequency = Prelude.pure newValue, ..}
instance Property "MetricSetName" MetricSetProperty where
  type PropertyType "MetricSetName" MetricSetProperty = Value Prelude.Text
  set newValue MetricSetProperty {..}
    = MetricSetProperty {metricSetName = newValue, ..}
instance Property "MetricSource" MetricSetProperty where
  type PropertyType "MetricSource" MetricSetProperty = MetricSourceProperty
  set newValue MetricSetProperty {..}
    = MetricSetProperty {metricSource = newValue, ..}
instance Property "Offset" MetricSetProperty where
  type PropertyType "Offset" MetricSetProperty = Value Prelude.Integer
  set newValue MetricSetProperty {..}
    = MetricSetProperty {offset = Prelude.pure newValue, ..}
instance Property "TimestampColumn" MetricSetProperty where
  type PropertyType "TimestampColumn" MetricSetProperty = TimestampColumnProperty
  set newValue MetricSetProperty {..}
    = MetricSetProperty {timestampColumn = Prelude.pure newValue, ..}
instance Property "Timezone" MetricSetProperty where
  type PropertyType "Timezone" MetricSetProperty = Value Prelude.Text
  set newValue MetricSetProperty {..}
    = MetricSetProperty {timezone = Prelude.pure newValue, ..}