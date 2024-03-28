module Stratosphere.ElasticLoadBalancingV2.TrustStoreRevocation.TrustStoreRevocationProperty (
        TrustStoreRevocationProperty(..), mkTrustStoreRevocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrustStoreRevocationProperty
  = TrustStoreRevocationProperty {numberOfRevokedEntries :: (Prelude.Maybe (Value Prelude.Integer)),
                                  revocationId :: (Prelude.Maybe (Value Prelude.Text)),
                                  revocationType :: (Prelude.Maybe (Value Prelude.Text)),
                                  trustStoreArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustStoreRevocationProperty :: TrustStoreRevocationProperty
mkTrustStoreRevocationProperty
  = TrustStoreRevocationProperty
      {numberOfRevokedEntries = Prelude.Nothing,
       revocationId = Prelude.Nothing, revocationType = Prelude.Nothing,
       trustStoreArn = Prelude.Nothing}
instance ToResourceProperties TrustStoreRevocationProperty where
  toResourceProperties TrustStoreRevocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TrustStoreRevocation.TrustStoreRevocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberOfRevokedEntries"
                              Prelude.<$> numberOfRevokedEntries,
                            (JSON..=) "RevocationId" Prelude.<$> revocationId,
                            (JSON..=) "RevocationType" Prelude.<$> revocationType,
                            (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn])}
instance JSON.ToJSON TrustStoreRevocationProperty where
  toJSON TrustStoreRevocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberOfRevokedEntries"
                 Prelude.<$> numberOfRevokedEntries,
               (JSON..=) "RevocationId" Prelude.<$> revocationId,
               (JSON..=) "RevocationType" Prelude.<$> revocationType,
               (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn]))
instance Property "NumberOfRevokedEntries" TrustStoreRevocationProperty where
  type PropertyType "NumberOfRevokedEntries" TrustStoreRevocationProperty = Value Prelude.Integer
  set newValue TrustStoreRevocationProperty {..}
    = TrustStoreRevocationProperty
        {numberOfRevokedEntries = Prelude.pure newValue, ..}
instance Property "RevocationId" TrustStoreRevocationProperty where
  type PropertyType "RevocationId" TrustStoreRevocationProperty = Value Prelude.Text
  set newValue TrustStoreRevocationProperty {..}
    = TrustStoreRevocationProperty
        {revocationId = Prelude.pure newValue, ..}
instance Property "RevocationType" TrustStoreRevocationProperty where
  type PropertyType "RevocationType" TrustStoreRevocationProperty = Value Prelude.Text
  set newValue TrustStoreRevocationProperty {..}
    = TrustStoreRevocationProperty
        {revocationType = Prelude.pure newValue, ..}
instance Property "TrustStoreArn" TrustStoreRevocationProperty where
  type PropertyType "TrustStoreArn" TrustStoreRevocationProperty = Value Prelude.Text
  set newValue TrustStoreRevocationProperty {..}
    = TrustStoreRevocationProperty
        {trustStoreArn = Prelude.pure newValue, ..}