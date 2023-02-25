module Stratosphere.MediaLive.Channel.GlobalConfigurationProperty (
        module Exports, GlobalConfigurationProperty(..),
        mkGlobalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLossBehaviorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalConfigurationProperty
  = GlobalConfigurationProperty {initialAudioGain :: (Prelude.Maybe (Value Prelude.Integer)),
                                 inputEndAction :: (Prelude.Maybe (Value Prelude.Text)),
                                 inputLossBehavior :: (Prelude.Maybe InputLossBehaviorProperty),
                                 outputLockingMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 outputTimingSource :: (Prelude.Maybe (Value Prelude.Text)),
                                 supportLowFramerateInputs :: (Prelude.Maybe (Value Prelude.Text))}
mkGlobalConfigurationProperty :: GlobalConfigurationProperty
mkGlobalConfigurationProperty
  = GlobalConfigurationProperty
      {initialAudioGain = Prelude.Nothing,
       inputEndAction = Prelude.Nothing,
       inputLossBehavior = Prelude.Nothing,
       outputLockingMode = Prelude.Nothing,
       outputTimingSource = Prelude.Nothing,
       supportLowFramerateInputs = Prelude.Nothing}
instance ToResourceProperties GlobalConfigurationProperty where
  toResourceProperties GlobalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.GlobalConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InitialAudioGain" Prelude.<$> initialAudioGain,
                            (JSON..=) "InputEndAction" Prelude.<$> inputEndAction,
                            (JSON..=) "InputLossBehavior" Prelude.<$> inputLossBehavior,
                            (JSON..=) "OutputLockingMode" Prelude.<$> outputLockingMode,
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