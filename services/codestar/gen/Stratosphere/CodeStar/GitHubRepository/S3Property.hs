module Stratosphere.CodeStar.GitHubRepository.S3Property (
        S3Property(..), mkS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html>
    S3Property {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-bucket>
                bucket :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-key>
                key :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-objectversion>
                objectVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3Property ::
  Value Prelude.Text -> Value Prelude.Text -> S3Property
mkS3Property bucket key
  = S3Property
      {haddock_workaround_ = (), bucket = bucket, key = key,
       objectVersion = Prelude.Nothing}
instance ToResourceProperties S3Property where
  toResourceProperties S3Property {..}
    = ResourceProperties
        {awsType = "AWS::CodeStar::GitHubRepository.S3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion]))}
instance JSON.ToJSON S3Property where
  toJSON S3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion])))
instance Property "Bucket" S3Property where
  type PropertyType "Bucket" S3Property = Value Prelude.Text
  set newValue S3Property {..} = S3Property {bucket = newValue, ..}
instance Property "Key" S3Property where
  type PropertyType "Key" S3Property = Value Prelude.Text
  set newValue S3Property {..} = S3Property {key = newValue, ..}
instance Property "ObjectVersion" S3Property where
  type PropertyType "ObjectVersion" S3Property = Value Prelude.Text
  set newValue S3Property {..}
    = S3Property {objectVersion = Prelude.pure newValue, ..}