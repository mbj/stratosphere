module Stratosphere.IoT.AccountAuditConfiguration.DeviceCertAgeAuditCheckConfigurationProperty (
        module Exports, DeviceCertAgeAuditCheckConfigurationProperty(..),
        mkDeviceCertAgeAuditCheckConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.AccountAuditConfiguration.CertAgeCheckCustomConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceCertAgeAuditCheckConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertageauditcheckconfiguration.html>
    DeviceCertAgeAuditCheckConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertageauditcheckconfiguration.html#cfn-iot-accountauditconfiguration-devicecertageauditcheckconfiguration-configuration>
                                                  configuration :: (Prelude.Maybe CertAgeCheckCustomConfigurationProperty),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertageauditcheckconfiguration.html#cfn-iot-accountauditconfiguration-devicecertageauditcheckconfiguration-enabled>
                                                  enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceCertAgeAuditCheckConfigurationProperty ::
  DeviceCertAgeAuditCheckConfigurationProperty
mkDeviceCertAgeAuditCheckConfigurationProperty
  = DeviceCertAgeAuditCheckConfigurationProperty
      {haddock_workaround_ = (), configuration = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties DeviceCertAgeAuditCheckConfigurationProperty where
  toResourceProperties
    DeviceCertAgeAuditCheckConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.DeviceCertAgeAuditCheckConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON DeviceCertAgeAuditCheckConfigurationProperty where
  toJSON DeviceCertAgeAuditCheckConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Configuration" DeviceCertAgeAuditCheckConfigurationProperty where
  type PropertyType "Configuration" DeviceCertAgeAuditCheckConfigurationProperty = CertAgeCheckCustomConfigurationProperty
  set newValue DeviceCertAgeAuditCheckConfigurationProperty {..}
    = DeviceCertAgeAuditCheckConfigurationProperty
        {configuration = Prelude.pure newValue, ..}
instance Property "Enabled" DeviceCertAgeAuditCheckConfigurationProperty where
  type PropertyType "Enabled" DeviceCertAgeAuditCheckConfigurationProperty = Value Prelude.Bool
  set newValue DeviceCertAgeAuditCheckConfigurationProperty {..}
    = DeviceCertAgeAuditCheckConfigurationProperty
        {enabled = Prelude.pure newValue, ..}