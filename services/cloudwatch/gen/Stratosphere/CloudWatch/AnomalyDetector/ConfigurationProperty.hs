module Stratosphere.CloudWatch.AnomalyDetector.ConfigurationProperty (
        module Exports, ConfigurationProperty(..), mkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.RangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationProperty
  = ConfigurationProperty {excludedTimeRanges :: (Prelude.Maybe [RangeProperty]),
                           metricTimeZone :: (Prelude.Maybe (Value Prelude.Text))}
mkConfigurationProperty :: ConfigurationProperty
mkConfigurationProperty
  = ConfigurationProperty
      {excludedTimeRanges = Prelude.Nothing,
       metricTimeZone = Prelude.Nothing}
instance ToResourceProperties ConfigurationProperty where
  toResourceProperties ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector.Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludedTimeRanges" Prelude.<$> excludedTimeRanges,
                            (JSON..=) "MetricTimeZone" Prelude.<$> metricTimeZone])}
instance JSON.ToJSON ConfigurationProperty where
  toJSON ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludedTimeRanges" Prelude.<$> excludedTimeRanges,
               (JSON..=) "MetricTimeZone" Prelude.<$> metricTimeZone]))
instance Property "ExcludedTimeRanges" ConfigurationProperty where
  type PropertyType "ExcludedTimeRanges" ConfigurationProperty = [RangeProperty]
  set newValue ConfigurationProperty {..}
    = ConfigurationProperty
        {excludedTimeRanges = Prelude.pure newValue, ..}
instance Property "MetricTimeZone" ConfigurationProperty where
  type PropertyType "MetricTimeZone" ConfigurationProperty = Value Prelude.Text
  set newValue ConfigurationProperty {..}
    = ConfigurationProperty
        {metricTimeZone = Prelude.pure newValue, ..}