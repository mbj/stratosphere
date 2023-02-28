module Stratosphere.S3.StorageLens.CloudWatchMetricsProperty (
        CloudWatchMetricsProperty(..), mkCloudWatchMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchMetricsProperty
  = CloudWatchMetricsProperty {isEnabled :: (Value Prelude.Bool)}
mkCloudWatchMetricsProperty ::
  Value Prelude.Bool -> CloudWatchMetricsProperty
mkCloudWatchMetricsProperty isEnabled
  = CloudWatchMetricsProperty {isEnabled = isEnabled}
instance ToResourceProperties CloudWatchMetricsProperty where
  toResourceProperties CloudWatchMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.CloudWatchMetrics",
         supportsTags = Prelude.False,
         properties = ["IsEnabled" JSON..= isEnabled]}
instance JSON.ToJSON CloudWatchMetricsProperty where
  toJSON CloudWatchMetricsProperty {..}
    = JSON.object ["IsEnabled" JSON..= isEnabled]
instance Property "IsEnabled" CloudWatchMetricsProperty where
  type PropertyType "IsEnabled" CloudWatchMetricsProperty = Value Prelude.Bool
  set newValue CloudWatchMetricsProperty {}
    = CloudWatchMetricsProperty {isEnabled = newValue, ..}