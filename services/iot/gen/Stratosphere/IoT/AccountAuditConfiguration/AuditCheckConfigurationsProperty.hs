module Stratosphere.IoT.AccountAuditConfiguration.AuditCheckConfigurationsProperty (
        module Exports, AuditCheckConfigurationsProperty(..),
        mkAuditCheckConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.AccountAuditConfiguration.AuditCheckConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AuditCheckConfigurationsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html>
    AuditCheckConfigurationsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-authenticatedcognitoroleoverlypermissivecheck>
                                      authenticatedCognitoRoleOverlyPermissiveCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-cacertificateexpiringcheck>
                                      caCertificateExpiringCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-cacertificatekeyqualitycheck>
                                      caCertificateKeyQualityCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-conflictingclientidscheck>
                                      conflictingClientIdsCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificateexpiringcheck>
                                      deviceCertificateExpiringCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificatekeyqualitycheck>
                                      deviceCertificateKeyQualityCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificatesharedcheck>
                                      deviceCertificateSharedCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-intermediatecarevokedforactivedevicecertificatescheck>
                                      intermediateCaRevokedForActiveDeviceCertificatesCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotpolicypotentialmisconfigurationcheck>
                                      ioTPolicyPotentialMisConfigurationCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotpolicyoverlypermissivecheck>
                                      iotPolicyOverlyPermissiveCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotrolealiasallowsaccesstounusedservicescheck>
                                      iotRoleAliasAllowsAccessToUnusedServicesCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotrolealiasoverlypermissivecheck>
                                      iotRoleAliasOverlyPermissiveCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-loggingdisabledcheck>
                                      loggingDisabledCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-revokedcacertificatestillactivecheck>
                                      revokedCaCertificateStillActiveCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-revokeddevicecertificatestillactivecheck>
                                      revokedDeviceCertificateStillActiveCheck :: (Prelude.Maybe AuditCheckConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-unauthenticatedcognitoroleoverlypermissivecheck>
                                      unauthenticatedCognitoRoleOverlyPermissiveCheck :: (Prelude.Maybe AuditCheckConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuditCheckConfigurationsProperty ::
  AuditCheckConfigurationsProperty
mkAuditCheckConfigurationsProperty
  = AuditCheckConfigurationsProperty
      {authenticatedCognitoRoleOverlyPermissiveCheck = Prelude.Nothing,
       caCertificateExpiringCheck = Prelude.Nothing,
       caCertificateKeyQualityCheck = Prelude.Nothing,
       conflictingClientIdsCheck = Prelude.Nothing,
       deviceCertificateExpiringCheck = Prelude.Nothing,
       deviceCertificateKeyQualityCheck = Prelude.Nothing,
       deviceCertificateSharedCheck = Prelude.Nothing,
       intermediateCaRevokedForActiveDeviceCertificatesCheck = Prelude.Nothing,
       ioTPolicyPotentialMisConfigurationCheck = Prelude.Nothing,
       iotPolicyOverlyPermissiveCheck = Prelude.Nothing,
       iotRoleAliasAllowsAccessToUnusedServicesCheck = Prelude.Nothing,
       iotRoleAliasOverlyPermissiveCheck = Prelude.Nothing,
       loggingDisabledCheck = Prelude.Nothing,
       revokedCaCertificateStillActiveCheck = Prelude.Nothing,
       revokedDeviceCertificateStillActiveCheck = Prelude.Nothing,
       unauthenticatedCognitoRoleOverlyPermissiveCheck = Prelude.Nothing}
instance ToResourceProperties AuditCheckConfigurationsProperty where
  toResourceProperties AuditCheckConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.AuditCheckConfigurations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthenticatedCognitoRoleOverlyPermissiveCheck"
                              Prelude.<$> authenticatedCognitoRoleOverlyPermissiveCheck,
                            (JSON..=) "CaCertificateExpiringCheck"
                              Prelude.<$> caCertificateExpiringCheck,
                            (JSON..=) "CaCertificateKeyQualityCheck"
                              Prelude.<$> caCertificateKeyQualityCheck,
                            (JSON..=) "ConflictingClientIdsCheck"
                              Prelude.<$> conflictingClientIdsCheck,
                            (JSON..=) "DeviceCertificateExpiringCheck"
                              Prelude.<$> deviceCertificateExpiringCheck,
                            (JSON..=) "DeviceCertificateKeyQualityCheck"
                              Prelude.<$> deviceCertificateKeyQualityCheck,
                            (JSON..=) "DeviceCertificateSharedCheck"
                              Prelude.<$> deviceCertificateSharedCheck,
                            (JSON..=) "IntermediateCaRevokedForActiveDeviceCertificatesCheck"
                              Prelude.<$> intermediateCaRevokedForActiveDeviceCertificatesCheck,
                            (JSON..=) "IoTPolicyPotentialMisConfigurationCheck"
                              Prelude.<$> ioTPolicyPotentialMisConfigurationCheck,
                            (JSON..=) "IotPolicyOverlyPermissiveCheck"
                              Prelude.<$> iotPolicyOverlyPermissiveCheck,
                            (JSON..=) "IotRoleAliasAllowsAccessToUnusedServicesCheck"
                              Prelude.<$> iotRoleAliasAllowsAccessToUnusedServicesCheck,
                            (JSON..=) "IotRoleAliasOverlyPermissiveCheck"
                              Prelude.<$> iotRoleAliasOverlyPermissiveCheck,
                            (JSON..=) "LoggingDisabledCheck" Prelude.<$> loggingDisabledCheck,
                            (JSON..=) "RevokedCaCertificateStillActiveCheck"
                              Prelude.<$> revokedCaCertificateStillActiveCheck,
                            (JSON..=) "RevokedDeviceCertificateStillActiveCheck"
                              Prelude.<$> revokedDeviceCertificateStillActiveCheck,
                            (JSON..=) "UnauthenticatedCognitoRoleOverlyPermissiveCheck"
                              Prelude.<$> unauthenticatedCognitoRoleOverlyPermissiveCheck])}
