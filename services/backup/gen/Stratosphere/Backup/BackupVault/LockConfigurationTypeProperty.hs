module Stratosphere.Backup.BackupVault.LockConfigurationTypeProperty (
        LockConfigurationTypeProperty(..), mkLockConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LockConfigurationTypeProperty
  = LockConfigurationTypeProperty {changeableForDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                   maxRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                   minRetentionDays :: (Value Prelude.Integer)}
mkLockConfigurationTypeProperty ::
  Value Prelude.Integer -> LockConfigurationTypeProperty
mkLockConfigurationTypeProperty minRetentionDays
  = LockConfigurationTypeProperty
      {minRetentionDays = minRetentionDays,
       changeableForDays = Prelude.Nothing,
       maxRetentionDays = Prelude.Nothing}
instance ToResourceProperties LockConfigurationTypeProperty where
  toResourceProperties LockConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupVault.LockConfigurationType",
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