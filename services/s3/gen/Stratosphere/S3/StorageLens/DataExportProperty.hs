module Stratosphere.S3.StorageLens.DataExportProperty (
        module Exports, DataExportProperty(..), mkDataExportProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.CloudWatchMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.S3BucketDestinationProperty as Exports
import Stratosphere.ResourceProperties
data DataExportProperty
  = DataExportProperty {cloudWatchMetrics :: (Prelude.Maybe CloudWatchMetricsProperty),
                        s3BucketDestination :: (Prelude.Maybe S3BucketDestinationProperty)}
mkDataExportProperty :: DataExportProperty
mkDataExportProperty
  = DataExportProperty
      {cloudWatchMetrics = Prelude.Nothing,
       s3BucketDestination = Prelude.Nothing}
instance ToResourceProperties DataExportProperty where
  toResourceProperties DataExportProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.DataExport",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchMetrics" Prelude.<$> cloudWatchMetrics,
                            (JSON..=) "S3BucketDestination" Prelude.<$> s3BucketDestination])}
instance JSON.ToJSON DataExportProperty where
  toJSON DataExportProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchMetrics" Prelude.<$> cloudWatchMetrics,
               (JSON..=) "S3BucketDestination" Prelude.<$> s3BucketDestination]))
instance Property "CloudWatchMetrics" DataExportProperty where
  type PropertyType "CloudWatchMetrics" DataExportProperty = CloudWatchMetricsProperty
  set newValue DataExportProperty {..}
    = DataExportProperty
        {cloudWatchMetrics = Prelude.pure newValue, ..}
instance Property "S3BucketDestination" DataExportProperty where
  type PropertyType "S3BucketDestination" DataExportProperty = S3BucketDestinationProperty
  set newValue DataExportProperty {..}
    = DataExportProperty
        {s3BucketDestination = Prelude.pure newValue, ..}