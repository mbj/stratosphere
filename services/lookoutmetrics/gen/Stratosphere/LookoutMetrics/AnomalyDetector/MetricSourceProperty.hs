module Stratosphere.LookoutMetrics.AnomalyDetector.MetricSourceProperty (
        module Exports, MetricSourceProperty(..), mkMetricSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.AppFlowConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.CloudwatchConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.RDSSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.RedshiftSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.S3SourceConfigProperty as Exports
import Stratosphere.ResourceProperties
data MetricSourceProperty
  = MetricSourceProperty {appFlowConfig :: (Prelude.Maybe AppFlowConfigProperty),
                          cloudwatchConfig :: (Prelude.Maybe CloudwatchConfigProperty),
                          rDSSourceConfig :: (Prelude.Maybe RDSSourceConfigProperty),
                          redshiftSourceConfig :: (Prelude.Maybe RedshiftSourceConfigProperty),
                          s3SourceConfig :: (Prelude.Maybe S3SourceConfigProperty)}
mkMetricSourceProperty :: MetricSourceProperty
mkMetricSourceProperty
  = MetricSourceProperty
      {appFlowConfig = Prelude.Nothing,
       cloudwatchConfig = Prelude.Nothing,
       rDSSourceConfig = Prelude.Nothing,
       redshiftSourceConfig = Prelude.Nothing,
       s3SourceConfig = Prelude.Nothing}
instance ToResourceProperties MetricSourceProperty where
  toResourceProperties MetricSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.MetricSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppFlowConfig" Prelude.<$> appFlowConfig,
                            (JSON..=) "CloudwatchConfig" Prelude.<$> cloudwatchConfig,
                            (JSON..=) "RDSSourceConfig" Prelude.<$> rDSSourceConfig,
                            (JSON..=) "RedshiftSourceConfig" Prelude.<$> redshiftSourceConfig,
                            (JSON..=) "S3SourceConfig" Prelude.<$> s3SourceConfig])}
instance JSON.ToJSON MetricSourceProperty where
  toJSON MetricSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppFlowConfig" Prelude.<$> appFlowConfig,
               (JSON..=) "CloudwatchConfig" Prelude.<$> cloudwatchConfig,
               (JSON..=) "RDSSourceConfig" Prelude.<$> rDSSourceConfig,
               (JSON..=) "RedshiftSourceConfig" Prelude.<$> redshiftSourceConfig,
               (JSON..=) "S3SourceConfig" Prelude.<$> s3SourceConfig]))
instance Property "AppFlowConfig" MetricSourceProperty where
  type PropertyType "AppFlowConfig" MetricSourceProperty = AppFlowConfigProperty
  set newValue MetricSourceProperty {..}
    = MetricSourceProperty {appFlowConfig = Prelude.pure newValue, ..}
instance Property "CloudwatchConfig" MetricSourceProperty where
  type PropertyType "CloudwatchConfig" MetricSourceProperty = CloudwatchConfigProperty
  set newValue MetricSourceProperty {..}
    = MetricSourceProperty
        {cloudwatchConfig = Prelude.pure newValue, ..}
instance Property "RDSSourceConfig" MetricSourceProperty where
  type PropertyType "RDSSourceConfig" MetricSourceProperty = RDSSourceConfigProperty
  set newValue MetricSourceProperty {..}
    = MetricSourceProperty
        {rDSSourceConfig = Prelude.pure newValue, ..}
instance Property "RedshiftSourceConfig" MetricSourceProperty where
  type PropertyType "RedshiftSourceConfig" MetricSourceProperty = RedshiftSourceConfigProperty
  set newValue MetricSourceProperty {..}
    = MetricSourceProperty
        {redshiftSourceConfig = Prelude.pure newValue, ..}
instance Property "S3SourceConfig" MetricSourceProperty where
  type PropertyType "S3SourceConfig" MetricSourceProperty = S3SourceConfigProperty
  set newValue MetricSourceProperty {..}
    = MetricSourceProperty {s3SourceConfig = Prelude.pure newValue, ..}