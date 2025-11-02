module Stratosphere.MediaLive.Channel.HlsMediaStoreSettingsProperty (
        HlsMediaStoreSettingsProperty(..), mkHlsMediaStoreSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsMediaStoreSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html>
    HlsMediaStoreSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-connectionretryinterval>
                                   connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-filecacheduration>
                                   filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-mediastorestorageclass>
                                   mediaStoreStorageClass :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-numretries>
                                   numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-restartdelay>
                                   restartDelay :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsMediaStoreSettingsProperty :: HlsMediaStoreSettingsProperty
mkHlsMediaStoreSettingsProperty
  = HlsMediaStoreSettingsProperty
      {haddock_workaround_ = (),
       connectionRetryInterval = Prelude.Nothing,
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