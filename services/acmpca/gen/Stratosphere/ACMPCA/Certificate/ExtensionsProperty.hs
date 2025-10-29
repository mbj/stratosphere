module Stratosphere.ACMPCA.Certificate.ExtensionsProperty (
        module Exports, ExtensionsProperty(..), mkExtensionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.CustomExtensionProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.ExtendedKeyUsageProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.GeneralNameProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.KeyUsageProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.PolicyInformationProperty as Exports
import Stratosphere.ResourceProperties
data ExtensionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extensions.html>
    ExtensionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extensions.html#cfn-acmpca-certificate-extensions-certificatepolicies>
                        certificatePolicies :: (Prelude.Maybe [PolicyInformationProperty]),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extensions.html#cfn-acmpca-certificate-extensions-customextensions>
                        customExtensions :: (Prelude.Maybe [CustomExtensionProperty]),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extensions.html#cfn-acmpca-certificate-extensions-extendedkeyusage>
                        extendedKeyUsage :: (Prelude.Maybe [ExtendedKeyUsageProperty]),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extensions.html#cfn-acmpca-certificate-extensions-keyusage>
                        keyUsage :: (Prelude.Maybe KeyUsageProperty),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extensions.html#cfn-acmpca-certificate-extensions-subjectalternativenames>
                        subjectAlternativeNames :: (Prelude.Maybe [GeneralNameProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtensionsProperty :: ExtensionsProperty
mkExtensionsProperty
  = ExtensionsProperty
      {certificatePolicies = Prelude.Nothing,
       customExtensions = Prelude.Nothing,
       extendedKeyUsage = Prelude.Nothing, keyUsage = Prelude.Nothing,
       subjectAlternativeNames = Prelude.Nothing}
instance ToResourceProperties ExtensionsProperty where
  toResourceProperties ExtensionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.Extensions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificatePolicies" Prelude.<$> certificatePolicies,
                            (JSON..=) "CustomExtensions" Prelude.<$> customExtensions,
                            (JSON..=) "ExtendedKeyUsage" Prelude.<$> extendedKeyUsage,
                            (JSON..=) "KeyUsage" Prelude.<$> keyUsage,
                            (JSON..=) "SubjectAlternativeNames"
                              Prelude.<$> subjectAlternativeNames])}
instance JSON.ToJSON ExtensionsProperty where
  toJSON ExtensionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificatePolicies" Prelude.<$> certificatePolicies,
               (JSON..=) "CustomExtensions" Prelude.<$> customExtensions,
               (JSON..=) "ExtendedKeyUsage" Prelude.<$> extendedKeyUsage,
               (JSON..=) "KeyUsage" Prelude.<$> keyUsage,
               (JSON..=) "SubjectAlternativeNames"
                 Prelude.<$> subjectAlternativeNames]))
instance Property "CertificatePolicies" ExtensionsProperty where
  type PropertyType "CertificatePolicies" ExtensionsProperty = [PolicyInformationProperty]
  set newValue ExtensionsProperty {..}
    = ExtensionsProperty
        {certificatePolicies = Prelude.pure newValue, ..}
instance Property "CustomExtensions" ExtensionsProperty where
  type PropertyType "CustomExtensions" ExtensionsProperty = [CustomExtensionProperty]
  set newValue ExtensionsProperty {..}
    = ExtensionsProperty {customExtensions = Prelude.pure newValue, ..}
instance Property "ExtendedKeyUsage" ExtensionsProperty where
  type PropertyType "ExtendedKeyUsage" ExtensionsProperty = [ExtendedKeyUsageProperty]
  set newValue ExtensionsProperty {..}
    = ExtensionsProperty {extendedKeyUsage = Prelude.pure newValue, ..}
instance Property "KeyUsage" ExtensionsProperty where
  type PropertyType "KeyUsage" ExtensionsProperty = KeyUsageProperty
  set newValue ExtensionsProperty {..}
    = ExtensionsProperty {keyUsage = Prelude.pure newValue, ..}
instance Property "SubjectAlternativeNames" ExtensionsProperty where
  type PropertyType "SubjectAlternativeNames" ExtensionsProperty = [GeneralNameProperty]
  set newValue ExtensionsProperty {..}
    = ExtensionsProperty
        {subjectAlternativeNames = Prelude.pure newValue, ..}