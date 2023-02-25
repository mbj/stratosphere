module Stratosphere.WAFv2.RuleGroup.VisibilityConfigProperty (
        VisibilityConfigProperty(..), mkVisibilityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisibilityConfigProperty
  = VisibilityConfigProperty {cloudWatchMetricsEnabled :: (Value Prelude.Bool),
                              metricName :: (Value Prelude.Text),
                              sampledRequestsEnabled :: (Value Prelude.Bool)}
mkVisibilityConfigProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Bool -> VisibilityConfigProperty
mkVisibilityConfigProperty
  cloudWatchMetricsEnabled
  metricName
  sampledRequestsEnabled
  = VisibilityConfigProperty
      {cloudWatchMetricsEnabled = cloudWatchMetricsEnabled,
       metricName = metricName,
       sampledRequestsEnabled = sampledRequestsEnabled}
instance ToResourceProperties VisibilityConfigProperty where
  toResourceProperties VisibilityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.VisibilityConfig",
         properties = ["CloudWatchMetricsEnabled"
                         JSON..= cloudWatchMetricsEnabled,
                       "MetricName" JSON..= metricName,
                       "SampledRequestsEnabled" JSON..= sampledRequestsEnabled]}
instance JSON.ToJSON VisibilityConfigProperty where
  toJSON VisibilityConfigProperty {..}
    = JSON.object
        ["CloudWatchMetricsEnabled" JSON..= cloudWatchMetricsEnabled,
         "MetricName" JSON..= metricName,
         "SampledRequestsEnabled" JSON..= sampledRequestsEnabled]
instance Property "CloudWatchMetricsEnabled" VisibilityConfigProperty where
  type PropertyType "CloudWatchMetricsEnabled" VisibilityConfigProperty = Value Prelude.Bool
  set newValue VisibilityConfigProperty {..}
    = VisibilityConfigProperty
        {cloudWatchMetricsEnabled = newValue, ..}
instance Property "MetricName" VisibilityConfigProperty where
  type PropertyType "MetricName" VisibilityConfigProperty = Value Prelude.Text
  set newValue VisibilityConfigProperty {..}
    = VisibilityConfigProperty {metricName = newValue, ..}
instance Property "SampledRequestsEnabled" VisibilityConfigProperty where
  type PropertyType "SampledRequestsEnabled" VisibilityConfigProperty = Value Prelude.Bool
  set newValue VisibilityConfigProperty {..}
    = VisibilityConfigProperty {sampledRequestsEnabled = newValue, ..}