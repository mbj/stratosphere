module Stratosphere.MediaLive.Channel.FrameCaptureOutputSettingsProperty (
        FrameCaptureOutputSettingsProperty(..),
        mkFrameCaptureOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameCaptureOutputSettingsProperty
  = FrameCaptureOutputSettingsProperty {nameModifier :: (Prelude.Maybe (Value Prelude.Text))}
mkFrameCaptureOutputSettingsProperty ::
  FrameCaptureOutputSettingsProperty
mkFrameCaptureOutputSettingsProperty
  = FrameCaptureOutputSettingsProperty
      {nameModifier = Prelude.Nothing}
instance ToResourceProperties FrameCaptureOutputSettingsProperty where
  toResourceProperties FrameCaptureOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureOutputSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NameModifier" Prelude.<$> nameModifier])}
instance JSON.ToJSON FrameCaptureOutputSettingsProperty where
  toJSON FrameCaptureOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NameModifier" Prelude.<$> nameModifier]))
instance Property "NameModifier" FrameCaptureOutputSettingsProperty where
  type PropertyType "NameModifier" FrameCaptureOutputSettingsProperty = Value Prelude.Text
  set newValue FrameCaptureOutputSettingsProperty {}
    = FrameCaptureOutputSettingsProperty
        {nameModifier = Prelude.pure newValue, ..}