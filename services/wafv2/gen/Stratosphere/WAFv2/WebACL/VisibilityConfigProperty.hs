module Stratosphere.WAFv2.WebACL.VisibilityConfigProperty (
        VisibilityConfigProperty(..), mkVisibilityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisibilityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html>
    VisibilityConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-cloudwatchmetricsenabled>
                              cloudWatchMetricsEnabled :: (Value Prelude.Bool),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-metricname>
                              metricName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-sampledrequestsenabled>
                              sampledRequestsEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisibilityConfigProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Bool -> VisibilityConfigProperty
mkVisibilityConfigProperty
  cloudWatchMetricsEnabled
  metricName
  sampledRequestsEnabled
  = VisibilityConfigProperty
      {haddock_workaround_ = (),
       cloudWatchMetricsEnabled = cloudWatchMetricsEnabled,
       metricName = metricName,
       sampledRequestsEnabled = sampledRequestsEnabled}
instance ToResourceProperties VisibilityConfigProperty where
  toResourceProperties VisibilityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.VisibilityConfig",
         supportsTags = Prelude.False,
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