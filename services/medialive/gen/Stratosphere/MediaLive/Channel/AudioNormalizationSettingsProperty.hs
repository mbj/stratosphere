module Stratosphere.MediaLive.Channel.AudioNormalizationSettingsProperty (
        AudioNormalizationSettingsProperty(..),
        mkAudioNormalizationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioNormalizationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html>
    AudioNormalizationSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html#cfn-medialive-channel-audionormalizationsettings-algorithm>
                                        algorithm :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html#cfn-medialive-channel-audionormalizationsettings-algorithmcontrol>
                                        algorithmControl :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html#cfn-medialive-channel-audionormalizationsettings-targetlkfs>
                                        targetLkfs :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioNormalizationSettingsProperty ::
  AudioNormalizationSettingsProperty
mkAudioNormalizationSettingsProperty
  = AudioNormalizationSettingsProperty
      {haddock_workaround_ = (), algorithm = Prelude.Nothing,
       algorithmControl = Prelude.Nothing, targetLkfs = Prelude.Nothing}
instance ToResourceProperties AudioNormalizationSettingsProperty where
  toResourceProperties AudioNormalizationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioNormalizationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                            (JSON..=) "AlgorithmControl" Prelude.<$> algorithmControl,
                            (JSON..=) "TargetLkfs" Prelude.<$> targetLkfs])}
instance JSON.ToJSON AudioNormalizationSettingsProperty where
  toJSON AudioNormalizationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Algorithm" Prelude.<$> algorithm,
               (JSON..=) "AlgorithmControl" Prelude.<$> algorithmControl,
               (JSON..=) "TargetLkfs" Prelude.<$> targetLkfs]))
instance Property "Algorithm" AudioNormalizationSettingsProperty where
  type PropertyType "Algorithm" AudioNormalizationSettingsProperty = Value Prelude.Text
  set newValue AudioNormalizationSettingsProperty {..}
    = AudioNormalizationSettingsProperty
        {algorithm = Prelude.pure newValue, ..}
instance Property "AlgorithmControl" AudioNormalizationSettingsProperty where
  type PropertyType "AlgorithmControl" AudioNormalizationSettingsProperty = Value Prelude.Text
  set newValue AudioNormalizationSettingsProperty {..}
    = AudioNormalizationSettingsProperty
        {algorithmControl = Prelude.pure newValue, ..}
instance Property "TargetLkfs" AudioNormalizationSettingsProperty where
  type PropertyType "TargetLkfs" AudioNormalizationSettingsProperty = Value Prelude.Double
  set newValue AudioNormalizationSettingsProperty {..}
    = AudioNormalizationSettingsProperty
        {targetLkfs = Prelude.pure newValue, ..}