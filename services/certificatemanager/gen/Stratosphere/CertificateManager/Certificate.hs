module Stratosphere.CertificateManager.Certificate (
        module Exports, Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CertificateManager.Certificate.DomainValidationOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Certificate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html>
    Certificate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-certificateauthorityarn>
                 certificateAuthorityArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-certificatetransparencyloggingpreference>
                 certificateTransparencyLoggingPreference :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-domainname>
                 domainName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-domainvalidationoptions>
                 domainValidationOptions :: (Prelude.Maybe [DomainValidationOptionProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-keyalgorithm>
                 keyAlgorithm :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-subjectalternativenames>
                 subjectAlternativeNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-validationmethod>
                 validationMethod :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificate :: Value Prelude.Text -> Certificate
mkCertificate domainName
  = Certificate
      {haddock_workaround_ = (), domainName = domainName,
       certificateAuthorityArn = Prelude.Nothing,
       certificateTransparencyLoggingPreference = Prelude.Nothing,
       domainValidationOptions = Prelude.Nothing,
       keyAlgorithm = Prelude.Nothing,
       subjectAlternativeNames = Prelude.Nothing, tags = Prelude.Nothing,
       validationMethod = Prelude.Nothing}
instance ToResourceProperties Certificate where
  toResourceProperties Certificate {..}
    = ResourceProperties
        {awsType = "AWS::CertificateManager::Certificate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateAuthorityArn"
                                 Prelude.<$> certificateAuthorityArn,
                               (JSON..=) "CertificateTransparencyLoggingPreference"
                                 Prelude.<$> certificateTransparencyLoggingPreference,
                               (JSON..=) "DomainValidationOptions"
                                 Prelude.<$> domainValidationOptions,
                               (JSON..=) "KeyAlgorithm" Prelude.<$> keyAlgorithm,
                               (JSON..=) "SubjectAlternativeNames"
                                 Prelude.<$> subjectAlternativeNames,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ValidationMethod" Prelude.<$> validationMethod]))}
instance JSON.ToJSON Certificate where
  toJSON Certificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateAuthorityArn"
                    Prelude.<$> certificateAuthorityArn,
                  (JSON..=) "CertificateTransparencyLoggingPreference"
                    Prelude.<$> certificateTransparencyLoggingPreference,
                  (JSON..=) "DomainValidationOptions"
                    Prelude.<$> domainValidationOptions,
                  (JSON..=) "KeyAlgorithm" Prelude.<$> keyAlgorithm,
                  (JSON..=) "SubjectAlternativeNames"
                    Prelude.<$> subjectAlternativeNames,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ValidationMethod" Prelude.<$> validationMethod])))
instance Property "CertificateAuthorityArn" Certificate where
  type PropertyType "CertificateAuthorityArn" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateAuthorityArn = Prelude.pure newValue, ..}
instance Property "CertificateTransparencyLoggingPreference" Certificate where
  type PropertyType "CertificateTransparencyLoggingPreference" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate
        {certificateTransparencyLoggingPreference = Prelude.pure newValue,
         ..}
instance Property "DomainName" Certificate where
  type PropertyType "DomainName" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {domainName = newValue, ..}
instance Property "DomainValidationOptions" Certificate where
  type PropertyType "DomainValidationOptions" Certificate = [DomainValidationOptionProperty]
  set newValue Certificate {..}
    = Certificate {domainValidationOptions = Prelude.pure newValue, ..}
instance Property "KeyAlgorithm" Certificate where
  type PropertyType "KeyAlgorithm" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {keyAlgorithm = Prelude.pure newValue, ..}
instance Property "SubjectAlternativeNames" Certificate where
  type PropertyType "SubjectAlternativeNames" Certificate = ValueList Prelude.Text
  set newValue Certificate {..}
    = Certificate {subjectAlternativeNames = Prelude.pure newValue, ..}
instance Property "Tags" Certificate where
  type PropertyType "Tags" Certificate = [Tag]
  set newValue Certificate {..}
    = Certificate {tags = Prelude.pure newValue, ..}
instance Property "ValidationMethod" Certificate where
  type PropertyType "ValidationMethod" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {validationMethod = Prelude.pure newValue, ..}