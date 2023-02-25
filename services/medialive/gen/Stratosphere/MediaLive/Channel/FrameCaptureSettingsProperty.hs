module Stratosphere.MediaLive.Channel.FrameCaptureSettingsProperty (
        FrameCaptureSettingsProperty(..), mkFrameCaptureSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameCaptureSettingsProperty
  = FrameCaptureSettingsProperty {captureInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  captureIntervalUnits :: (Prelude.Maybe (Value Prelude.Text))}
mkFrameCaptureSettingsProperty :: FrameCaptureSettingsProperty
mkFrameCaptureSettingsProperty
  = FrameCaptureSettingsProperty
      {captureInterval = Prelude.Nothing,
       captureIntervalUnits = Prelude.Nothing}
instance ToResourceProperties FrameCaptureSettingsProperty where
  toResourceProperties FrameCaptureSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaptureInterval" Prelude.<$> captureInterval,
                            (JSON..=) "CaptureIntervalUnits"
                              Prelude.<$> captureIntervalUnits])}
instance JSON.ToJSON FrameCaptureSettingsProperty where
  toJSON FrameCaptureSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaptureInterval" Prelude.<$> captureInterval,
               (JSON..=) "CaptureIntervalUnits"
                 Prelude.<$> captureIntervalUnits]))
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