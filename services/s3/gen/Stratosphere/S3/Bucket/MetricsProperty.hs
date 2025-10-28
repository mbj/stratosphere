module Stratosphere.S3.Bucket.MetricsProperty (
        module Exports, MetricsProperty(..), mkMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationTimeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metrics.html>
    MetricsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metrics.html#cfn-s3-bucket-metrics-eventthreshold>
                     eventThreshold :: (Prelude.Maybe ReplicationTimeValueProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metrics.html#cfn-s3-bucket-metrics-status>
                     status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricsProperty :: Value Prelude.Text -> MetricsProperty
mkMetricsProperty status
  = MetricsProperty
      {haddock_workaround_ = (), status = status,
       eventThreshold = Prelude.Nothing}
instance ToResourceProperties MetricsProperty where
  toResourceProperties MetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.Metrics", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "EventThreshold" Prelude.<$> eventThreshold]))}
instance JSON.ToJSON MetricsProperty where
  toJSON MetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "EventThreshold" Prelude.<$> eventThreshold])))
instance Property "EventThreshold" MetricsProperty where
  type PropertyType "EventThreshold" MetricsProperty = ReplicationTimeValueProperty
  set newValue MetricsProperty {..}
    = MetricsProperty {eventThreshold = Prelude.pure newValue, ..}
instance Property "Status" MetricsProperty where
  type PropertyType "Status" MetricsProperty = Value Prelude.Text
  set newValue MetricsProperty {..}
    = MetricsProperty {status = newValue, ..}