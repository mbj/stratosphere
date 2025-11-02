module Stratosphere.S3Express.BucketPolicy (
        BucketPolicy(..), mkBucketPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BucketPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-bucketpolicy.html>
    BucketPolicy {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-bucketpolicy.html#cfn-s3express-bucketpolicy-bucket>
                  bucket :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-bucketpolicy.html#cfn-s3express-bucketpolicy-policydocument>
                  policyDocument :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucketPolicy :: Value Prelude.Text -> JSON.Object -> BucketPolicy
mkBucketPolicy bucket policyDocument
  = BucketPolicy
      {haddock_workaround_ = (), bucket = bucket,
       policyDocument = policyDocument}
instance ToResourceProperties BucketPolicy where
  toResourceProperties BucketPolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::BucketPolicy",
         supportsTags = Prelude.False,
         properties = ["Bucket" JSON..= bucket,
                       "PolicyDocument" JSON..= policyDocument]}
instance JSON.ToJSON BucketPolicy where
  toJSON BucketPolicy {..}
    = JSON.object
        ["Bucket" JSON..= bucket, "PolicyDocument" JSON..= policyDocument]
instance Property "Bucket" BucketPolicy where
  type PropertyType "Bucket" BucketPolicy = Value Prelude.Text
  set newValue BucketPolicy {..}
    = BucketPolicy {bucket = newValue, ..}
instance Property "PolicyDocument" BucketPolicy where
  type PropertyType "PolicyDocument" BucketPolicy = JSON.Object
  set newValue BucketPolicy {..}
    = BucketPolicy {policyDocument = newValue, ..}