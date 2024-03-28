module Stratosphere.Amplify.Domain.CertificateSettingsProperty (
        CertificateSettingsProperty(..), mkCertificateSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateSettingsProperty
  = CertificateSettingsProperty {certificateType :: (Prelude.Maybe (Value Prelude.Text)),
                                 customCertificateArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateSettingsProperty :: CertificateSettingsProperty
mkCertificateSettingsProperty
  = CertificateSettingsProperty
      {certificateType = Prelude.Nothing,
       customCertificateArn = Prelude.Nothing}
instance ToResourceProperties CertificateSettingsProperty where
  toResourceProperties CertificateSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Domain.CertificateSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateType" Prelude.<$> certificateType,
                            (JSON..=) "CustomCertificateArn"
                              Prelude.<$> customCertificateArn])}
instance JSON.ToJSON CertificateSettingsProperty where
  toJSON CertificateSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateType" Prelude.<$> certificateType,
               (JSON..=) "CustomCertificateArn"
                 Prelude.<$> customCertificateArn]))
instance Property "CertificateType" CertificateSettingsProperty where
  type PropertyType "CertificateType" CertificateSettingsProperty = Value Prelude.Text
  set newValue CertificateSettingsProperty {..}
    = CertificateSettingsProperty
        {certificateType = Prelude.pure newValue, ..}
instance Property "CustomCertificateArn" CertificateSettingsProperty where
  type PropertyType "CustomCertificateArn" CertificateSettingsProperty = Value Prelude.Text
  set newValue CertificateSettingsProperty {..}
    = CertificateSettingsProperty
        {customCertificateArn = Prelude.pure newValue, ..}