instance JSON.ToJSON AuditCheckConfigurationsProperty where
  toJSON AuditCheckConfigurationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthenticatedCognitoRoleOverlyPermissiveCheck"
                 Prelude.<$> authenticatedCognitoRoleOverlyPermissiveCheck,
               (JSON..=) "CaCertificateExpiringCheck"
                 Prelude.<$> caCertificateExpiringCheck,
               (JSON..=) "CaCertificateKeyQualityCheck"
                 Prelude.<$> caCertificateKeyQualityCheck,
               (JSON..=) "ConflictingClientIdsCheck"
                 Prelude.<$> conflictingClientIdsCheck,
               (JSON..=) "DeviceCertificateExpiringCheck"
                 Prelude.<$> deviceCertificateExpiringCheck,
               (JSON..=) "DeviceCertificateKeyQualityCheck"
                 Prelude.<$> deviceCertificateKeyQualityCheck,
               (JSON..=) "DeviceCertificateSharedCheck"
                 Prelude.<$> deviceCertificateSharedCheck,
               (JSON..=) "IntermediateCaRevokedForActiveDeviceCertificatesCheck"
                 Prelude.<$> intermediateCaRevokedForActiveDeviceCertificatesCheck,
               (JSON..=) "IoTPolicyPotentialMisConfigurationCheck"
                 Prelude.<$> ioTPolicyPotentialMisConfigurationCheck,
               (JSON..=) "IotPolicyOverlyPermissiveCheck"
                 Prelude.<$> iotPolicyOverlyPermissiveCheck,
               (JSON..=) "IotRoleAliasAllowsAccessToUnusedServicesCheck"
                 Prelude.<$> iotRoleAliasAllowsAccessToUnusedServicesCheck,
               (JSON..=) "IotRoleAliasOverlyPermissiveCheck"
                 Prelude.<$> iotRoleAliasOverlyPermissiveCheck,
               (JSON..=) "LoggingDisabledCheck" Prelude.<$> loggingDisabledCheck,
               (JSON..=) "RevokedCaCertificateStillActiveCheck"
                 Prelude.<$> revokedCaCertificateStillActiveCheck,
               (JSON..=) "RevokedDeviceCertificateStillActiveCheck"
                 Prelude.<$> revokedDeviceCertificateStillActiveCheck,
               (JSON..=) "UnauthenticatedCognitoRoleOverlyPermissiveCheck"
                 Prelude.<$> unauthenticatedCognitoRoleOverlyPermissiveCheck]))
