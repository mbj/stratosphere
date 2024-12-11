module Stratosphere.ACMPCA.CertificateAuthority.CrlConfigurationProperty (
        module Exports, CrlConfigurationProperty(..),
        mkCrlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.CrlDistributionPointExtensionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrlConfigurationProperty
  = CrlConfigurationProperty {crlDistributionPointExtensionConfiguration :: (Prelude.Maybe CrlDistributionPointExtensionConfigurationProperty),
                              customCname :: (Prelude.Maybe (Value Prelude.Text)),
                              enabled :: (Value Prelude.Bool),
                              expirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                              s3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                              s3ObjectAcl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrlConfigurationProperty ::
  Value Prelude.Bool -> CrlConfigurationProperty
mkCrlConfigurationProperty enabled
  = CrlConfigurationProperty
      {enabled = enabled,
       crlDistributionPointExtensionConfiguration = Prelude.Nothing,
       customCname = Prelude.Nothing, expirationInDays = Prelude.Nothing,
       s3BucketName = Prelude.Nothing, s3ObjectAcl = Prelude.Nothing}
instance ToResourceProperties CrlConfigurationProperty where
  toResourceProperties CrlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.CrlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "CrlDistributionPointExtensionConfiguration"
                                 Prelude.<$> crlDistributionPointExtensionConfiguration,
                               (JSON..=) "CustomCname" Prelude.<$> customCname,
                               (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                               (JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
                               (JSON..=) "S3ObjectAcl" Prelude.<$> s3ObjectAcl]))}
instance JSON.ToJSON CrlConfigurationProperty where
  toJSON CrlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "CrlDistributionPointExtensionConfiguration"
                    Prelude.<$> crlDistributionPointExtensionConfiguration,
                  (JSON..=) "CustomCname" Prelude.<$> customCname,
                  (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                  (JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
                  (JSON..=) "S3ObjectAcl" Prelude.<$> s3ObjectAcl])))
instance Property "CrlDistributionPointExtensionConfiguration" CrlConfigurationProperty where
  type PropertyType "CrlDistributionPointExtensionConfiguration" CrlConfigurationProperty = CrlDistributionPointExtensionConfigurationProperty
  set newValue CrlConfigurationProperty {..}
    = CrlConfigurationProperty
        {crlDistributionPointExtensionConfiguration = Prelude.pure
                                                        newValue,
         ..}
instance Property "CustomCname" CrlConfigurationProperty where
  type PropertyType "CustomCname" CrlConfigurationProperty = Value Prelude.Text
  set newValue CrlConfigurationProperty {..}
    = CrlConfigurationProperty
        {customCname = Prelude.pure newValue, ..}
instance Property "Enabled" CrlConfigurationProperty where
  type PropertyType "Enabled" CrlConfigurationProperty = Value Prelude.Bool
  set newValue CrlConfigurationProperty {..}
    = CrlConfigurationProperty {enabled = newValue, ..}
instance Property "ExpirationInDays" CrlConfigurationProperty where
  type PropertyType "ExpirationInDays" CrlConfigurationProperty = Value Prelude.Integer
  set newValue CrlConfigurationProperty {..}
    = CrlConfigurationProperty
        {expirationInDays = Prelude.pure newValue, ..}
instance Property "S3BucketName" CrlConfigurationProperty where
  type PropertyType "S3BucketName" CrlConfigurationProperty = Value Prelude.Text
  set newValue CrlConfigurationProperty {..}
    = CrlConfigurationProperty
        {s3BucketName = Prelude.pure newValue, ..}
instance Property "S3ObjectAcl" CrlConfigurationProperty where
  type PropertyType "S3ObjectAcl" CrlConfigurationProperty = Value Prelude.Text
  set newValue CrlConfigurationProperty {..}
    = CrlConfigurationProperty
        {s3ObjectAcl = Prelude.pure newValue, ..}