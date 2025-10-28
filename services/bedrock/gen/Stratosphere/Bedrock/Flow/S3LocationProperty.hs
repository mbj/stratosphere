module Stratosphere.Bedrock.Flow.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-s3location.html>
    S3LocationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-s3location.html#cfn-bedrock-flow-s3location-bucket>
                        bucket :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-s3location.html#cfn-bedrock-flow-s3location-key>
                        key :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-s3location.html#cfn-bedrock-flow-s3location-version>
                        version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucket key
  = S3LocationProperty
      {haddock_workaround_ = (), bucket = bucket, key = key,
       version = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])))
instance Property "Bucket" S3LocationProperty where
  type PropertyType "Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucket = newValue, ..}
instance Property "Key" S3LocationProperty where
  type PropertyType "Key" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {key = newValue, ..}
instance Property "Version" S3LocationProperty where
  type PropertyType "Version" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {version = Prelude.pure newValue, ..}