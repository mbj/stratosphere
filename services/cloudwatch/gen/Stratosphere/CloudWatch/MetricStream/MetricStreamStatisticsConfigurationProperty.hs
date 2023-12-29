module Stratosphere.CloudWatch.MetricStream.MetricStreamStatisticsConfigurationProperty (
        module Exports, MetricStreamStatisticsConfigurationProperty(..),
        mkMetricStreamStatisticsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.MetricStream.MetricStreamStatisticsMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStreamStatisticsConfigurationProperty
  = MetricStreamStatisticsConfigurationProperty {additionalStatistics :: (ValueList Prelude.Text),
                                                 includeMetrics :: [MetricStreamStatisticsMetricProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricStreamStatisticsConfigurationProperty ::
  ValueList Prelude.Text
  -> [MetricStreamStatisticsMetricProperty]
     -> MetricStreamStatisticsConfigurationProperty
mkMetricStreamStatisticsConfigurationProperty
  additionalStatistics
  includeMetrics
  = MetricStreamStatisticsConfigurationProperty
      {additionalStatistics = additionalStatistics,
       includeMetrics = includeMetrics}
instance ToResourceProperties MetricStreamStatisticsConfigurationProperty where
  toResourceProperties
    MetricStreamStatisticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::MetricStream.MetricStreamStatisticsConfiguration",
         supportsTags = Prelude.False,
         properties = ["AdditionalStatistics" JSON..= additionalStatistics,
                       "IncludeMetrics" JSON..= includeMetrics]}
instance JSON.ToJSON MetricStreamStatisticsConfigurationProperty where
  toJSON MetricStreamStatisticsConfigurationProperty {..}
    = JSON.object
        ["AdditionalStatistics" JSON..= additionalStatistics,
         "IncludeMetrics" JSON..= includeMetrics]
instance Property "AdditionalStatistics" MetricStreamStatisticsConfigurationProperty where
  type PropertyType "AdditionalStatistics" MetricStreamStatisticsConfigurationProperty = ValueList Prelude.Text
  set newValue MetricStreamStatisticsConfigurationProperty {..}
    = MetricStreamStatisticsConfigurationProperty
        {additionalStatistics = newValue, ..}
instance Property "IncludeMetrics" MetricStreamStatisticsConfigurationProperty where
  type PropertyType "IncludeMetrics" MetricStreamStatisticsConfigurationProperty = [MetricStreamStatisticsMetricProperty]
  set newValue MetricStreamStatisticsConfigurationProperty {..}
    = MetricStreamStatisticsConfigurationProperty
        {includeMetrics = newValue, ..}