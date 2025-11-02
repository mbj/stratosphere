module Stratosphere.ACMPCA.CertificateAuthorityActivation (
        CertificateAuthorityActivation(..),
        mkCertificateAuthorityActivation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateAuthorityActivation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html>
    CertificateAuthorityActivation {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-certificate>
                                    certificate :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-certificateauthorityarn>
                                    certificateAuthorityArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-certificatechain>
                                    certificateChain :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-status>
                                    status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateAuthorityActivation ::
  Value Prelude.Text
  -> Value Prelude.Text -> CertificateAuthorityActivation
mkCertificateAuthorityActivation
  certificate
  certificateAuthorityArn
  = CertificateAuthorityActivation
      {haddock_workaround_ = (), certificate = certificate,
       certificateAuthorityArn = certificateAuthorityArn,
       certificateChain = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties CertificateAuthorityActivation where
  toResourceProperties CertificateAuthorityActivation {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthorityActivation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Certificate" JSON..= certificate,
                            "CertificateAuthorityArn" JSON..= certificateAuthorityArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON CertificateAuthorityActivation where
  toJSON CertificateAuthorityActivation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Certificate" JSON..= certificate,
               "CertificateAuthorityArn" JSON..= certificateAuthorityArn]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Certificate" CertificateAuthorityActivation where
  type PropertyType "Certificate" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation {certificate = newValue, ..}
instance Property "CertificateAuthorityArn" CertificateAuthorityActivation where
  type PropertyType "CertificateAuthorityArn" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation
        {certificateAuthorityArn = newValue, ..}
instance Property "CertificateChain" CertificateAuthorityActivation where
  type PropertyType "CertificateChain" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation
        {certificateChain = Prelude.pure newValue, ..}
instance Property "Status" CertificateAuthorityActivation where
  type PropertyType "Status" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation
        {status = Prelude.pure newValue, ..}