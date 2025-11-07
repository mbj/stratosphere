module Stratosphere.IoT.AccountAuditConfiguration.DeviceCertExpirationAuditCheckConfigurationProperty (
        module Exports,
        DeviceCertExpirationAuditCheckConfigurationProperty(..),
        mkDeviceCertExpirationAuditCheckConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.AccountAuditConfiguration.CertExpirationCheckCustomConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceCertExpirationAuditCheckConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertexpirationauditcheckconfiguration.html>
    DeviceCertExpirationAuditCheckConfigurationProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertexpirationauditcheckconfiguration.html#cfn-iot-accountauditconfiguration-devicecertexpirationauditcheckconfiguration-configuration>
                                                         configuration :: (Prelude.Maybe CertExpirationCheckCustomConfigurationProperty),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertexpirationauditcheckconfiguration.html#cfn-iot-accountauditconfiguration-devicecertexpirationauditcheckconfiguration-enabled>
                                                         enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceCertExpirationAuditCheckConfigurationProperty ::
  DeviceCertExpirationAuditCheckConfigurationProperty
mkDeviceCertExpirationAuditCheckConfigurationProperty
  = DeviceCertExpirationAuditCheckConfigurationProperty
      {haddock_workaround_ = (), configuration = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties DeviceCertExpirationAuditCheckConfigurationProperty where
  toResourceProperties
    DeviceCertExpirationAuditCheckConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.DeviceCertExpirationAuditCheckConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON DeviceCertExpirationAuditCheckConfigurationProperty where
  toJSON DeviceCertExpirationAuditCheckConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Configuration" DeviceCertExpirationAuditCheckConfigurationProperty where
  type PropertyType "Configuration" DeviceCertExpirationAuditCheckConfigurationProperty = CertExpirationCheckCustomConfigurationProperty
  set
    newValue
    DeviceCertExpirationAuditCheckConfigurationProperty {..}
    = DeviceCertExpirationAuditCheckConfigurationProperty
        {configuration = Prelude.pure newValue, ..}
instance Property "Enabled" DeviceCertExpirationAuditCheckConfigurationProperty where
  type PropertyType "Enabled" DeviceCertExpirationAuditCheckConfigurationProperty = Value Prelude.Bool
  set
    newValue
    DeviceCertExpirationAuditCheckConfigurationProperty {..}
    = DeviceCertExpirationAuditCheckConfigurationProperty
        {enabled = Prelude.pure newValue, ..}