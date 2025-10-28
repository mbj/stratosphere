module Stratosphere.MediaLive.Channel.GlobalConfigurationProperty (
        module Exports, GlobalConfigurationProperty(..),
        mkGlobalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLossBehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLockingSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html>
    GlobalConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-initialaudiogain>
                                 initialAudioGain :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-inputendaction>
                                 inputEndAction :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-inputlossbehavior>
                                 inputLossBehavior :: (Prelude.Maybe InputLossBehaviorProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-outputlockingmode>
                                 outputLockingMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-outputlockingsettings>
                                 outputLockingSettings :: (Prelude.Maybe OutputLockingSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-outputtimingsource>
                                 outputTimingSource :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-supportlowframerateinputs>
                                 supportLowFramerateInputs :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalConfigurationProperty :: GlobalConfigurationProperty
mkGlobalConfigurationProperty
  = GlobalConfigurationProperty
      {haddock_workaround_ = (), initialAudioGain = Prelude.Nothing,
       inputEndAction = Prelude.Nothing,
       inputLossBehavior = Prelude.Nothing,
       outputLockingMode = Prelude.Nothing,
       outputLockingSettings = Prelude.Nothing,
       outputTimingSource = Prelude.Nothing,
       supportLowFramerateInputs = Prelude.Nothing}
instance ToResourceProperties GlobalConfigurationProperty where
  toResourceProperties GlobalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.GlobalConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InitialAudioGain" Prelude.<$> initialAudioGain,
                            (JSON..=) "InputEndAction" Prelude.<$> inputEndAction,
                            (JSON..=) "InputLossBehavior" Prelude.<$> inputLossBehavior,
                            (JSON..=) "OutputLockingMode" Prelude.<$> outputLockingMode,
                            (JSON..=) "OutputLockingSettings"
                              Prelude.<$> outputLockingSettings,
                            (JSON..=) "OutputTimingSource" Prelude.<$> outputTimingSource,
                            (JSON..=) "SupportLowFramerateInputs"
                              Prelude.<$> supportLowFramerateInputs])}
instance JSON.ToJSON GlobalConfigurationProperty where
  toJSON GlobalConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InitialAudioGain" Prelude.<$> initialAudioGain,
               (JSON..=) "InputEndAction" Prelude.<$> inputEndAction,
               (JSON..=) "InputLossBehavior" Prelude.<$> inputLossBehavior,
               (JSON..=) "OutputLockingMode" Prelude.<$> outputLockingMode,
               (JSON..=) "OutputLockingSettings"
                 Prelude.<$> outputLockingSettings,
               (JSON..=) "OutputTimingSource" Prelude.<$> outputTimingSource,
               (JSON..=) "SupportLowFramerateInputs"
                 Prelude.<$> supportLowFramerateInputs]))
instance Property "InitialAudioGain" GlobalConfigurationProperty where
  type PropertyType "InitialAudioGain" GlobalConfigurationProperty = Value Prelude.Integer
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {initialAudioGain = Prelude.pure newValue, ..}
instance Property "InputEndAction" GlobalConfigurationProperty where
  type PropertyType "InputEndAction" GlobalConfigurationProperty = Value Prelude.Text
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {inputEndAction = Prelude.pure newValue, ..}
instance Property "InputLossBehavior" GlobalConfigurationProperty where
  type PropertyType "InputLossBehavior" GlobalConfigurationProperty = InputLossBehaviorProperty
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {inputLossBehavior = Prelude.pure newValue, ..}
instance Property "OutputLockingMode" GlobalConfigurationProperty where
  type PropertyType "OutputLockingMode" GlobalConfigurationProperty = Value Prelude.Text
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {outputLockingMode = Prelude.pure newValue, ..}
instance Property "OutputLockingSettings" GlobalConfigurationProperty where
  type PropertyType "OutputLockingSettings" GlobalConfigurationProperty = OutputLockingSettingsProperty
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {outputLockingSettings = Prelude.pure newValue, ..}
instance Property "OutputTimingSource" GlobalConfigurationProperty where
  type PropertyType "OutputTimingSource" GlobalConfigurationProperty = Value Prelude.Text
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {outputTimingSource = Prelude.pure newValue, ..}
instance Property "SupportLowFramerateInputs" GlobalConfigurationProperty where
  type PropertyType "SupportLowFramerateInputs" GlobalConfigurationProperty = Value Prelude.Text
  set newValue GlobalConfigurationProperty {..}
    = GlobalConfigurationProperty
        {supportLowFramerateInputs = Prelude.pure newValue, ..}