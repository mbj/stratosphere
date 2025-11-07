module Stratosphere.SageMaker.ProcessingJob.S3InputProperty (
        S3InputProperty(..), mkS3InputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3InputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html>
    S3InputProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html#cfn-sagemaker-processingjob-s3input-localpath>
                     localPath :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html#cfn-sagemaker-processingjob-s3input-s3compressiontype>
                     s3CompressionType :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html#cfn-sagemaker-processingjob-s3input-s3datadistributiontype>
                     s3DataDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html#cfn-sagemaker-processingjob-s3input-s3datatype>
                     s3DataType :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html#cfn-sagemaker-processingjob-s3input-s3inputmode>
                     s3InputMode :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3input.html#cfn-sagemaker-processingjob-s3input-s3uri>
                     s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3InputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3InputProperty
mkS3InputProperty s3DataType s3Uri
  = S3InputProperty
      {haddock_workaround_ = (), s3DataType = s3DataType, s3Uri = s3Uri,
       localPath = Prelude.Nothing, s3CompressionType = Prelude.Nothing,
       s3DataDistributionType = Prelude.Nothing,
       s3InputMode = Prelude.Nothing}
instance ToResourceProperties S3InputProperty where
  toResourceProperties S3InputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.S3Input",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "LocalPath" Prelude.<$> localPath,
                               (JSON..=) "S3CompressionType" Prelude.<$> s3CompressionType,
                               (JSON..=) "S3DataDistributionType"
                                 Prelude.<$> s3DataDistributionType,
                               (JSON..=) "S3InputMode" Prelude.<$> s3InputMode]))}
instance JSON.ToJSON S3InputProperty where
  toJSON S3InputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "LocalPath" Prelude.<$> localPath,
                  (JSON..=) "S3CompressionType" Prelude.<$> s3CompressionType,
                  (JSON..=) "S3DataDistributionType"
                    Prelude.<$> s3DataDistributionType,
                  (JSON..=) "S3InputMode" Prelude.<$> s3InputMode])))
instance Property "LocalPath" S3InputProperty where
  type PropertyType "LocalPath" S3InputProperty = Value Prelude.Text
  set newValue S3InputProperty {..}
    = S3InputProperty {localPath = Prelude.pure newValue, ..}
instance Property "S3CompressionType" S3InputProperty where
  type PropertyType "S3CompressionType" S3InputProperty = Value Prelude.Text
  set newValue S3InputProperty {..}
    = S3InputProperty {s3CompressionType = Prelude.pure newValue, ..}
instance Property "S3DataDistributionType" S3InputProperty where
  type PropertyType "S3DataDistributionType" S3InputProperty = Value Prelude.Text
  set newValue S3InputProperty {..}
    = S3InputProperty
        {s3DataDistributionType = Prelude.pure newValue, ..}
instance Property "S3DataType" S3InputProperty where
  type PropertyType "S3DataType" S3InputProperty = Value Prelude.Text
  set newValue S3InputProperty {..}
    = S3InputProperty {s3DataType = newValue, ..}
instance Property "S3InputMode" S3InputProperty where
  type PropertyType "S3InputMode" S3InputProperty = Value Prelude.Text
  set newValue S3InputProperty {..}
    = S3InputProperty {s3InputMode = Prelude.pure newValue, ..}
instance Property "S3Uri" S3InputProperty where
  type PropertyType "S3Uri" S3InputProperty = Value Prelude.Text
  set newValue S3InputProperty {..}
    = S3InputProperty {s3Uri = newValue, ..}