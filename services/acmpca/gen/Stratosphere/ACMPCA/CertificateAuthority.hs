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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html>
    CertificateAuthority {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-csrextensions>
                          csrExtensions :: (Prelude.Maybe CsrExtensionsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-keyalgorithm>
                          keyAlgorithm :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-keystoragesecuritystandard>
                          keyStorageSecurityStandard :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-revocationconfiguration>
                          revocationConfiguration :: (Prelude.Maybe RevocationConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-signingalgorithm>
                          signingAlgorithm :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-subject>
                          subject :: SubjectProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-tags>
                          tags :: (Prelude.Maybe [Tag]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-type>
                          type' :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-usagemode>
                          usageMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateAuthority ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SubjectProperty -> Value Prelude.Text -> CertificateAuthority
mkCertificateAuthority keyAlgorithm signingAlgorithm subject type'
  = CertificateAuthority
      {haddock_workaround_ = (), keyAlgorithm = keyAlgorithm,
       signingAlgorithm = signingAlgorithm, subject = subject,
       type' = type', csrExtensions = Prelude.Nothing,
       keyStorageSecurityStandard = Prelude.Nothing,
       revocationConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       usageMode = Prelude.Nothing}
instance ToResourceProperties CertificateAuthority where
  toResourceProperties CertificateAuthority {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority",
         supportsTags = Prelude.True,
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