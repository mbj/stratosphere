module Stratosphere.ACMPCA.CertificateAuthority.CsrExtensionsProperty (
        module Exports, CsrExtensionsProperty(..), mkCsrExtensionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.AccessDescriptionProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.KeyUsageProperty as Exports
import Stratosphere.ResourceProperties
data CsrExtensionsProperty
  = CsrExtensionsProperty {keyUsage :: (Prelude.Maybe KeyUsageProperty),
                           subjectInformationAccess :: (Prelude.Maybe [AccessDescriptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsrExtensionsProperty :: CsrExtensionsProperty
mkCsrExtensionsProperty
  = CsrExtensionsProperty
      {keyUsage = Prelude.Nothing,
       subjectInformationAccess = Prelude.Nothing}
instance ToResourceProperties CsrExtensionsProperty where
  toResourceProperties CsrExtensionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.CsrExtensions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KeyUsage" Prelude.<$> keyUsage,
                            (JSON..=) "SubjectInformationAccess"
                              Prelude.<$> subjectInformationAccess])}
instance JSON.ToJSON CsrExtensionsProperty where
  toJSON CsrExtensionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KeyUsage" Prelude.<$> keyUsage,
               (JSON..=) "SubjectInformationAccess"
                 Prelude.<$> subjectInformationAccess]))
instance Property "KeyUsage" CsrExtensionsProperty where
  type PropertyType "KeyUsage" CsrExtensionsProperty = KeyUsageProperty
  set newValue CsrExtensionsProperty {..}
    = CsrExtensionsProperty {keyUsage = Prelude.pure newValue, ..}
instance Property "SubjectInformationAccess" CsrExtensionsProperty where
  type PropertyType "SubjectInformationAccess" CsrExtensionsProperty = [AccessDescriptionProperty]
  set newValue CsrExtensionsProperty {..}
    = CsrExtensionsProperty
        {subjectInformationAccess = Prelude.pure newValue, ..}