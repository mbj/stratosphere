module Stratosphere.GameLift.Fleet.CertificateConfigurationProperty (
        CertificateConfigurationProperty(..),
        mkCertificateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateConfigurationProperty
  = CertificateConfigurationProperty {certificateType :: (Value Prelude.Text)}
mkCertificateConfigurationProperty ::
  Value Prelude.Text -> CertificateConfigurationProperty
mkCertificateConfigurationProperty certificateType
  = CertificateConfigurationProperty
      {certificateType = certificateType}
instance ToResourceProperties CertificateConfigurationProperty where
  toResourceProperties CertificateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.CertificateConfiguration",
         properties = ["CertificateType" JSON..= certificateType]}
instance JSON.ToJSON CertificateConfigurationProperty where
  toJSON CertificateConfigurationProperty {..}
    = JSON.object ["CertificateType" JSON..= certificateType]
instance Property "CertificateType" CertificateConfigurationProperty where
  type PropertyType "CertificateType" CertificateConfigurationProperty = Value Prelude.Text
  set newValue CertificateConfigurationProperty {}
    = CertificateConfigurationProperty {certificateType = newValue, ..}