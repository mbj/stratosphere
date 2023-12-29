module Stratosphere.RDS.DBInstance.CertificateDetailsProperty (
        CertificateDetailsProperty(..), mkCertificateDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateDetailsProperty
  = CertificateDetailsProperty {cAIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                validTill :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateDetailsProperty :: CertificateDetailsProperty
mkCertificateDetailsProperty
  = CertificateDetailsProperty
      {cAIdentifier = Prelude.Nothing, validTill = Prelude.Nothing}
instance ToResourceProperties CertificateDetailsProperty where
  toResourceProperties CertificateDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance.CertificateDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CAIdentifier" Prelude.<$> cAIdentifier,
                            (JSON..=) "ValidTill" Prelude.<$> validTill])}
instance JSON.ToJSON CertificateDetailsProperty where
  toJSON CertificateDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CAIdentifier" Prelude.<$> cAIdentifier,
               (JSON..=) "ValidTill" Prelude.<$> validTill]))
instance Property "CAIdentifier" CertificateDetailsProperty where
  type PropertyType "CAIdentifier" CertificateDetailsProperty = Value Prelude.Text
  set newValue CertificateDetailsProperty {..}
    = CertificateDetailsProperty
        {cAIdentifier = Prelude.pure newValue, ..}
instance Property "ValidTill" CertificateDetailsProperty where
  type PropertyType "ValidTill" CertificateDetailsProperty = Value Prelude.Text
  set newValue CertificateDetailsProperty {..}
    = CertificateDetailsProperty
        {validTill = Prelude.pure newValue, ..}