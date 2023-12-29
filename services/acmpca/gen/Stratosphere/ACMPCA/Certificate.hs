module Stratosphere.ACMPCA.Certificate (
        module Exports, Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.ApiPassthroughProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.ValidityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Certificate
  = Certificate {apiPassthrough :: (Prelude.Maybe ApiPassthroughProperty),
                 certificateAuthorityArn :: (Value Prelude.Text),
                 certificateSigningRequest :: (Value Prelude.Text),
                 signingAlgorithm :: (Value Prelude.Text),
                 templateArn :: (Prelude.Maybe (Value Prelude.Text)),
                 validity :: ValidityProperty,
                 validityNotBefore :: (Prelude.Maybe ValidityProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ValidityProperty -> Certificate
mkCertificate
  certificateAuthorityArn
  certificateSigningRequest
  signingAlgorithm
  validity
  = Certificate
      {certificateAuthorityArn = certificateAuthorityArn,
       certificateSigningRequest = certificateSigningRequest,
       signingAlgorithm = signingAlgorithm, validity = validity,
       apiPassthrough = Prelude.Nothing, templateArn = Prelude.Nothing,
       validityNotBefore = Prelude.Nothing}
instance ToResourceProperties Certificate where
  toResourceProperties Certificate {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateAuthorityArn" JSON..= certificateAuthorityArn,
                            "CertificateSigningRequest" JSON..= certificateSigningRequest,
                            "SigningAlgorithm" JSON..= signingAlgorithm,
                            "Validity" JSON..= validity]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiPassthrough" Prelude.<$> apiPassthrough,
                               (JSON..=) "TemplateArn" Prelude.<$> templateArn,
                               (JSON..=) "ValidityNotBefore" Prelude.<$> validityNotBefore]))}
instance JSON.ToJSON Certificate where
  toJSON Certificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateAuthorityArn" JSON..= certificateAuthorityArn,
               "CertificateSigningRequest" JSON..= certificateSigningRequest,
               "SigningAlgorithm" JSON..= signingAlgorithm,
               "Validity" JSON..= validity]
              (Prelude.catMaybes
                 [(JSON..=) "ApiPassthrough" Prelude.<$> apiPassthrough,
                  (JSON..=) "TemplateArn" Prelude.<$> templateArn,
                  (JSON..=) "ValidityNotBefore" Prelude.<$> validityNotBefore])))
instance Property "ApiPassthrough" Certificate where
  type PropertyType "ApiPassthrough" Certificate = ApiPassthroughProperty
  set newValue Certificate {..}
    = Certificate {apiPassthrough = Prelude.pure newValue, ..}
instance Property "CertificateAuthorityArn" Certificate where
  type PropertyType "CertificateAuthorityArn" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateAuthorityArn = newValue, ..}
instance Property "CertificateSigningRequest" Certificate where
  type PropertyType "CertificateSigningRequest" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateSigningRequest = newValue, ..}
instance Property "SigningAlgorithm" Certificate where
  type PropertyType "SigningAlgorithm" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {signingAlgorithm = newValue, ..}
instance Property "TemplateArn" Certificate where
  type PropertyType "TemplateArn" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {templateArn = Prelude.pure newValue, ..}
instance Property "Validity" Certificate where
  type PropertyType "Validity" Certificate = ValidityProperty
  set newValue Certificate {..}
    = Certificate {validity = newValue, ..}
instance Property "ValidityNotBefore" Certificate where
  type PropertyType "ValidityNotBefore" Certificate = ValidityProperty
  set newValue Certificate {..}
    = Certificate {validityNotBefore = Prelude.pure newValue, ..}