module Stratosphere.MediaLive.Channel.HlsWebdavSettingsProperty (
        HlsWebdavSettingsProperty(..), mkHlsWebdavSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsWebdavSettingsProperty
  = HlsWebdavSettingsProperty {connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                               filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                               httpTransferMode :: (Prelude.Maybe (Value Prelude.Text)),
                               numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                               restartDelay :: (Prelude.Maybe (Value Prelude.Integer))}
mkHlsWebdavSettingsProperty :: HlsWebdavSettingsProperty
mkHlsWebdavSettingsProperty
  = HlsWebdavSettingsProperty
      {connectionRetryInterval = Prelude.Nothing,
       filecacheDuration = Prelude.Nothing,
       httpTransferMode = Prelude.Nothing, numRetries = Prelude.Nothing,
       restartDelay = Prelude.Nothing}
instance ToResourceProperties HlsWebdavSettingsProperty where
  toResourceProperties HlsWebdavSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsWebdavSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionRetryInterval"
                              Prelude.<$> connectionRetryInterval,
                            (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
                            (JSON..=) "HttpTransferMode" Prelude.<$> httpTransferMode,
                            (JSON..=) "NumRetries" Prelude.<$> numRetries,
                            (JSON..=) "RestartDelay" Prelude.<$> restartDelay])}
instance JSON.ToJSON HlsWebdavSettingsProperty where
  toJSON HlsWebdavSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionRetryInterval"
                 Prelude.<$> connectionRetryInterval,
               (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
               (JSON..=) "HttpTransferMode" Prelude.<$> httpTransferMode,
               (JSON..=) "NumRetries" Prelude.<$> numRetries,
               (JSON..=) "RestartDelay" Prelude.<$> restartDelay]))
instance Property "ConnectionRetryInterval" HlsWebdavSettingsProperty where
  type PropertyType "ConnectionRetryInterval" HlsWebdavSettingsProperty = Value Prelude.Integer
  set newValue HlsWebdavSettingsProperty {..}
    = HlsWebdavSettingsProperty
        {connectionRetryInterval = Prelude.pure newValue, ..}
instance Property "FilecacheDuration" HlsWebdavSettingsProperty where
  type PropertyType "FilecacheDuration" HlsWebdavSettingsProperty = Value Prelude.Integer
  set newValue HlsWebdavSettingsProperty {..}
    = HlsWebdavSettingsProperty
        {filecacheDuration = Prelude.pure newValue, ..}
instance Property "HttpTransferMode" HlsWebdavSettingsProperty where
  type PropertyType "HttpTransferMode" HlsWebdavSettingsProperty = Value Prelude.Text
  set newValue HlsWebdavSettingsProperty {..}
    = HlsWebdavSettingsProperty
        {httpTransferMode = Prelude.pure newValue, ..}
instance Property "NumRetries" HlsWebdavSettingsProperty where
  type PropertyType "NumRetries" HlsWebdavSettingsProperty = Value Prelude.Integer
  set newValue HlsWebdavSettingsProperty {..}
    = HlsWebdavSettingsProperty
        {numRetries = Prelude.pure newValue, ..}
instance Property "RestartDelay" HlsWebdavSettingsProperty where
  type PropertyType "RestartDelay" HlsWebdavSettingsProperty = Value Prelude.Integer
  set newValue HlsWebdavSettingsProperty {..}
    = HlsWebdavSettingsProperty
        {restartDelay = Prelude.pure newValue, ..}