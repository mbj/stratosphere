module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.LogsEncryptionConfigurationProperty (
        LogsEncryptionConfigurationProperty(..),
        mkLogsEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogsEncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration.html>
    LogsEncryptionConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration-encryptionconflictresolutionstrategy>
                                         encryptionConflictResolutionStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration-encryptionstrategy>
                                         encryptionStrategy :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-logsencryptionconfiguration-kmskeyarn>
                                         kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogsEncryptionConfigurationProperty ::
  Value Prelude.Text -> LogsEncryptionConfigurationProperty
mkLogsEncryptionConfigurationProperty encryptionStrategy
  = LogsEncryptionConfigurationProperty
      {haddock_workaround_ = (), encryptionStrategy = encryptionStrategy,
       encryptionConflictResolutionStrategy = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties LogsEncryptionConfigurationProperty where
  toResourceProperties LogsEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.LogsEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionStrategy" JSON..= encryptionStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConflictResolutionStrategy"
                                 Prelude.<$> encryptionConflictResolutionStrategy,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON LogsEncryptionConfigurationProperty where
  toJSON LogsEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionStrategy" JSON..= encryptionStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConflictResolutionStrategy"
                    Prelude.<$> encryptionConflictResolutionStrategy,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "EncryptionConflictResolutionStrategy" LogsEncryptionConfigurationProperty where
  type PropertyType "EncryptionConflictResolutionStrategy" LogsEncryptionConfigurationProperty = Value Prelude.Text
  set newValue LogsEncryptionConfigurationProperty {..}
    = LogsEncryptionConfigurationProperty
        {encryptionConflictResolutionStrategy = Prelude.pure newValue, ..}
instance Property "EncryptionStrategy" LogsEncryptionConfigurationProperty where
  type PropertyType "EncryptionStrategy" LogsEncryptionConfigurationProperty = Value Prelude.Text
  set newValue LogsEncryptionConfigurationProperty {..}
    = LogsEncryptionConfigurationProperty
        {encryptionStrategy = newValue, ..}
instance Property "KmsKeyArn" LogsEncryptionConfigurationProperty where
  type PropertyType "KmsKeyArn" LogsEncryptionConfigurationProperty = Value Prelude.Text
  set newValue LogsEncryptionConfigurationProperty {..}
    = LogsEncryptionConfigurationProperty
        {kmsKeyArn = Prelude.pure newValue, ..}