instance Property "AuthenticatedCognitoRoleOverlyPermissiveCheck" AuditCheckConfigurationsProperty where
  type PropertyType "AuthenticatedCognitoRoleOverlyPermissiveCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {authenticatedCognitoRoleOverlyPermissiveCheck = Prelude.pure
                                                           newValue,
         ..}
instance Property "CaCertificateExpiringCheck" AuditCheckConfigurationsProperty where
  type PropertyType "CaCertificateExpiringCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {caCertificateExpiringCheck = Prelude.pure newValue, ..}
instance Property "CaCertificateKeyQualityCheck" AuditCheckConfigurationsProperty where
  type PropertyType "CaCertificateKeyQualityCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {caCertificateKeyQualityCheck = Prelude.pure newValue, ..}
instance Property "ConflictingClientIdsCheck" AuditCheckConfigurationsProperty where
  type PropertyType "ConflictingClientIdsCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {conflictingClientIdsCheck = Prelude.pure newValue, ..}
instance Property "DeviceCertificateExpiringCheck" AuditCheckConfigurationsProperty where
  type PropertyType "DeviceCertificateExpiringCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {deviceCertificateExpiringCheck = Prelude.pure newValue, ..}
instance Property "DeviceCertificateKeyQualityCheck" AuditCheckConfigurationsProperty where
  type PropertyType "DeviceCertificateKeyQualityCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {deviceCertificateKeyQualityCheck = Prelude.pure newValue, ..}
instance Property "DeviceCertificateSharedCheck" AuditCheckConfigurationsProperty where
  type PropertyType "DeviceCertificateSharedCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {deviceCertificateSharedCheck = Prelude.pure newValue, ..}
instance Property "IntermediateCaRevokedForActiveDeviceCertificatesCheck" AuditCheckConfigurationsProperty where
  type PropertyType "IntermediateCaRevokedForActiveDeviceCertificatesCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {intermediateCaRevokedForActiveDeviceCertificatesCheck = Prelude.pure
                                                                   newValue,
         ..}
instance Property "IoTPolicyPotentialMisConfigurationCheck" AuditCheckConfigurationsProperty where
  type PropertyType "IoTPolicyPotentialMisConfigurationCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {ioTPolicyPotentialMisConfigurationCheck = Prelude.pure newValue,
         ..}
instance Property "IotPolicyOverlyPermissiveCheck" AuditCheckConfigurationsProperty where
  type PropertyType "IotPolicyOverlyPermissiveCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {iotPolicyOverlyPermissiveCheck = Prelude.pure newValue, ..}
instance Property "IotRoleAliasAllowsAccessToUnusedServicesCheck" AuditCheckConfigurationsProperty where
  type PropertyType "IotRoleAliasAllowsAccessToUnusedServicesCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {iotRoleAliasAllowsAccessToUnusedServicesCheck = Prelude.pure
                                                           newValue,
         ..}
instance Property "IotRoleAliasOverlyPermissiveCheck" AuditCheckConfigurationsProperty where
  type PropertyType "IotRoleAliasOverlyPermissiveCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {iotRoleAliasOverlyPermissiveCheck = Prelude.pure newValue, ..}
instance Property "LoggingDisabledCheck" AuditCheckConfigurationsProperty where
  type PropertyType "LoggingDisabledCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {loggingDisabledCheck = Prelude.pure newValue, ..}
instance Property "RevokedCaCertificateStillActiveCheck" AuditCheckConfigurationsProperty where
  type PropertyType "RevokedCaCertificateStillActiveCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {revokedCaCertificateStillActiveCheck = Prelude.pure newValue, ..}
instance Property "RevokedDeviceCertificateStillActiveCheck" AuditCheckConfigurationsProperty where
  type PropertyType "RevokedDeviceCertificateStillActiveCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {revokedDeviceCertificateStillActiveCheck = Prelude.pure newValue,
         ..}
instance Property "UnauthenticatedCognitoRoleOverlyPermissiveCheck" AuditCheckConfigurationsProperty where
  type PropertyType "UnauthenticatedCognitoRoleOverlyPermissiveCheck" AuditCheckConfigurationsProperty = AuditCheckConfigurationProperty
  set newValue AuditCheckConfigurationsProperty {..}
    = AuditCheckConfigurationsProperty
        {unauthenticatedCognitoRoleOverlyPermissiveCheck = Prelude.pure
                                                             newValue,
         ..}