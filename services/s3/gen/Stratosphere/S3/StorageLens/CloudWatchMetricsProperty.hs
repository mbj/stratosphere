module Stratosphere.S3.StorageLens.CloudWatchMetricsProperty (
        CloudWatchMetricsProperty(..), mkCloudWatchMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchMetricsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-cloudwatchmetrics.html>
    CloudWatchMetricsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-cloudwatchmetrics.html#cfn-s3-storagelens-cloudwatchmetrics-isenabled>
                               isEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchMetricsProperty ::
  Value Prelude.Bool -> CloudWatchMetricsProperty
mkCloudWatchMetricsProperty isEnabled
  = CloudWatchMetricsProperty
      {haddock_workaround_ = (), isEnabled = isEnabled}
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
  set newValue CloudWatchMetricsProperty {..}
    = CloudWatchMetricsProperty {isEnabled = newValue, ..}