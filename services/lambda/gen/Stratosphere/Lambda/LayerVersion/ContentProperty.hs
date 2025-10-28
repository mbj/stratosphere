module Stratosphere.Lambda.LayerVersion.ContentProperty (
        ContentProperty(..), mkContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html>
    ContentProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3bucket>
                     s3Bucket :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3key>
                     s3Key :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3objectversion>
                     s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ContentProperty
mkContentProperty s3Bucket s3Key
  = ContentProperty
      {haddock_workaround_ = (), s3Bucket = s3Bucket, s3Key = s3Key,
       s3ObjectVersion = Prelude.Nothing}
instance ToResourceProperties ContentProperty where
  toResourceProperties ContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::LayerVersion.Content",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
                           (Prelude.catMaybes
                              [(JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion]))}
instance JSON.ToJSON ContentProperty where
  toJSON ContentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
              (Prelude.catMaybes
                 [(JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion])))
instance Property "S3Bucket" ContentProperty where
  type PropertyType "S3Bucket" ContentProperty = Value Prelude.Text
  set newValue ContentProperty {..}
    = ContentProperty {s3Bucket = newValue, ..}
instance Property "S3Key" ContentProperty where
  type PropertyType "S3Key" ContentProperty = Value Prelude.Text
  set newValue ContentProperty {..}
    = ContentProperty {s3Key = newValue, ..}
instance Property "S3ObjectVersion" ContentProperty where
  type PropertyType "S3ObjectVersion" ContentProperty = Value Prelude.Text
  set newValue ContentProperty {..}
    = ContentProperty {s3ObjectVersion = Prelude.pure newValue, ..}