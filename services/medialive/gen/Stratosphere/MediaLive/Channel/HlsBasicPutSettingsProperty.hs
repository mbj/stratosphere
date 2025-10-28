module Stratosphere.MediaLive.Channel.HlsBasicPutSettingsProperty (
        HlsBasicPutSettingsProperty(..), mkHlsBasicPutSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsBasicPutSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html>
    HlsBasicPutSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-connectionretryinterval>
                                 connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-filecacheduration>
                                 filecacheDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-numretries>
                                 numRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-restartdelay>
                                 restartDelay :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsBasicPutSettingsProperty :: HlsBasicPutSettingsProperty
mkHlsBasicPutSettingsProperty
  = HlsBasicPutSettingsProperty
      {haddock_workaround_ = (),
       connectionRetryInterval = Prelude.Nothing,
       filecacheDuration = Prelude.Nothing, numRetries = Prelude.Nothing,
       restartDelay = Prelude.Nothing}
instance ToResourceProperties HlsBasicPutSettingsProperty where
  toResourceProperties HlsBasicPutSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsBasicPutSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionRetryInterval"
                              Prelude.<$> connectionRetryInterval,
                            (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
                            (JSON..=) "NumRetries" Prelude.<$> numRetries,
                            (JSON..=) "RestartDelay" Prelude.<$> restartDelay])}
instance JSON.ToJSON HlsBasicPutSettingsProperty where
  toJSON HlsBasicPutSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionRetryInterval"
                 Prelude.<$> connectionRetryInterval,
               (JSON..=) "FilecacheDuration" Prelude.<$> filecacheDuration,
               (JSON..=) "NumRetries" Prelude.<$> numRetries,
               (JSON..=) "RestartDelay" Prelude.<$> restartDelay]))
instance Property "ConnectionRetryInterval" HlsBasicPutSettingsProperty where
  type PropertyType "ConnectionRetryInterval" HlsBasicPutSettingsProperty = Value Prelude.Integer
  set newValue HlsBasicPutSettingsProperty {..}
    = HlsBasicPutSettingsProperty
        {connectionRetryInterval = Prelude.pure newValue, ..}
instance Property "FilecacheDuration" HlsBasicPutSettingsProperty where
  type PropertyType "FilecacheDuration" HlsBasicPutSettingsProperty = Value Prelude.Integer
  set newValue HlsBasicPutSettingsProperty {..}
    = HlsBasicPutSettingsProperty
        {filecacheDuration = Prelude.pure newValue, ..}
instance Property "NumRetries" HlsBasicPutSettingsProperty where
  type PropertyType "NumRetries" HlsBasicPutSettingsProperty = Value Prelude.Integer
  set newValue HlsBasicPutSettingsProperty {..}
    = HlsBasicPutSettingsProperty
        {numRetries = Prelude.pure newValue, ..}
instance Property "RestartDelay" HlsBasicPutSettingsProperty where
  type PropertyType "RestartDelay" HlsBasicPutSettingsProperty = Value Prelude.Integer
  set newValue HlsBasicPutSettingsProperty {..}
    = HlsBasicPutSettingsProperty
        {restartDelay = Prelude.pure newValue, ..}