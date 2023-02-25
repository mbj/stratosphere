module Stratosphere.ACMPCA.CertificateAuthority (
        module Exports, CertificateAuthority(..), mkCertificateAuthority
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.CsrExtensionsProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.RevocationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.SubjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CertificateAuthority
  = CertificateAuthority {csrExtensions :: (Prelude.Maybe CsrExtensionsProperty),
                          keyAlgorithm :: (Value Prelude.Text),
                          keyStorageSecurityStandard :: (Prelude.Maybe (Value Prelude.Text)),
                          revocationConfiguration :: (Prelude.Maybe RevocationConfigurationProperty),
                          signingAlgorithm :: (Value Prelude.Text),
                          subject :: SubjectProperty,
                          tags :: (Prelude.Maybe [Tag]),
                          type' :: (Value Prelude.Text),
                          usageMode :: (Prelude.Maybe (Value Prelude.Text))}
mkCertificateAuthority ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SubjectProperty -> Value Prelude.Text -> CertificateAuthority
mkCertificateAuthority keyAlgorithm signingAlgorithm subject type'
  = CertificateAuthority
      {keyAlgorithm = keyAlgorithm, signingAlgorithm = signingAlgorithm,
       subject = subject, type' = type', csrExtensions = Prelude.Nothing,
       keyStorageSecurityStandard = Prelude.Nothing,
       revocationConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       usageMode = Prelude.Nothing}
instance ToResourceProperties CertificateAuthority where
  toResourceProperties CertificateAuthority {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyAlgorithm" JSON..= keyAlgorithm,
                            "SigningAlgorithm" JSON..= signingAlgorithm,
                            "Subject" JSON..= subject, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CsrExtensions" Prelude.<$> csrExtensions,
                               (JSON..=) "KeyStorageSecurityStandard"
                                 Prelude.<$> keyStorageSecurityStandard,
                               (JSON..=) "RevocationConfiguration"
                                 Prelude.<$> revocationConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UsageMode" Prelude.<$> usageMode]))}
instance JSON.ToJSON CertificateAuthority where
  toJSON CertificateAuthority {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyAlgorithm" JSON..= keyAlgorithm,
               "SigningAlgorithm" JSON..= signingAlgorithm,
               "Subject" JSON..= subject, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CsrExtensions" Prelude.<$> csrExtensions,
                  (JSON..=) "KeyStorageSecurityStandard"
                    Prelude.<$> keyStorageSecurityStandard,
                  (JSON..=) "RevocationConfiguration"
                    Prelude.<$> revocationConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UsageMode" Prelude.<$> usageMode])))
instance Property "CsrExtensions" CertificateAuthority where
  type PropertyType "CsrExtensions" CertificateAuthority = CsrExtensionsProperty
  set newValue CertificateAuthority {..}
    = CertificateAuthority {csrExtensions = Prelude.pure newValue, ..}
instance Property "KeyAlgorithm" CertificateAuthority where
  type PropertyType "KeyAlgorithm" CertificateAuthority = Value Prelude.Text
  set newValue CertificateAuthority {..}
    = CertificateAuthority {keyAlgorithm = newValue, ..}
instance Property "KeyStorageSecurityStandard" CertificateAuthority where
  type PropertyType "KeyStorageSecurityStandard" CertificateAuthority = Value Prelude.Text
  set newValue CertificateAuthority {..}
    = CertificateAuthority
        {keyStorageSecurityStandard = Prelude.pure newValue, ..}
instance Property "RevocationConfiguration" CertificateAuthority where
  type PropertyType "RevocationConfiguration" CertificateAuthority = RevocationConfigurationProperty
  set newValue CertificateAuthority {..}
    = CertificateAuthority
        {revocationConfiguration = Prelude.pure newValue, ..}
instance Property "SigningAlgorithm" CertificateAuthority where
  type PropertyType "SigningAlgorithm" CertificateAuthority = Value Prelude.Text
  set newValue CertificateAuthority {..}
    = CertificateAuthority {signingAlgorithm = newValue, ..}
instance Property "Subject" CertificateAuthority where
  type PropertyType "Subject" CertificateAuthority = SubjectProperty
  set newValue CertificateAuthority {..}
    = CertificateAuthority {subject = newValue, ..}
instance Property "Tags" CertificateAuthority where
  type PropertyType "Tags" CertificateAuthority = [Tag]
  set newValue CertificateAuthority {..}
    = CertificateAuthority {tags = Prelude.pure newValue, ..}
instance Property "Type" CertificateAuthority where
  type PropertyType "Type" CertificateAuthority = Value Prelude.Text
  set newValue CertificateAuthority {..}
    = CertificateAuthority {type' = newValue, ..}
instance Property "UsageMode" CertificateAuthority where
  type PropertyType "UsageMode" CertificateAuthority = Value Prelude.Text
  set newValue CertificateAuthority {..}
    = CertificateAuthority {usageMode = Prelude.pure newValue, ..}