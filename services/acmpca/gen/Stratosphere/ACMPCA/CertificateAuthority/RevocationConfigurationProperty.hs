module Stratosphere.ACMPCA.CertificateAuthority.RevocationConfigurationProperty (
        module Exports, RevocationConfigurationProperty(..),
        mkRevocationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.CrlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.OcspConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RevocationConfigurationProperty
  = RevocationConfigurationProperty {crlConfiguration :: (Prelude.Maybe CrlConfigurationProperty),
                                     ocspConfiguration :: (Prelude.Maybe OcspConfigurationProperty)}
mkRevocationConfigurationProperty ::
  RevocationConfigurationProperty
mkRevocationConfigurationProperty
  = RevocationConfigurationProperty
      {crlConfiguration = Prelude.Nothing,
       ocspConfiguration = Prelude.Nothing}
instance ToResourceProperties RevocationConfigurationProperty where
  toResourceProperties RevocationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.RevocationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CrlConfiguration" Prelude.<$> crlConfiguration,
                            (JSON..=) "OcspConfiguration" Prelude.<$> ocspConfiguration])}
instance JSON.ToJSON RevocationConfigurationProperty where
  toJSON RevocationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CrlConfiguration" Prelude.<$> crlConfiguration,
               (JSON..=) "OcspConfiguration" Prelude.<$> ocspConfiguration]))
instance Property "CrlConfiguration" RevocationConfigurationProperty where
  type PropertyType "CrlConfiguration" RevocationConfigurationProperty = CrlConfigurationProperty
  set newValue RevocationConfigurationProperty {..}
    = RevocationConfigurationProperty
        {crlConfiguration = Prelude.pure newValue, ..}
instance Property "OcspConfiguration" RevocationConfigurationProperty where
  type PropertyType "OcspConfiguration" RevocationConfigurationProperty = OcspConfigurationProperty
  set newValue RevocationConfigurationProperty {..}
    = RevocationConfigurationProperty
        {ocspConfiguration = Prelude.pure newValue, ..}