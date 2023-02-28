module Stratosphere.CloudWatch.MetricStream (
        module Exports, MetricStream(..), mkMetricStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.MetricStream.MetricStreamFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.MetricStream.MetricStreamStatisticsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MetricStream
  = MetricStream {excludeFilters :: (Prelude.Maybe [MetricStreamFilterProperty]),
                  firehoseArn :: (Value Prelude.Text),
                  includeFilters :: (Prelude.Maybe [MetricStreamFilterProperty]),
                  includeLinkedAccountsMetrics :: (Prelude.Maybe (Value Prelude.Bool)),
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  outputFormat :: (Value Prelude.Text),
                  roleArn :: (Value Prelude.Text),
                  statisticsConfigurations :: (Prelude.Maybe [MetricStreamStatisticsConfigurationProperty]),
                  tags :: (Prelude.Maybe [Tag])}
mkMetricStream ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> MetricStream
mkMetricStream firehoseArn outputFormat roleArn
  = MetricStream
      {firehoseArn = firehoseArn, outputFormat = outputFormat,
       roleArn = roleArn, excludeFilters = Prelude.Nothing,
       includeFilters = Prelude.Nothing,
       includeLinkedAccountsMetrics = Prelude.Nothing,
       name = Prelude.Nothing, statisticsConfigurations = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MetricStream where
  toResourceProperties MetricStream {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::MetricStream",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirehoseArn" JSON..= firehoseArn,
                            "OutputFormat" JSON..= outputFormat, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeFilters" Prelude.<$> excludeFilters,
                               (JSON..=) "IncludeFilters" Prelude.<$> includeFilters,
                               (JSON..=) "IncludeLinkedAccountsMetrics"
                                 Prelude.<$> includeLinkedAccountsMetrics,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "StatisticsConfigurations"
                                 Prelude.<$> statisticsConfigurations,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MetricStream where
  toJSON MetricStream {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirehoseArn" JSON..= firehoseArn,
               "OutputFormat" JSON..= outputFormat, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeFilters" Prelude.<$> excludeFilters,
                  (JSON..=) "IncludeFilters" Prelude.<$> includeFilters,
                  (JSON..=) "IncludeLinkedAccountsMetrics"
                    Prelude.<$> includeLinkedAccountsMetrics,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "StatisticsConfigurations"
                    Prelude.<$> statisticsConfigurations,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ExcludeFilters" MetricStream where
  type PropertyType "ExcludeFilters" MetricStream = [MetricStreamFilterProperty]
  set newValue MetricStream {..}
    = MetricStream {excludeFilters = Prelude.pure newValue, ..}
instance Property "FirehoseArn" MetricStream where
  type PropertyType "FirehoseArn" MetricStream = Value Prelude.Text
  set newValue MetricStream {..}
    = MetricStream {firehoseArn = newValue, ..}
instance Property "IncludeFilters" MetricStream where
  type PropertyType "IncludeFilters" MetricStream = [MetricStreamFilterProperty]
  set newValue MetricStream {..}
    = MetricStream {includeFilters = Prelude.pure newValue, ..}
instance Property "IncludeLinkedAccountsMetrics" MetricStream where
  type PropertyType "IncludeLinkedAccountsMetrics" MetricStream = Value Prelude.Bool
  set newValue MetricStream {..}
    = MetricStream
        {includeLinkedAccountsMetrics = Prelude.pure newValue, ..}
instance Property "Name" MetricStream where
  type PropertyType "Name" MetricStream = Value Prelude.Text
  set newValue MetricStream {..}
    = MetricStream {name = Prelude.pure newValue, ..}
instance Property "OutputFormat" MetricStream where
  type PropertyType "OutputFormat" MetricStream = Value Prelude.Text
  set newValue MetricStream {..}
    = MetricStream {outputFormat = newValue, ..}
instance Property "RoleArn" MetricStream where
  type PropertyType "RoleArn" MetricStream = Value Prelude.Text
  set newValue MetricStream {..}
    = MetricStream {roleArn = newValue, ..}
instance Property "StatisticsConfigurations" MetricStream where
  type PropertyType "StatisticsConfigurations" MetricStream = [MetricStreamStatisticsConfigurationProperty]
  set newValue MetricStream {..}
    = MetricStream
        {statisticsConfigurations = Prelude.pure newValue, ..}
instance Property "Tags" MetricStream where
  type PropertyType "Tags" MetricStream = [Tag]
  set newValue MetricStream {..}
    = MetricStream {tags = Prelude.pure newValue, ..}