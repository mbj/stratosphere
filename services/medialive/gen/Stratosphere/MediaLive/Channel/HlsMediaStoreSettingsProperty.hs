module Stratosphere.MediaLive.Channel.HlsMediaStoreSettingsProperty (
        HlsMediaStoreSettingsProperty(..), mkHlsMediaStoreSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsMediaStoreSettingsProperty
  = HlsMediaStoreSettingsProperty {connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                   filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                                   mediaStoreStorageClass :: (Prelude.Maybe (Value Prelude.Text)),
                                   numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                                   restartDelay :: (Prelude.Maybe (Value Prelude.Integer))}
mkHlsMediaStoreSettingsProperty :: HlsMediaStoreSettingsProperty
mkHlsMediaStoreSettingsProperty
  = HlsMediaStoreSettingsProperty
      {connectionRetryInterval = Prelude.Nothing,
       filecacheDuration = Prelude.Nothing,
       mediaStoreStorageClass = Prelude.Nothing,
       numRetries = Prelude.Nothing, restartDelay = Prelude.Nothing}
instance ToResourceProperties HlsMediaStoreSettingsProperty where
  toResourceProperties HlsMediaStoreSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsMediaStoreSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionRetryInterval"
                              Prelude.<$> connectionRetryInterval,
                            (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
                            (JSON..=) "MediaStoreStorageClass"
                              Prelude.<$> mediaStoreStorageClass,
                            (JSON..=) "NumRetries" Prelude.<$> numRetries,
                            (JSON..=) "RestartDelay" Prelude.<$> restartDelay])}
instance JSON.ToJSON HlsMediaStoreSettingsProperty where
  toJSON HlsMediaStoreSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionRetryInterval"
                 Prelude.<$> connectionRetryInterval,
               (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
               (JSON..=) "MediaStoreStorageClass"
                 Prelude.<$> mediaStoreStorageClass,
               (JSON..=) "NumRetries" Prelude.<$> numRetries,
               (JSON..=) "RestartDelay" Prelude.<$> restartDelay]))
instance Property "ConnectionRetryInterval" HlsMediaStoreSettingsProperty where
  type PropertyType "ConnectionRetryInterval" HlsMediaStoreSettingsProperty = Value Prelude.Integer
  set newValue HlsMediaStoreSettingsProperty {..}
    = HlsMediaStoreSettingsProperty
        {connectionRetryInterval = Prelude.pure newValue, ..}
instance Property "FilecacheDuration" HlsMediaStoreSettingsProperty where
  type PropertyType "FilecacheDuration" HlsMediaStoreSettingsProperty = Value Prelude.Integer
  set newValue HlsMediaStoreSettingsProperty {..}
    = HlsMediaStoreSettingsProperty
        {filecacheDuration = Prelude.pure newValue, ..}
instance Property "MediaStoreStorageClass" HlsMediaStoreSettingsProperty where
  type PropertyType "MediaStoreStorageClass" HlsMediaStoreSettingsProperty = Value Prelude.Text
  set newValue HlsMediaStoreSettingsProperty {..}
    = HlsMediaStoreSettingsProperty
        {mediaStoreStorageClass = Prelude.pure newValue, ..}
instance Property "NumRetries" HlsMediaStoreSettingsProperty where
  type PropertyType "NumRetries" HlsMediaStoreSettingsProperty = Value Prelude.Integer
  set newValue HlsMediaStoreSettingsProperty {..}
    = HlsMediaStoreSettingsProperty
        {numRetries = Prelude.pure newValue, ..}
instance Property "RestartDelay" HlsMediaStoreSettingsProperty where
  type PropertyType "RestartDelay" HlsMediaStoreSettingsProperty = Value Prelude.Integer
  set newValue HlsMediaStoreSettingsProperty {..}
    = HlsMediaStoreSettingsProperty
        {restartDelay = Prelude.pure newValue, ..}