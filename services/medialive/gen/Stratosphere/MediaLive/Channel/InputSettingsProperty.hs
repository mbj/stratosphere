module Stratosphere.MediaLive.Channel.InputSettingsProperty (
        module Exports, InputSettingsProperty(..), mkInputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.NetworkInputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoSelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSettingsProperty
  = InputSettingsProperty {audioSelectors :: (Prelude.Maybe [AudioSelectorProperty]),
                           captionSelectors :: (Prelude.Maybe [CaptionSelectorProperty]),
                           deblockFilter :: (Prelude.Maybe (Value Prelude.Text)),
                           denoiseFilter :: (Prelude.Maybe (Value Prelude.Text)),
                           filterStrength :: (Prelude.Maybe (Value Prelude.Integer)),
                           inputFilter :: (Prelude.Maybe (Value Prelude.Text)),
                           networkInputSettings :: (Prelude.Maybe NetworkInputSettingsProperty),
                           scte35Pid :: (Prelude.Maybe (Value Prelude.Integer)),
                           smpte2038DataPreference :: (Prelude.Maybe (Value Prelude.Text)),
                           sourceEndBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                           videoSelector :: (Prelude.Maybe VideoSelectorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSettingsProperty :: InputSettingsProperty
mkInputSettingsProperty
  = InputSettingsProperty
      {audioSelectors = Prelude.Nothing,
       captionSelectors = Prelude.Nothing,
       deblockFilter = Prelude.Nothing, denoiseFilter = Prelude.Nothing,
       filterStrength = Prelude.Nothing, inputFilter = Prelude.Nothing,
       networkInputSettings = Prelude.Nothing,
       scte35Pid = Prelude.Nothing,
       smpte2038DataPreference = Prelude.Nothing,
       sourceEndBehavior = Prelude.Nothing,
       videoSelector = Prelude.Nothing}
instance ToResourceProperties InputSettingsProperty where
  toResourceProperties InputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioSelectors" Prelude.<$> audioSelectors,
                            (JSON..=) "CaptionSelectors" Prelude.<$> captionSelectors,
                            (JSON..=) "DeblockFilter" Prelude.<$> deblockFilter,
                            (JSON..=) "DenoiseFilter" Prelude.<$> denoiseFilter,
                            (JSON..=) "FilterStrength" Prelude.<$> filterStrength,
                            (JSON..=) "InputFilter" Prelude.<$> inputFilter,
                            (JSON..=) "NetworkInputSettings" Prelude.<$> networkInputSettings,
                            (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
                            (JSON..=) "Smpte2038DataPreference"
                              Prelude.<$> smpte2038DataPreference,
                            (JSON..=) "SourceEndBehavior" Prelude.<$> sourceEndBehavior,
                            (JSON..=) "VideoSelector" Prelude.<$> videoSelector])}
instance JSON.ToJSON InputSettingsProperty where
  toJSON InputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioSelectors" Prelude.<$> audioSelectors,
               (JSON..=) "CaptionSelectors" Prelude.<$> captionSelectors,
               (JSON..=) "DeblockFilter" Prelude.<$> deblockFilter,
               (JSON..=) "DenoiseFilter" Prelude.<$> denoiseFilter,
               (JSON..=) "FilterStrength" Prelude.<$> filterStrength,
               (JSON..=) "InputFilter" Prelude.<$> inputFilter,
               (JSON..=) "NetworkInputSettings" Prelude.<$> networkInputSettings,
               (JSON..=) "Scte35Pid" Prelude.<$> scte35Pid,
               (JSON..=) "Smpte2038DataPreference"
                 Prelude.<$> smpte2038DataPreference,
               (JSON..=) "SourceEndBehavior" Prelude.<$> sourceEndBehavior,
               (JSON..=) "VideoSelector" Prelude.<$> videoSelector]))
instance Property "AudioSelectors" InputSettingsProperty where
  type PropertyType "AudioSelectors" InputSettingsProperty = [AudioSelectorProperty]
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty
        {audioSelectors = Prelude.pure newValue, ..}
instance Property "CaptionSelectors" InputSettingsProperty where
  type PropertyType "CaptionSelectors" InputSettingsProperty = [CaptionSelectorProperty]
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty
        {captionSelectors = Prelude.pure newValue, ..}
instance Property "DeblockFilter" InputSettingsProperty where
  type PropertyType "DeblockFilter" InputSettingsProperty = Value Prelude.Text
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty {deblockFilter = Prelude.pure newValue, ..}
instance Property "DenoiseFilter" InputSettingsProperty where
  type PropertyType "DenoiseFilter" InputSettingsProperty = Value Prelude.Text
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty {denoiseFilter = Prelude.pure newValue, ..}
instance Property "FilterStrength" InputSettingsProperty where
  type PropertyType "FilterStrength" InputSettingsProperty = Value Prelude.Integer
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty
        {filterStrength = Prelude.pure newValue, ..}
instance Property "InputFilter" InputSettingsProperty where
  type PropertyType "InputFilter" InputSettingsProperty = Value Prelude.Text
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty {inputFilter = Prelude.pure newValue, ..}
instance Property "NetworkInputSettings" InputSettingsProperty where
  type PropertyType "NetworkInputSettings" InputSettingsProperty = NetworkInputSettingsProperty
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty
        {networkInputSettings = Prelude.pure newValue, ..}
instance Property "Scte35Pid" InputSettingsProperty where
  type PropertyType "Scte35Pid" InputSettingsProperty = Value Prelude.Integer
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty {scte35Pid = Prelude.pure newValue, ..}
instance Property "Smpte2038DataPreference" InputSettingsProperty where
  type PropertyType "Smpte2038DataPreference" InputSettingsProperty = Value Prelude.Text
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty
        {smpte2038DataPreference = Prelude.pure newValue, ..}
instance Property "SourceEndBehavior" InputSettingsProperty where
  type PropertyType "SourceEndBehavior" InputSettingsProperty = Value Prelude.Text
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty
        {sourceEndBehavior = Prelude.pure newValue, ..}
instance Property "VideoSelector" InputSettingsProperty where
  type PropertyType "VideoSelector" InputSettingsProperty = VideoSelectorProperty
  set newValue InputSettingsProperty {..}
    = InputSettingsProperty {videoSelector = Prelude.pure newValue, ..}