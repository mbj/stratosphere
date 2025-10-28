module Stratosphere.SageMaker.ModelPackage.FileSourceProperty (
        FileSourceProperty(..), mkFileSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-filesource.html>
    FileSourceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-filesource.html#cfn-sagemaker-modelpackage-filesource-contentdigest>
                        contentDigest :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-filesource.html#cfn-sagemaker-modelpackage-filesource-contenttype>
                        contentType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-filesource.html#cfn-sagemaker-modelpackage-filesource-s3uri>
                        s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSourceProperty :: Value Prelude.Text -> FileSourceProperty
mkFileSourceProperty s3Uri
  = FileSourceProperty
      {haddock_workaround_ = (), s3Uri = s3Uri,
       contentDigest = Prelude.Nothing, contentType = Prelude.Nothing}
instance ToResourceProperties FileSourceProperty where
  toResourceProperties FileSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.FileSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentDigest" Prelude.<$> contentDigest,
                               (JSON..=) "ContentType" Prelude.<$> contentType]))}
instance JSON.ToJSON FileSourceProperty where
  toJSON FileSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "ContentDigest" Prelude.<$> contentDigest,
                  (JSON..=) "ContentType" Prelude.<$> contentType])))
instance Property "ContentDigest" FileSourceProperty where
  type PropertyType "ContentDigest" FileSourceProperty = Value Prelude.Text
  set newValue FileSourceProperty {..}
    = FileSourceProperty {contentDigest = Prelude.pure newValue, ..}
instance Property "ContentType" FileSourceProperty where
  type PropertyType "ContentType" FileSourceProperty = Value Prelude.Text
  set newValue FileSourceProperty {..}
    = FileSourceProperty {contentType = Prelude.pure newValue, ..}
instance Property "S3Uri" FileSourceProperty where
  type PropertyType "S3Uri" FileSourceProperty = Value Prelude.Text
  set newValue FileSourceProperty {..}
    = FileSourceProperty {s3Uri = newValue, ..}