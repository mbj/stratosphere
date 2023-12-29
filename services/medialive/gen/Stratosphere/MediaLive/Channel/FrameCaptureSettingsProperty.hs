module Stratosphere.MediaLive.Channel.FrameCaptureSettingsProperty (
        module Exports, FrameCaptureSettingsProperty(..),
        mkFrameCaptureSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TimecodeBurninSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameCaptureSettingsProperty
  = FrameCaptureSettingsProperty {captureInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  captureIntervalUnits :: (Prelude.Maybe (Value Prelude.Text)),
                                  timecodeBurninSettings :: (Prelude.Maybe TimecodeBurninSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameCaptureSettingsProperty :: FrameCaptureSettingsProperty
mkFrameCaptureSettingsProperty
  = FrameCaptureSettingsProperty
      {captureInterval = Prelude.Nothing,
       captureIntervalUnits = Prelude.Nothing,
       timecodeBurninSettings = Prelude.Nothing}
instance ToResourceProperties FrameCaptureSettingsProperty where
  toResourceProperties FrameCaptureSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaptureInterval" Prelude.<$> captureInterval,
                            (JSON..=) "CaptureIntervalUnits" Prelude.<$> captureIntervalUnits,
                            (JSON..=) "TimecodeBurninSettings"
                              Prelude.<$> timecodeBurninSettings])}
instance JSON.ToJSON FrameCaptureSettingsProperty where
  toJSON FrameCaptureSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaptureInterval" Prelude.<$> captureInterval,
               (JSON..=) "CaptureIntervalUnits" Prelude.<$> captureIntervalUnits,
               (JSON..=) "TimecodeBurninSettings"
                 Prelude.<$> timecodeBurninSettings]))
instance Property "CaptureInterval" FrameCaptureSettingsProperty where
  type PropertyType "CaptureInterval" FrameCaptureSettingsProperty = Value Prelude.Integer
  set newValue FrameCaptureSettingsProperty {..}
    = FrameCaptureSettingsProperty
        {captureInterval = Prelude.pure newValue, ..}
instance Property "CaptureIntervalUnits" FrameCaptureSettingsProperty where
  type PropertyType "CaptureIntervalUnits" FrameCaptureSettingsProperty = Value Prelude.Text
  set newValue FrameCaptureSettingsProperty {..}
    = FrameCaptureSettingsProperty
        {captureIntervalUnits = Prelude.pure newValue, ..}
instance Property "TimecodeBurninSettings" FrameCaptureSettingsProperty where
  type PropertyType "TimecodeBurninSettings" FrameCaptureSettingsProperty = TimecodeBurninSettingsProperty
  set newValue FrameCaptureSettingsProperty {..}
    = FrameCaptureSettingsProperty
        {timecodeBurninSettings = Prelude.pure newValue, ..}