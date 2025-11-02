module Stratosphere.KinesisAnalyticsV2.Application.S3ContentBaseLocationProperty (
        S3ContentBaseLocationProperty(..), mkS3ContentBaseLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ContentBaseLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentbaselocation.html>
    S3ContentBaseLocationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentbaselocation.html#cfn-kinesisanalyticsv2-application-s3contentbaselocation-basepath>
                                   basePath :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentbaselocation.html#cfn-kinesisanalyticsv2-application-s3contentbaselocation-bucketarn>
                                   bucketARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ContentBaseLocationProperty ::
  Value Prelude.Text -> S3ContentBaseLocationProperty
mkS3ContentBaseLocationProperty bucketARN
  = S3ContentBaseLocationProperty
      {haddock_workaround_ = (), bucketARN = bucketARN,
       basePath = Prelude.Nothing}
instance ToResourceProperties S3ContentBaseLocationProperty where
  toResourceProperties S3ContentBaseLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.S3ContentBaseLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketARN" JSON..= bucketARN]
                           (Prelude.catMaybes [(JSON..=) "BasePath" Prelude.<$> basePath]))}
instance JSON.ToJSON S3ContentBaseLocationProperty where
  toJSON S3ContentBaseLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketARN" JSON..= bucketARN]
              (Prelude.catMaybes [(JSON..=) "BasePath" Prelude.<$> basePath])))
instance Property "BasePath" S3ContentBaseLocationProperty where
  type PropertyType "BasePath" S3ContentBaseLocationProperty = Value Prelude.Text
  set newValue S3ContentBaseLocationProperty {..}
    = S3ContentBaseLocationProperty
        {basePath = Prelude.pure newValue, ..}
instance Property "BucketARN" S3ContentBaseLocationProperty where
  type PropertyType "BucketARN" S3ContentBaseLocationProperty = Value Prelude.Text
  set newValue S3ContentBaseLocationProperty {..}
    = S3ContentBaseLocationProperty {bucketARN = newValue, ..}