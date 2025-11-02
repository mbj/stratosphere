module Stratosphere.KafkaConnect.CustomPlugin.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-customplugin-s3location.html>
    S3LocationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-customplugin-s3location.html#cfn-kafkaconnect-customplugin-s3location-bucketarn>
                        bucketArn :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-customplugin-s3location.html#cfn-kafkaconnect-customplugin-s3location-filekey>
                        fileKey :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-customplugin-s3location.html#cfn-kafkaconnect-customplugin-s3location-objectversion>
                        objectVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucketArn fileKey
  = S3LocationProperty
      {haddock_workaround_ = (), bucketArn = bucketArn,
       fileKey = fileKey, objectVersion = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::CustomPlugin.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketArn" JSON..= bucketArn, "FileKey" JSON..= fileKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketArn" JSON..= bucketArn, "FileKey" JSON..= fileKey]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion])))
instance Property "BucketArn" S3LocationProperty where
  type PropertyType "BucketArn" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucketArn = newValue, ..}
instance Property "FileKey" S3LocationProperty where
  type PropertyType "FileKey" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {fileKey = newValue, ..}
instance Property "ObjectVersion" S3LocationProperty where
  type PropertyType "ObjectVersion" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {objectVersion = Prelude.pure newValue, ..}