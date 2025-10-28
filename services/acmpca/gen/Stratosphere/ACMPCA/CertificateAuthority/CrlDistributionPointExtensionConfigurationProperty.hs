module Stratosphere.ACMPCA.CertificateAuthority.CrlDistributionPointExtensionConfigurationProperty (
        CrlDistributionPointExtensionConfigurationProperty(..),
        mkCrlDistributionPointExtensionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrlDistributionPointExtensionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crldistributionpointextensionconfiguration.html>
    CrlDistributionPointExtensionConfigurationProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crldistributionpointextensionconfiguration.html#cfn-acmpca-certificateauthority-crldistributionpointextensionconfiguration-omitextension>
                                                        omitExtension :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrlDistributionPointExtensionConfigurationProperty ::
  Value Prelude.Bool
  -> CrlDistributionPointExtensionConfigurationProperty
mkCrlDistributionPointExtensionConfigurationProperty omitExtension
  = CrlDistributionPointExtensionConfigurationProperty
      {haddock_workaround_ = (), omitExtension = omitExtension}
instance ToResourceProperties CrlDistributionPointExtensionConfigurationProperty where
  toResourceProperties
    CrlDistributionPointExtensionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.CrlDistributionPointExtensionConfiguration",
         supportsTags = Prelude.False,
         properties = ["OmitExtension" JSON..= omitExtension]}
instance JSON.ToJSON CrlDistributionPointExtensionConfigurationProperty where
  toJSON CrlDistributionPointExtensionConfigurationProperty {..}
    = JSON.object ["OmitExtension" JSON..= omitExtension]
instance Property "OmitExtension" CrlDistributionPointExtensionConfigurationProperty where
  type PropertyType "OmitExtension" CrlDistributionPointExtensionConfigurationProperty = Value Prelude.Bool
  set
    newValue
    CrlDistributionPointExtensionConfigurationProperty {..}
    = CrlDistributionPointExtensionConfigurationProperty
        {omitExtension = newValue, ..}