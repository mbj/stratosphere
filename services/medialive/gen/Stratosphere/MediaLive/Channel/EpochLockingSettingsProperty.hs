module Stratosphere.MediaLive.Channel.EpochLockingSettingsProperty (
        EpochLockingSettingsProperty(..), mkEpochLockingSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EpochLockingSettingsProperty
  = EpochLockingSettingsProperty {customEpoch :: (Prelude.Maybe (Value Prelude.Text)),
                                  jamSyncTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEpochLockingSettingsProperty :: EpochLockingSettingsProperty
mkEpochLockingSettingsProperty
  = EpochLockingSettingsProperty
      {customEpoch = Prelude.Nothing, jamSyncTime = Prelude.Nothing}
instance ToResourceProperties EpochLockingSettingsProperty where
  toResourceProperties EpochLockingSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EpochLockingSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomEpoch" Prelude.<$> customEpoch,
                            (JSON..=) "JamSyncTime" Prelude.<$> jamSyncTime])}
instance JSON.ToJSON EpochLockingSettingsProperty where
  toJSON EpochLockingSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomEpoch" Prelude.<$> customEpoch,
               (JSON..=) "JamSyncTime" Prelude.<$> jamSyncTime]))
instance Property "CustomEpoch" EpochLockingSettingsProperty where
  type PropertyType "CustomEpoch" EpochLockingSettingsProperty = Value Prelude.Text
  set newValue EpochLockingSettingsProperty {..}
    = EpochLockingSettingsProperty
        {customEpoch = Prelude.pure newValue, ..}
instance Property "JamSyncTime" EpochLockingSettingsProperty where
  type PropertyType "JamSyncTime" EpochLockingSettingsProperty = Value Prelude.Text
  set newValue EpochLockingSettingsProperty {..}
    = EpochLockingSettingsProperty
        {jamSyncTime = Prelude.pure newValue, ..}