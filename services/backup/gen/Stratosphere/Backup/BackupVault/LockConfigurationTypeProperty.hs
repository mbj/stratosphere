module Stratosphere.Backup.BackupVault.LockConfigurationTypeProperty (
        LockConfigurationTypeProperty(..), mkLockConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LockConfigurationTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-lockconfigurationtype.html>
    LockConfigurationTypeProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-lockconfigurationtype.html#cfn-backup-backupvault-lockconfigurationtype-changeablefordays>
                                   changeableForDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-lockconfigurationtype.html#cfn-backup-backupvault-lockconfigurationtype-maxretentiondays>
                                   maxRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-lockconfigurationtype.html#cfn-backup-backupvault-lockconfigurationtype-minretentiondays>
                                   minRetentionDays :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLockConfigurationTypeProperty ::
  Value Prelude.Integer -> LockConfigurationTypeProperty
mkLockConfigurationTypeProperty minRetentionDays
  = LockConfigurationTypeProperty
      {haddock_workaround_ = (), minRetentionDays = minRetentionDays,
       changeableForDays = Prelude.Nothing,
       maxRetentionDays = Prelude.Nothing}
instance ToResourceProperties LockConfigurationTypeProperty where
  toResourceProperties LockConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupVault.LockConfigurationType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MinRetentionDays" JSON..= minRetentionDays]
                           (Prelude.catMaybes
                              [(JSON..=) "ChangeableForDays" Prelude.<$> changeableForDays,
                               (JSON..=) "MaxRetentionDays" Prelude.<$> maxRetentionDays]))}
instance JSON.ToJSON LockConfigurationTypeProperty where
  toJSON LockConfigurationTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MinRetentionDays" JSON..= minRetentionDays]
              (Prelude.catMaybes
                 [(JSON..=) "ChangeableForDays" Prelude.<$> changeableForDays,
                  (JSON..=) "MaxRetentionDays" Prelude.<$> maxRetentionDays])))
instance Property "ChangeableForDays" LockConfigurationTypeProperty where
  type PropertyType "ChangeableForDays" LockConfigurationTypeProperty = Value Prelude.Integer
  set newValue LockConfigurationTypeProperty {..}
    = LockConfigurationTypeProperty
        {changeableForDays = Prelude.pure newValue, ..}
instance Property "MaxRetentionDays" LockConfigurationTypeProperty where
  type PropertyType "MaxRetentionDays" LockConfigurationTypeProperty = Value Prelude.Integer
  set newValue LockConfigurationTypeProperty {..}
    = LockConfigurationTypeProperty
        {maxRetentionDays = Prelude.pure newValue, ..}
instance Property "MinRetentionDays" LockConfigurationTypeProperty where
  type PropertyType "MinRetentionDays" LockConfigurationTypeProperty = Value Prelude.Integer
  set newValue LockConfigurationTypeProperty {..}
    = LockConfigurationTypeProperty {minRetentionDays = newValue, ..}