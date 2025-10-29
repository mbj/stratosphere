module Stratosphere.SSM.Association.S3OutputLocationProperty (
        S3OutputLocationProperty(..), mkS3OutputLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputLocationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html>
    S3OutputLocationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3bucketname>
                              outputS3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3keyprefix>
                              outputS3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3region>
                              outputS3Region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OutputLocationProperty :: S3OutputLocationProperty
mkS3OutputLocationProperty
  = S3OutputLocationProperty
      {outputS3BucketName = Prelude.Nothing,
       outputS3KeyPrefix = Prelude.Nothing,
       outputS3Region = Prelude.Nothing}
instance ToResourceProperties S3OutputLocationProperty where
  toResourceProperties S3OutputLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Association.S3OutputLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OutputS3BucketName" Prelude.<$> outputS3BucketName,
                            (JSON..=) "OutputS3KeyPrefix" Prelude.<$> outputS3KeyPrefix,
                            (JSON..=) "OutputS3Region" Prelude.<$> outputS3Region])}
instance JSON.ToJSON S3OutputLocationProperty where
  toJSON S3OutputLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OutputS3BucketName" Prelude.<$> outputS3BucketName,
               (JSON..=) "OutputS3KeyPrefix" Prelude.<$> outputS3KeyPrefix,
               (JSON..=) "OutputS3Region" Prelude.<$> outputS3Region]))
instance Property "OutputS3BucketName" S3OutputLocationProperty where
  type PropertyType "OutputS3BucketName" S3OutputLocationProperty = Value Prelude.Text
  set newValue S3OutputLocationProperty {..}
    = S3OutputLocationProperty
        {outputS3BucketName = Prelude.pure newValue, ..}
instance Property "OutputS3KeyPrefix" S3OutputLocationProperty where
  type PropertyType "OutputS3KeyPrefix" S3OutputLocationProperty = Value Prelude.Text
  set newValue S3OutputLocationProperty {..}
    = S3OutputLocationProperty
        {outputS3KeyPrefix = Prelude.pure newValue, ..}
instance Property "OutputS3Region" S3OutputLocationProperty where
  type PropertyType "OutputS3Region" S3OutputLocationProperty = Value Prelude.Text
  set newValue S3OutputLocationProperty {..}
    = S3OutputLocationProperty
        {outputS3Region = Prelude.pure newValue, ..}