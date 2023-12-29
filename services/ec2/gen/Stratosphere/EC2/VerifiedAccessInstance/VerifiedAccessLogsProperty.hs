module Stratosphere.EC2.VerifiedAccessInstance.VerifiedAccessLogsProperty (
        module Exports, VerifiedAccessLogsProperty(..),
        mkVerifiedAccessLogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessInstance.CloudWatchLogsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessInstance.KinesisDataFirehoseProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessInstance.S3Property as Exports
import Stratosphere.ResourceProperties
data VerifiedAccessLogsProperty
  = VerifiedAccessLogsProperty {cloudWatchLogs :: (Prelude.Maybe CloudWatchLogsProperty),
                                kinesisDataFirehose :: (Prelude.Maybe KinesisDataFirehoseProperty),
                                s3 :: (Prelude.Maybe S3Property)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessLogsProperty :: VerifiedAccessLogsProperty
mkVerifiedAccessLogsProperty
  = VerifiedAccessLogsProperty
      {cloudWatchLogs = Prelude.Nothing,
       kinesisDataFirehose = Prelude.Nothing, s3 = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessLogsProperty where
  toResourceProperties VerifiedAccessLogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessInstance.VerifiedAccessLogs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
                            (JSON..=) "KinesisDataFirehose" Prelude.<$> kinesisDataFirehose,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON VerifiedAccessLogsProperty where
  toJSON VerifiedAccessLogsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
               (JSON..=) "KinesisDataFirehose" Prelude.<$> kinesisDataFirehose,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "CloudWatchLogs" VerifiedAccessLogsProperty where
  type PropertyType "CloudWatchLogs" VerifiedAccessLogsProperty = CloudWatchLogsProperty
  set newValue VerifiedAccessLogsProperty {..}
    = VerifiedAccessLogsProperty
        {cloudWatchLogs = Prelude.pure newValue, ..}
instance Property "KinesisDataFirehose" VerifiedAccessLogsProperty where
  type PropertyType "KinesisDataFirehose" VerifiedAccessLogsProperty = KinesisDataFirehoseProperty
  set newValue VerifiedAccessLogsProperty {..}
    = VerifiedAccessLogsProperty
        {kinesisDataFirehose = Prelude.pure newValue, ..}
instance Property "S3" VerifiedAccessLogsProperty where
  type PropertyType "S3" VerifiedAccessLogsProperty = S3Property
  set newValue VerifiedAccessLogsProperty {..}
    = VerifiedAccessLogsProperty {s3 = Prelude.pure newValue, ..}