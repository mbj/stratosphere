module Stratosphere.SES.ReceiptRule.S3ActionProperty (
        S3ActionProperty(..), mkS3ActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html>
    S3ActionProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-bucketname>
                      bucketName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-iamrolearn>
                      iamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-kmskeyarn>
                      kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-objectkeyprefix>
                      objectKeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-topicarn>
                      topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ActionProperty :: Value Prelude.Text -> S3ActionProperty
mkS3ActionProperty bucketName
  = S3ActionProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       iamRoleArn = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       objectKeyPrefix = Prelude.Nothing, topicArn = Prelude.Nothing}
instance ToResourceProperties S3ActionProperty where
  toResourceProperties S3ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.S3Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "ObjectKeyPrefix" Prelude.<$> objectKeyPrefix,
                               (JSON..=) "TopicArn" Prelude.<$> topicArn]))}
instance JSON.ToJSON S3ActionProperty where
  toJSON S3ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes
                 [(JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "ObjectKeyPrefix" Prelude.<$> objectKeyPrefix,
                  (JSON..=) "TopicArn" Prelude.<$> topicArn])))
instance Property "BucketName" S3ActionProperty where
  type PropertyType "BucketName" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {bucketName = newValue, ..}
instance Property "IamRoleArn" S3ActionProperty where
  type PropertyType "IamRoleArn" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {iamRoleArn = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" S3ActionProperty where
  type PropertyType "KmsKeyArn" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "ObjectKeyPrefix" S3ActionProperty where
  type PropertyType "ObjectKeyPrefix" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {objectKeyPrefix = Prelude.pure newValue, ..}
instance Property "TopicArn" S3ActionProperty where
  type PropertyType "TopicArn" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {topicArn = Prelude.pure newValue, ..}