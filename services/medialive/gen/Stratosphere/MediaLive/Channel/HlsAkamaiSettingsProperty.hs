module Stratosphere.MediaLive.Channel.HlsAkamaiSettingsProperty (
        HlsAkamaiSettingsProperty(..), mkHlsAkamaiSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsAkamaiSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html>
    HlsAkamaiSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-connectionretryinterval>
                               connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-filecacheduration>
                               filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-httptransfermode>
                               httpTransferMode :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-numretries>
                               numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-restartdelay>
                               restartDelay :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-salt>
                               salt :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-token>
                               token :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsAkamaiSettingsProperty :: HlsAkamaiSettingsProperty
mkHlsAkamaiSettingsProperty
  = HlsAkamaiSettingsProperty
      {haddock_workaround_ = (),
       connectionRetryInterval = Prelude.Nothing,
       filecacheDuration = Prelude.Nothing,
       httpTransferMode = Prelude.Nothing, numRetries = Prelude.Nothing,
       restartDelay = Prelude.Nothing, salt = Prelude.Nothing,
       token = Prelude.Nothing}
instance ToResourceProperties HlsAkamaiSettingsProperty where
  toResourceProperties HlsAkamaiSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsAkamaiSettings",
         supportsTags = Prelude.False,
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