module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.DestinationLogsConfigurationProperty (
        module Exports, DestinationLogsConfigurationProperty(..),
        mkDestinationLogsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.LogsBackupConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.LogsEncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DestinationLogsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration.html>
    DestinationLogsConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration-backupconfiguration>
                                          backupConfiguration :: (Prelude.Maybe LogsBackupConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration-logsencryptionconfiguration>
                                          logsEncryptionConfiguration :: (Prelude.Maybe LogsEncryptionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationLogsConfigurationProperty ::
  DestinationLogsConfigurationProperty
mkDestinationLogsConfigurationProperty
  = DestinationLogsConfigurationProperty
      {haddock_workaround_ = (), backupConfiguration = Prelude.Nothing,
       logsEncryptionConfiguration = Prelude.Nothing}
instance ToResourceProperties DestinationLogsConfigurationProperty where
  toResourceProperties DestinationLogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.DestinationLogsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackupConfiguration" Prelude.<$> backupConfiguration,
                            (JSON..=) "LogsEncryptionConfiguration"
                              Prelude.<$> logsEncryptionConfiguration])}
instance JSON.ToJSON DestinationLogsConfigurationProperty where
  toJSON DestinationLogsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackupConfiguration" Prelude.<$> backupConfiguration,
               (JSON..=) "LogsEncryptionConfiguration"
                 Prelude.<$> logsEncryptionConfiguration]))
instance Property "BackupConfiguration" DestinationLogsConfigurationProperty where
  type PropertyType "BackupConfiguration" DestinationLogsConfigurationProperty = LogsBackupConfigurationProperty
  set newValue DestinationLogsConfigurationProperty {..}
    = DestinationLogsConfigurationProperty
        {backupConfiguration = Prelude.pure newValue, ..}
instance Property "LogsEncryptionConfiguration" DestinationLogsConfigurationProperty where
  type PropertyType "LogsEncryptionConfiguration" DestinationLogsConfigurationProperty = LogsEncryptionConfigurationProperty
  set newValue DestinationLogsConfigurationProperty {..}
    = DestinationLogsConfigurationProperty
        {logsEncryptionConfiguration = Prelude.pure newValue, ..}