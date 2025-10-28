module Stratosphere.MediaLive.Channel.WavSettingsProperty (
        WavSettingsProperty(..), mkWavSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WavSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-wavsettings.html>
    WavSettingsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-wavsettings.html#cfn-medialive-channel-wavsettings-bitdepth>
                         bitDepth :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-wavsettings.html#cfn-medialive-channel-wavsettings-codingmode>
                         codingMode :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-wavsettings.html#cfn-medialive-channel-wavsettings-samplerate>
                         sampleRate :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWavSettingsProperty :: WavSettingsProperty
mkWavSettingsProperty
  = WavSettingsProperty
      {haddock_workaround_ = (), bitDepth = Prelude.Nothing,
       codingMode = Prelude.Nothing, sampleRate = Prelude.Nothing}
instance ToResourceProperties WavSettingsProperty where
  toResourceProperties WavSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.WavSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BitDepth" Prelude.<$> bitDepth,
                            (JSON..=) "CodingMode" Prelude.<$> codingMode,
                            (JSON..=) "SampleRate" Prelude.<$> sampleRate])}
instance JSON.ToJSON WavSettingsProperty where
  toJSON WavSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BitDepth" Prelude.<$> bitDepth,
               (JSON..=) "CodingMode" Prelude.<$> codingMode,
               (JSON..=) "SampleRate" Prelude.<$> sampleRate]))
instance Property "BitDepth" WavSettingsProperty where
  type PropertyType "BitDepth" WavSettingsProperty = Value Prelude.Double
  set newValue WavSettingsProperty {..}
    = WavSettingsProperty {bitDepth = Prelude.pure newValue, ..}
instance Property "CodingMode" WavSettingsProperty where
  type PropertyType "CodingMode" WavSettingsProperty = Value Prelude.Text
  set newValue WavSettingsProperty {..}
    = WavSettingsProperty {codingMode = Prelude.pure newValue, ..}
instance Property "SampleRate" WavSettingsProperty where
  type PropertyType "SampleRate" WavSettingsProperty = Value Prelude.Double
  set newValue WavSettingsProperty {..}
    = WavSettingsProperty {sampleRate = Prelude.pure newValue, ..}