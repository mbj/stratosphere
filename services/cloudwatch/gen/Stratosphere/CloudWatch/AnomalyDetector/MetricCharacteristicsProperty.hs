module Stratosphere.CloudWatch.AnomalyDetector.MetricCharacteristicsProperty (
        MetricCharacteristicsProperty(..), mkMetricCharacteristicsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricCharacteristicsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metriccharacteristics.html>
    MetricCharacteristicsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metriccharacteristics.html#cfn-cloudwatch-anomalydetector-metriccharacteristics-periodicspikes>
                                   periodicSpikes :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricCharacteristicsProperty :: MetricCharacteristicsProperty
mkMetricCharacteristicsProperty
  = MetricCharacteristicsProperty
      {haddock_workaround_ = (), periodicSpikes = Prelude.Nothing}
instance ToResourceProperties MetricCharacteristicsProperty where
  toResourceProperties MetricCharacteristicsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector.MetricCharacteristics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PeriodicSpikes" Prelude.<$> periodicSpikes])}
instance JSON.ToJSON MetricCharacteristicsProperty where
  toJSON MetricCharacteristicsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PeriodicSpikes" Prelude.<$> periodicSpikes]))
instance Property "PeriodicSpikes" MetricCharacteristicsProperty where
  type PropertyType "PeriodicSpikes" MetricCharacteristicsProperty = Value Prelude.Bool
  set newValue MetricCharacteristicsProperty {..}
    = MetricCharacteristicsProperty
        {periodicSpikes = Prelude.pure newValue, ..}