module Stratosphere.Bedrock.Agent.S3IdentifierProperty (
        S3IdentifierProperty(..), mkS3IdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3IdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-s3identifier.html>
    S3IdentifierProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-s3identifier.html#cfn-bedrock-agent-s3identifier-s3bucketname>
                          s3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-s3identifier.html#cfn-bedrock-agent-s3identifier-s3objectkey>
                          s3ObjectKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3IdentifierProperty :: S3IdentifierProperty
mkS3IdentifierProperty
  = S3IdentifierProperty
      {haddock_workaround_ = (), s3BucketName = Prelude.Nothing,
       s3ObjectKey = Prelude.Nothing}
instance ToResourceProperties S3IdentifierProperty where
  toResourceProperties S3IdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.S3Identifier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
                            (JSON..=) "S3ObjectKey" Prelude.<$> s3ObjectKey])}
instance JSON.ToJSON S3IdentifierProperty where
  toJSON S3IdentifierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
               (JSON..=) "S3ObjectKey" Prelude.<$> s3ObjectKey]))
instance Property "S3BucketName" S3IdentifierProperty where
  type PropertyType "S3BucketName" S3IdentifierProperty = Value Prelude.Text
  set newValue S3IdentifierProperty {..}
    = S3IdentifierProperty {s3BucketName = Prelude.pure newValue, ..}
instance Property "S3ObjectKey" S3IdentifierProperty where
  type PropertyType "S3ObjectKey" S3IdentifierProperty = Value Prelude.Text
  set newValue S3IdentifierProperty {..}
    = S3IdentifierProperty {s3ObjectKey = Prelude.pure newValue, ..}