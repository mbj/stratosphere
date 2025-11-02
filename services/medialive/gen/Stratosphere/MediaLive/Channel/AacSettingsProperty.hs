module Stratosphere.MediaLive.Channel.AacSettingsProperty (
        AacSettingsProperty(..), mkAacSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AacSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html>
    AacSettingsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-bitrate>
                         bitrate :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-codingmode>
                         codingMode :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-inputtype>
                         inputType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-profile>
                         profile :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-ratecontrolmode>
                         rateControlMode :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-rawformat>
                         rawFormat :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-samplerate>
                         sampleRate :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-spec>
                         spec :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-vbrquality>
                         vbrQuality :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAacSettingsProperty :: AacSettingsProperty
mkAacSettingsProperty
  = AacSettingsProperty
      {haddock_workaround_ = (), bitrate = Prelude.Nothing,
       codingMode = Prelude.Nothing, inputType = Prelude.Nothing,
       profile = Prelude.Nothing, rateControlMode = Prelude.Nothing,
       rawFormat = Prelude.Nothing, sampleRate = Prelude.Nothing,
       spec = Prelude.Nothing, vbrQuality = Prelude.Nothing}
instance ToResourceProperties AacSettingsProperty where
  toResourceProperties AacSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AacSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "CodingMode" Prelude.<$> codingMode,
                            (JSON..=) "InputType" Prelude.<$> inputType,
                            (JSON..=) "Profile" Prelude.<$> profile,
                            (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
                            (JSON..=) "RawFormat" Prelude.<$> rawFormat,
                            (JSON..=) "SampleRate" Prelude.<$> sampleRate,
                            (JSON..=) "Spec" Prelude.<$> spec,
                            (JSON..=) "VbrQuality" Prelude.<$> vbrQuality])}
instance JSON.ToJSON AacSettingsProperty where
  toJSON AacSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "CodingMode" Prelude.<$> codingMode,
               (JSON..=) "InputType" Prelude.<$> inputType,
               (JSON..=) "Profile" Prelude.<$> profile,
               (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
               (JSON..=) "RawFormat" Prelude.<$> rawFormat,
               (JSON..=) "SampleRate" Prelude.<$> sampleRate,
               (JSON..=) "Spec" Prelude.<$> spec,
               (JSON..=) "VbrQuality" Prelude.<$> vbrQuality]))
instance Property "Bitrate" AacSettingsProperty where
  type PropertyType "Bitrate" AacSettingsProperty = Value Prelude.Double
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "CodingMode" AacSettingsProperty where
  type PropertyType "CodingMode" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {codingMode = Prelude.pure newValue, ..}
instance Property "InputType" AacSettingsProperty where
  type PropertyType "InputType" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {inputType = Prelude.pure newValue, ..}
instance Property "Profile" AacSettingsProperty where
  type PropertyType "Profile" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {profile = Prelude.pure newValue, ..}
instance Property "RateControlMode" AacSettingsProperty where
  type PropertyType "RateControlMode" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {rateControlMode = Prelude.pure newValue, ..}
instance Property "RawFormat" AacSettingsProperty where
  type PropertyType "RawFormat" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {rawFormat = Prelude.pure newValue, ..}
instance Property "SampleRate" AacSettingsProperty where
  type PropertyType "SampleRate" AacSettingsProperty = Value Prelude.Double
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {sampleRate = Prelude.pure newValue, ..}
instance Property "Spec" AacSettingsProperty where
  type PropertyType "Spec" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {spec = Prelude.pure newValue, ..}
instance Property "VbrQuality" AacSettingsProperty where
  type PropertyType "VbrQuality" AacSettingsProperty = Value Prelude.Text
  set newValue AacSettingsProperty {..}
    = AacSettingsProperty {vbrQuality = Prelude.pure newValue, ..}