module Stratosphere.ElasticLoadBalancingV2.TrustStore (
        TrustStore(..), mkTrustStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrustStore
  = TrustStore {caCertificatesBundleS3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                caCertificatesBundleS3Key :: (Prelude.Maybe (Value Prelude.Text)),
                caCertificatesBundleS3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustStore :: TrustStore
mkTrustStore
  = TrustStore
      {caCertificatesBundleS3Bucket = Prelude.Nothing,
       caCertificatesBundleS3Key = Prelude.Nothing,
       caCertificatesBundleS3ObjectVersion = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TrustStore where
  toResourceProperties TrustStore {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TrustStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaCertificatesBundleS3Bucket"
                              Prelude.<$> caCertificatesBundleS3Bucket,
                            (JSON..=) "CaCertificatesBundleS3Key"
                              Prelude.<$> caCertificatesBundleS3Key,
                            (JSON..=) "CaCertificatesBundleS3ObjectVersion"
                              Prelude.<$> caCertificatesBundleS3ObjectVersion,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON TrustStore where
  toJSON TrustStore {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaCertificatesBundleS3Bucket"
                 Prelude.<$> caCertificatesBundleS3Bucket,
               (JSON..=) "CaCertificatesBundleS3Key"
                 Prelude.<$> caCertificatesBundleS3Key,
               (JSON..=) "CaCertificatesBundleS3ObjectVersion"
                 Prelude.<$> caCertificatesBundleS3ObjectVersion,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CaCertificatesBundleS3Bucket" TrustStore where
  type PropertyType "CaCertificatesBundleS3Bucket" TrustStore = Value Prelude.Text
  set newValue TrustStore {..}
    = TrustStore
        {caCertificatesBundleS3Bucket = Prelude.pure newValue, ..}
instance Property "CaCertificatesBundleS3Key" TrustStore where
  type PropertyType "CaCertificatesBundleS3Key" TrustStore = Value Prelude.Text
  set newValue TrustStore {..}
    = TrustStore
        {caCertificatesBundleS3Key = Prelude.pure newValue, ..}
instance Property "CaCertificatesBundleS3ObjectVersion" TrustStore where
  type PropertyType "CaCertificatesBundleS3ObjectVersion" TrustStore = Value Prelude.Text
  set newValue TrustStore {..}
    = TrustStore
        {caCertificatesBundleS3ObjectVersion = Prelude.pure newValue, ..}
instance Property "Name" TrustStore where
  type PropertyType "Name" TrustStore = Value Prelude.Text
  set newValue TrustStore {..}
    = TrustStore {name = Prelude.pure newValue, ..}
instance Property "Tags" TrustStore where
  type PropertyType "Tags" TrustStore = [Tag]
  set newValue TrustStore {..}
    = TrustStore {tags = Prelude.pure newValue, ..}