module Stratosphere.RDS.DBInstance.CertificateDetailsProperty (
        CertificateDetailsProperty(..), mkCertificateDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-certificatedetails.html>
    CertificateDetailsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-certificatedetails.html#cfn-rds-dbinstance-certificatedetails-caidentifier>
                                cAIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-certificatedetails.html#cfn-rds-dbinstance-certificatedetails-validtill>
                                validTill :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateDetailsProperty :: CertificateDetailsProperty
mkCertificateDetailsProperty
  = CertificateDetailsProperty
      {haddock_workaround_ = (), cAIdentifier = Prelude.Nothing,
       validTill = Prelude.Nothing}
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