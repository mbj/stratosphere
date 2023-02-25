module Stratosphere.S3Outposts.BucketPolicy (
        BucketPolicy(..), mkBucketPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BucketPolicy
  = BucketPolicy {bucket :: (Value Prelude.Text),
                  policyDocument :: JSON.Object}
mkBucketPolicy :: Value Prelude.Text -> JSON.Object -> BucketPolicy
mkBucketPolicy bucket policyDocument
  = BucketPolicy {bucket = bucket, policyDocument = policyDocument}
instance ToResourceProperties BucketPolicy where
  toResourceProperties BucketPolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::BucketPolicy",
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