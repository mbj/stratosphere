module Stratosphere.MediaLive.Channel.HlsAkamaiSettingsProperty (
        HlsAkamaiSettingsProperty(..), mkHlsAkamaiSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsAkamaiSettingsProperty
  = HlsAkamaiSettingsProperty {connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                               filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                               httpTransferMode :: (Prelude.Maybe (Value Prelude.Text)),
                               numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                               restartDelay :: (Prelude.Maybe (Value Prelude.Integer)),
                               salt :: (Prelude.Maybe (Value Prelude.Text)),
                               token :: (Prelude.Maybe (Value Prelude.Text))}
mkHlsAkamaiSettingsProperty :: HlsAkamaiSettingsProperty
mkHlsAkamaiSettingsProperty
  = HlsAkamaiSettingsProperty
      {connectionRetryInterval = Prelude.Nothing,
       filecacheDuration = Prelude.Nothing,
       httpTransferMode = Prelude.Nothing, numRetries = Prelude.Nothing,
       restartDelay = Prelude.Nothing, salt = Prelude.Nothing,
       token = Prelude.Nothing}
instance ToResourceProperties HlsAkamaiSettingsProperty where
  toResourceProperties HlsAkamaiSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsAkamaiSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionRetryInterval"
                              Prelude.<$> connectionRetryInterval,
                            (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
                            (JSON..=) "HttpTransferMode" Prelude.<$> httpTransferMode,
                            (JSON..=) "NumRetries" Prelude.<$> numRetries,
                            (JSON..=) "RestartDelay" Prelude.<$> restartDelay,
                            (JSON..=) "Salt" Prelude.<$> salt,
                            (JSON..=) "Token" Prelude.<$> token])}
instance JSON.ToJSON HlsAkamaiSettingsProperty where
  toJSON HlsAkamaiSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionRetryInterval"
                 Prelude.<$> connectionRetryInterval,
               (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
               (JSON..=) "HttpTransferMode" Prelude.<$> httpTransferMode,
               (JSON..=) "NumRetries" Prelude.<$> numRetries,
               (JSON..=) "RestartDelay" Prelude.<$> restartDelay,
               (JSON..=) "Salt" Prelude.<$> salt,
               (JSON..=) "Token" Prelude.<$> token]))
instance Property "ConnectionRetryInterval" HlsAkamaiSettingsProperty where
  type PropertyType "ConnectionRetryInterval" HlsAkamaiSettingsProperty = Value Prelude.Integer
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty
        {connectionRetryInterval = Prelude.pure newValue, ..}
instance Property "FilecacheDuration" HlsAkamaiSettingsProperty where
  type PropertyType "FilecacheDuration" HlsAkamaiSettingsProperty = Value Prelude.Integer
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty
        {filecacheDuration = Prelude.pure newValue, ..}
instance Property "HttpTransferMode" HlsAkamaiSettingsProperty where
  type PropertyType "HttpTransferMode" HlsAkamaiSettingsProperty = Value Prelude.Text
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty
        {httpTransferMode = Prelude.pure newValue, ..}
instance Property "NumRetries" HlsAkamaiSettingsProperty where
  type PropertyType "NumRetries" HlsAkamaiSettingsProperty = Value Prelude.Integer
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty
        {numRetries = Prelude.pure newValue, ..}
instance Property "RestartDelay" HlsAkamaiSettingsProperty where
  type PropertyType "RestartDelay" HlsAkamaiSettingsProperty = Value Prelude.Integer
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty
        {restartDelay = Prelude.pure newValue, ..}
instance Property "Salt" HlsAkamaiSettingsProperty where
  type PropertyType "Salt" HlsAkamaiSettingsProperty = Value Prelude.Text
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty {salt = Prelude.pure newValue, ..}
instance Property "Token" HlsAkamaiSettingsProperty where
  type PropertyType "Token" HlsAkamaiSettingsProperty = Value Prelude.Text
  set newValue HlsAkamaiSettingsProperty {..}
    = HlsAkamaiSettingsProperty {token = Prelude.pure newValue, ..}