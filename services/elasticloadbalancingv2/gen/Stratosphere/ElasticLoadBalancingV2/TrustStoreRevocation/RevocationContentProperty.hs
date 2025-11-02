module Stratosphere.ElasticLoadBalancingV2.TrustStoreRevocation.RevocationContentProperty (
        RevocationContentProperty(..), mkRevocationContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RevocationContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-truststorerevocation-revocationcontent.html>
    RevocationContentProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-truststorerevocation-revocationcontent.html#cfn-elasticloadbalancingv2-truststorerevocation-revocationcontent-revocationtype>
                               revocationType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-truststorerevocation-revocationcontent.html#cfn-elasticloadbalancingv2-truststorerevocation-revocationcontent-s3bucket>
                               s3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-truststorerevocation-revocationcontent.html#cfn-elasticloadbalancingv2-truststorerevocation-revocationcontent-s3key>
                               s3Key :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-truststorerevocation-revocationcontent.html#cfn-elasticloadbalancingv2-truststorerevocation-revocationcontent-s3objectversion>
                               s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRevocationContentProperty :: RevocationContentProperty
mkRevocationContentProperty
  = RevocationContentProperty
      {haddock_workaround_ = (), revocationType = Prelude.Nothing,
       s3Bucket = Prelude.Nothing, s3Key = Prelude.Nothing,
       s3ObjectVersion = Prelude.Nothing}
instance ToResourceProperties RevocationContentProperty where
  toResourceProperties RevocationContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TrustStoreRevocation.RevocationContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RevocationType" Prelude.<$> revocationType,
                            (JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
                            (JSON..=) "S3Key" Prelude.<$> s3Key,
                            (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion])}
instance JSON.ToJSON RevocationContentProperty where
  toJSON RevocationContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RevocationType" Prelude.<$> revocationType,
               (JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
               (JSON..=) "S3Key" Prelude.<$> s3Key,
               (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion]))
instance Property "RevocationType" RevocationContentProperty where
  type PropertyType "RevocationType" RevocationContentProperty = Value Prelude.Text
  set newValue RevocationContentProperty {..}
    = RevocationContentProperty
        {revocationType = Prelude.pure newValue, ..}
instance Property "S3Bucket" RevocationContentProperty where
  type PropertyType "S3Bucket" RevocationContentProperty = Value Prelude.Text
  set newValue RevocationContentProperty {..}
    = RevocationContentProperty {s3Bucket = Prelude.pure newValue, ..}
instance Property "S3Key" RevocationContentProperty where
  type PropertyType "S3Key" RevocationContentProperty = Value Prelude.Text
  set newValue RevocationContentProperty {..}
    = RevocationContentProperty {s3Key = Prelude.pure newValue, ..}
instance Property "S3ObjectVersion" RevocationContentProperty where
  type PropertyType "S3ObjectVersion" RevocationContentProperty = Value Prelude.Text
  set newValue RevocationContentProperty {..}
    = RevocationContentProperty
        {s3ObjectVersion = Prelude.pure newValue, ..}