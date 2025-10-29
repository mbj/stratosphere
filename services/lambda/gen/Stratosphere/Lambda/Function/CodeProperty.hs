module Stratosphere.Lambda.Function.CodeProperty (
        CodeProperty(..), mkCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html>
    CodeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-imageuri>
                  imageUri :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3bucket>
                  s3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3key>
                  s3Key :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3objectversion>
                  s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-sourcekmskeyarn>
                  sourceKMSKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile>
                  zipFile :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeProperty :: CodeProperty
mkCodeProperty
  = CodeProperty
      {imageUri = Prelude.Nothing, s3Bucket = Prelude.Nothing,
       s3Key = Prelude.Nothing, s3ObjectVersion = Prelude.Nothing,
       sourceKMSKeyArn = Prelude.Nothing, zipFile = Prelude.Nothing}
instance ToResourceProperties CodeProperty where
  toResourceProperties CodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.Code",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageUri" Prelude.<$> imageUri,
                            (JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
                            (JSON..=) "S3Key" Prelude.<$> s3Key,
                            (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion,
                            (JSON..=) "SourceKMSKeyArn" Prelude.<$> sourceKMSKeyArn,
                            (JSON..=) "ZipFile" Prelude.<$> zipFile])}
instance JSON.ToJSON CodeProperty where
  toJSON CodeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageUri" Prelude.<$> imageUri,
               (JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
               (JSON..=) "S3Key" Prelude.<$> s3Key,
               (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion,
               (JSON..=) "SourceKMSKeyArn" Prelude.<$> sourceKMSKeyArn,
               (JSON..=) "ZipFile" Prelude.<$> zipFile]))
instance Property "ImageUri" CodeProperty where
  type PropertyType "ImageUri" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {imageUri = Prelude.pure newValue, ..}
instance Property "S3Bucket" CodeProperty where
  type PropertyType "S3Bucket" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3Bucket = Prelude.pure newValue, ..}
instance Property "S3Key" CodeProperty where
  type PropertyType "S3Key" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3Key = Prelude.pure newValue, ..}
instance Property "S3ObjectVersion" CodeProperty where
  type PropertyType "S3ObjectVersion" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3ObjectVersion = Prelude.pure newValue, ..}
instance Property "SourceKMSKeyArn" CodeProperty where
  type PropertyType "SourceKMSKeyArn" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {sourceKMSKeyArn = Prelude.pure newValue, ..}
instance Property "ZipFile" CodeProperty where
  type PropertyType "ZipFile" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {zipFile = Prelude.pure newValue, ..}