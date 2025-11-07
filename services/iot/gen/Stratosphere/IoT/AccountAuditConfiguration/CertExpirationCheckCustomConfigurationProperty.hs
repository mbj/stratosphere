module Stratosphere.IoT.AccountAuditConfiguration.CertExpirationCheckCustomConfigurationProperty (
        CertExpirationCheckCustomConfigurationProperty(..),
        mkCertExpirationCheckCustomConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertExpirationCheckCustomConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-certexpirationcheckcustomconfiguration.html>
    CertExpirationCheckCustomConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-certexpirationcheckcustomconfiguration.html#cfn-iot-accountauditconfiguration-certexpirationcheckcustomconfiguration-certexpirationthresholdindays>
                                                    certExpirationThresholdInDays :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertExpirationCheckCustomConfigurationProperty ::
  CertExpirationCheckCustomConfigurationProperty
mkCertExpirationCheckCustomConfigurationProperty
  = CertExpirationCheckCustomConfigurationProperty
      {haddock_workaround_ = (),
       certExpirationThresholdInDays = Prelude.Nothing}
instance ToResourceProperties CertExpirationCheckCustomConfigurationProperty where
  toResourceProperties
    CertExpirationCheckCustomConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.CertExpirationCheckCustomConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertExpirationThresholdInDays"
                              Prelude.<$> certExpirationThresholdInDays])}
instance JSON.ToJSON CertExpirationCheckCustomConfigurationProperty where
  toJSON CertExpirationCheckCustomConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertExpirationThresholdInDays"
                 Prelude.<$> certExpirationThresholdInDays]))
instance Property "CertExpirationThresholdInDays" CertExpirationCheckCustomConfigurationProperty where
  type PropertyType "CertExpirationThresholdInDays" CertExpirationCheckCustomConfigurationProperty = Value Prelude.Text
  set newValue CertExpirationCheckCustomConfigurationProperty {..}
    = CertExpirationCheckCustomConfigurationProperty
        {certExpirationThresholdInDays = Prelude.pure newValue, ..}