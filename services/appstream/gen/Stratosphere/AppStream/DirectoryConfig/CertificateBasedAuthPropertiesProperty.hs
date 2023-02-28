module Stratosphere.AppStream.DirectoryConfig.CertificateBasedAuthPropertiesProperty (
        CertificateBasedAuthPropertiesProperty(..),
        mkCertificateBasedAuthPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateBasedAuthPropertiesProperty
  = CertificateBasedAuthPropertiesProperty {certificateAuthorityArn :: (Prelude.Maybe (Value Prelude.Text)),
                                            status :: (Prelude.Maybe (Value Prelude.Text))}
mkCertificateBasedAuthPropertiesProperty ::
  CertificateBasedAuthPropertiesProperty
mkCertificateBasedAuthPropertiesProperty
  = CertificateBasedAuthPropertiesProperty
      {certificateAuthorityArn = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties CertificateBasedAuthPropertiesProperty where
  toResourceProperties CertificateBasedAuthPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::DirectoryConfig.CertificateBasedAuthProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateAuthorityArn"
                              Prelude.<$> certificateAuthorityArn,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON CertificateBasedAuthPropertiesProperty where
  toJSON CertificateBasedAuthPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateAuthorityArn"
                 Prelude.<$> certificateAuthorityArn,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "CertificateAuthorityArn" CertificateBasedAuthPropertiesProperty where
  type PropertyType "CertificateAuthorityArn" CertificateBasedAuthPropertiesProperty = Value Prelude.Text
  set newValue CertificateBasedAuthPropertiesProperty {..}
    = CertificateBasedAuthPropertiesProperty
        {certificateAuthorityArn = Prelude.pure newValue, ..}
instance Property "Status" CertificateBasedAuthPropertiesProperty where
  type PropertyType "Status" CertificateBasedAuthPropertiesProperty = Value Prelude.Text
  set newValue CertificateBasedAuthPropertiesProperty {..}
    = CertificateBasedAuthPropertiesProperty
        {status = Prelude.pure newValue, ..}