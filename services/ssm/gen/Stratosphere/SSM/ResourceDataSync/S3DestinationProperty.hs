module Stratosphere.SSM.ResourceDataSync.S3DestinationProperty (
        S3DestinationProperty(..), mkS3DestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationProperty
  = S3DestinationProperty {bucketName :: (Value Prelude.Text),
                           bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                           bucketRegion :: (Value Prelude.Text),
                           kMSKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                           syncFormat :: (Value Prelude.Text)}
mkS3DestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3DestinationProperty
mkS3DestinationProperty bucketName bucketRegion syncFormat
  = S3DestinationProperty
      {bucketName = bucketName, bucketRegion = bucketRegion,
       syncFormat = syncFormat, bucketPrefix = Prelude.Nothing,
       kMSKeyArn = Prelude.Nothing}
instance ToResourceProperties S3DestinationProperty where
  toResourceProperties S3DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::ResourceDataSync.S3Destination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName,
                            "BucketRegion" JSON..= bucketRegion,
                            "SyncFormat" JSON..= syncFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "KMSKeyArn" Prelude.<$> kMSKeyArn]))}
instance JSON.ToJSON S3DestinationProperty where
  toJSON S3DestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName,
               "BucketRegion" JSON..= bucketRegion,
               "SyncFormat" JSON..= syncFormat]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "KMSKeyArn" Prelude.<$> kMSKeyArn])))
instance Property "BucketName" S3DestinationProperty where
  type PropertyType "BucketName" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {bucketName = newValue, ..}
instance Property "BucketPrefix" S3DestinationProperty where
  type PropertyType "BucketPrefix" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {bucketPrefix = Prelude.pure newValue, ..}
instance Property "BucketRegion" S3DestinationProperty where
  type PropertyType "BucketRegion" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {bucketRegion = newValue, ..}
instance Property "KMSKeyArn" S3DestinationProperty where
  type PropertyType "KMSKeyArn" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {kMSKeyArn = Prelude.pure newValue, ..}
instance Property "SyncFormat" S3DestinationProperty where
  type PropertyType "SyncFormat" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {syncFormat = newValue, ..}