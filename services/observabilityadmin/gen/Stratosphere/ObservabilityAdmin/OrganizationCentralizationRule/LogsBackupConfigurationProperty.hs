module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.LogsBackupConfigurationProperty (
        LogsBackupConfigurationProperty(..),
        mkLogsBackupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogsBackupConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsbackupconfiguration.html>
    LogsBackupConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsbackupconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-logsbackupconfiguration-kmskeyarn>
                                     kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-logsbackupconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-logsbackupconfiguration-region>
                                     region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogsBackupConfigurationProperty ::
  Value Prelude.Text -> LogsBackupConfigurationProperty
mkLogsBackupConfigurationProperty region
  = LogsBackupConfigurationProperty
      {haddock_workaround_ = (), region = region,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties LogsBackupConfigurationProperty where
  toResourceProperties LogsBackupConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.LogsBackupConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON LogsBackupConfigurationProperty where
  toJSON LogsBackupConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region]
              (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "KmsKeyArn" LogsBackupConfigurationProperty where
  type PropertyType "KmsKeyArn" LogsBackupConfigurationProperty = Value Prelude.Text
  set newValue LogsBackupConfigurationProperty {..}
    = LogsBackupConfigurationProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Region" LogsBackupConfigurationProperty where
  type PropertyType "Region" LogsBackupConfigurationProperty = Value Prelude.Text
  set newValue LogsBackupConfigurationProperty {..}
    = LogsBackupConfigurationProperty {region = newValue, ..}