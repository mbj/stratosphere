module Stratosphere.MediaLive.Channel.HlsWebdavSettingsProperty (
        HlsWebdavSettingsProperty(..), mkHlsWebdavSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsWebdavSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html>
    HlsWebdavSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-connectionretryinterval>
                               connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-filecacheduration>
                               filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-httptransfermode>
                               httpTransferMode :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-numretries>
                               numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-restartdelay>
                               restartDelay :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.False,
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