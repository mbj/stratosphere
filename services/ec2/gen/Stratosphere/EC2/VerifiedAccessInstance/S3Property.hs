module Stratosphere.EC2.VerifiedAccessInstance.S3Property (
        S3Property(..), mkS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-s3.html>
    S3Property {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-s3.html#cfn-ec2-verifiedaccessinstance-s3-bucketname>
                bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-s3.html#cfn-ec2-verifiedaccessinstance-s3-bucketowner>
                bucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-s3.html#cfn-ec2-verifiedaccessinstance-s3-enabled>
                enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-s3.html#cfn-ec2-verifiedaccessinstance-s3-prefix>
                prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3Property :: S3Property
mkS3Property
  = S3Property
      {haddock_workaround_ = (), bucketName = Prelude.Nothing,
       bucketOwner = Prelude.Nothing, enabled = Prelude.Nothing,
       prefix = Prelude.Nothing}
instance ToResourceProperties S3Property where
  toResourceProperties S3Property {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessInstance.S3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Prefix" Prelude.<$> prefix])}
instance JSON.ToJSON S3Property where
  toJSON S3Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Prefix" Prelude.<$> prefix]))
instance Property "BucketName" S3Property where
  type PropertyType "BucketName" S3Property = Value Prelude.Text
  set newValue S3Property {..}
    = S3Property {bucketName = Prelude.pure newValue, ..}
instance Property "BucketOwner" S3Property where
  type PropertyType "BucketOwner" S3Property = Value Prelude.Text
  set newValue S3Property {..}
    = S3Property {bucketOwner = Prelude.pure newValue, ..}
instance Property "Enabled" S3Property where
  type PropertyType "Enabled" S3Property = Value Prelude.Bool
  set newValue S3Property {..}
    = S3Property {enabled = Prelude.pure newValue, ..}
instance Property "Prefix" S3Property where
  type PropertyType "Prefix" S3Property = Value Prelude.Text
  set newValue S3Property {..}
    = S3Property {prefix = Prelude.pure newValue, ..}