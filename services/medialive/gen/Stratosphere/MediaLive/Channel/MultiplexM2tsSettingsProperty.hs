module Stratosphere.MediaLive.Channel.MultiplexM2tsSettingsProperty (
        MultiplexM2tsSettingsProperty(..), mkMultiplexM2tsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexM2tsSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html>
    MultiplexM2tsSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-absentinputaudiobehavior>
                                   absentInputAudioBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-arib>
                                   arib :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-audiobuffermodel>
                                   audioBufferModel :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-audioframesperpes>
                                   audioFramesPerPes :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-audiostreamtype>
                                   audioStreamType :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-ccdescriptor>
                                   ccDescriptor :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-ebif>
                                   ebif :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-esrateinpes>
                                   esRateInPes :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-klv>
                                   klv :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-nielsenid3behavior>
                                   nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-pcrcontrol>
                                   pcrControl :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-pcrperiod>
                                   pcrPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-scte35control>
                                   scte35Control :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexm2tssettings.html#cfn-medialive-channel-multiplexm2tssettings-scte35prerollpullupmilliseconds>
                                   scte35PrerollPullupMilliseconds :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexM2tsSettingsProperty :: MultiplexM2tsSettingsProperty
mkMultiplexM2tsSettingsProperty
  = MultiplexM2tsSettingsProperty
      {haddock_workaround_ = (),
       absentInputAudioBehavior = Prelude.Nothing, arib = Prelude.Nothing,
       audioBufferModel = Prelude.Nothing,
       audioFramesPerPes = Prelude.Nothing,
       audioStreamType = Prelude.Nothing, ccDescriptor = Prelude.Nothing,
       ebif = Prelude.Nothing, esRateInPes = Prelude.Nothing,
       klv = Prelude.Nothing, nielsenId3Behavior = Prelude.Nothing,
       pcrControl = Prelude.Nothing, pcrPeriod = Prelude.Nothing,
       scte35Control = Prelude.Nothing,
       scte35PrerollPullupMilliseconds = Prelude.Nothing}
instance ToResourceProperties MultiplexM2tsSettingsProperty where
  toResourceProperties MultiplexM2tsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexM2tsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AbsentInputAudioBehavior"
                              Prelude.<$> absentInputAudioBehavior,
                            (JSON..=) "Arib" Prelude.<$> arib,
                            (JSON..=) "AudioBufferModel" Prelude.<$> audioBufferModel,
                            (JSON..=) "AudioFramesPerPes" Prelude.<$> audioFramesPerPes,
                            (JSON..=) "AudioStreamType" Prelude.<$> audioStreamType,
                            (JSON..=) "CcDescriptor" Prelude.<$> ccDescriptor,
                            (JSON..=) "Ebif" Prelude.<$> ebif,
                            (JSON..=) "EsRateInPes" Prelude.<$> esRateInPes,
                            (JSON..=) "Klv" Prelude.<$> klv,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "PcrControl" Prelude.<$> pcrControl,
                            (JSON..=) "PcrPeriod" Prelude.<$> pcrPeriod,
                            (JSON..=) "Scte35Control" Prelude.<$> scte35Control,
                            (JSON..=) "Scte35PrerollPullupMilliseconds"
                              Prelude.<$> scte35PrerollPullupMilliseconds])}
instance JSON.ToJSON MultiplexM2tsSettingsProperty where
  toJSON MultiplexM2tsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AbsentInputAudioBehavior"
                 Prelude.<$> absentInputAudioBehavior,
               (JSON..=) "Arib" Prelude.<$> arib,
               (JSON..=) "AudioBufferModel" Prelude.<$> audioBufferModel,
               (JSON..=) "AudioFramesPerPes" Prelude.<$> audioFramesPerPes,
               (JSON..=) "AudioStreamType" Prelude.<$> audioStreamType,
               (JSON..=) "CcDescriptor" Prelude.<$> ccDescriptor,
               (JSON..=) "Ebif" Prelude.<$> ebif,
               (JSON..=) "EsRateInPes" Prelude.<$> esRateInPes,
               (JSON..=) "Klv" Prelude.<$> klv,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "PcrControl" Prelude.<$> pcrControl,
               (JSON..=) "PcrPeriod" Prelude.<$> pcrPeriod,
               (JSON..=) "Scte35Control" Prelude.<$> scte35Control,
               (JSON..=) "Scte35PrerollPullupMilliseconds"
                 Prelude.<$> scte35PrerollPullupMilliseconds]))
instance Property "AbsentInputAudioBehavior" MultiplexM2tsSettingsProperty where
  type PropertyType "AbsentInputAudioBehavior" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {absentInputAudioBehavior = Prelude.pure newValue, ..}
instance Property "Arib" MultiplexM2tsSettingsProperty where
  type PropertyType "Arib" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty {arib = Prelude.pure newValue, ..}
instance Property "AudioBufferModel" MultiplexM2tsSettingsProperty where
  type PropertyType "AudioBufferModel" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {audioBufferModel = Prelude.pure newValue, ..}
instance Property "AudioFramesPerPes" MultiplexM2tsSettingsProperty where
  type PropertyType "AudioFramesPerPes" MultiplexM2tsSettingsProperty = Value Prelude.Integer
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {audioFramesPerPes = Prelude.pure newValue, ..}
instance Property "AudioStreamType" MultiplexM2tsSettingsProperty where
  type PropertyType "AudioStreamType" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {audioStreamType = Prelude.pure newValue, ..}
instance Property "CcDescriptor" MultiplexM2tsSettingsProperty where
  type PropertyType "CcDescriptor" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {ccDescriptor = Prelude.pure newValue, ..}
instance Property "Ebif" MultiplexM2tsSettingsProperty where
  type PropertyType "Ebif" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty {ebif = Prelude.pure newValue, ..}
instance Property "EsRateInPes" MultiplexM2tsSettingsProperty where
  type PropertyType "EsRateInPes" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {esRateInPes = Prelude.pure newValue, ..}
instance Property "Klv" MultiplexM2tsSettingsProperty where
  type PropertyType "Klv" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty {klv = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" MultiplexM2tsSettingsProperty where
  type PropertyType "NielsenId3Behavior" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
instance Property "PcrControl" MultiplexM2tsSettingsProperty where
  type PropertyType "PcrControl" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {pcrControl = Prelude.pure newValue, ..}
instance Property "PcrPeriod" MultiplexM2tsSettingsProperty where
  type PropertyType "PcrPeriod" MultiplexM2tsSettingsProperty = Value Prelude.Integer
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {pcrPeriod = Prelude.pure newValue, ..}
instance Property "Scte35Control" MultiplexM2tsSettingsProperty where
  type PropertyType "Scte35Control" MultiplexM2tsSettingsProperty = Value Prelude.Text
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {scte35Control = Prelude.pure newValue, ..}
instance Property "Scte35PrerollPullupMilliseconds" MultiplexM2tsSettingsProperty where
  type PropertyType "Scte35PrerollPullupMilliseconds" MultiplexM2tsSettingsProperty = Value Prelude.Double
  set newValue MultiplexM2tsSettingsProperty {..}
    = MultiplexM2tsSettingsProperty
        {scte35PrerollPullupMilliseconds = Prelude.pure newValue, ..}