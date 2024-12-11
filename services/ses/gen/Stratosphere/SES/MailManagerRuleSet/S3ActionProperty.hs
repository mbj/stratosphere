module Stratosphere.SES.MailManagerRuleSet.S3ActionProperty (
        S3ActionProperty(..), mkS3ActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ActionProperty
  = S3ActionProperty {actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                      roleArn :: (Value Prelude.Text),
                      s3Bucket :: (Value Prelude.Text),
                      s3Prefix :: (Prelude.Maybe (Value Prelude.Text)),
                      s3SseKmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3ActionProperty
mkS3ActionProperty roleArn s3Bucket
  = S3ActionProperty
      {roleArn = roleArn, s3Bucket = s3Bucket,
       actionFailurePolicy = Prelude.Nothing, s3Prefix = Prelude.Nothing,
       s3SseKmsKeyId = Prelude.Nothing}
instance ToResourceProperties S3ActionProperty where
  toResourceProperties S3ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.S3Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "S3Bucket" JSON..= s3Bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy" Prelude.<$> actionFailurePolicy,
                               (JSON..=) "S3Prefix" Prelude.<$> s3Prefix,
                               (JSON..=) "S3SseKmsKeyId" Prelude.<$> s3SseKmsKeyId]))}
instance JSON.ToJSON S3ActionProperty where
  toJSON S3ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "S3Bucket" JSON..= s3Bucket]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy" Prelude.<$> actionFailurePolicy,
                  (JSON..=) "S3Prefix" Prelude.<$> s3Prefix,
                  (JSON..=) "S3SseKmsKeyId" Prelude.<$> s3SseKmsKeyId])))
instance Property "ActionFailurePolicy" S3ActionProperty where
  type PropertyType "ActionFailurePolicy" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "RoleArn" S3ActionProperty where
  type PropertyType "RoleArn" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {roleArn = newValue, ..}
instance Property "S3Bucket" S3ActionProperty where
  type PropertyType "S3Bucket" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {s3Bucket = newValue, ..}
instance Property "S3Prefix" S3ActionProperty where
  type PropertyType "S3Prefix" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {s3Prefix = Prelude.pure newValue, ..}
instance Property "S3SseKmsKeyId" S3ActionProperty where
  type PropertyType "S3SseKmsKeyId" S3ActionProperty = Value Prelude.Text
  set newValue S3ActionProperty {..}
    = S3ActionProperty {s3SseKmsKeyId = Prelude.pure newValue, ..}