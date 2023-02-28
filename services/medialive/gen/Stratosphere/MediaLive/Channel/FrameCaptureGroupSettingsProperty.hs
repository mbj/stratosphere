module Stratosphere.MediaLive.Channel.FrameCaptureGroupSettingsProperty (
        module Exports, FrameCaptureGroupSettingsProperty(..),
        mkFrameCaptureGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FrameCaptureCdnSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
data FrameCaptureGroupSettingsProperty
  = FrameCaptureGroupSettingsProperty {destination :: (Prelude.Maybe OutputLocationRefProperty),
                                       frameCaptureCdnSettings :: (Prelude.Maybe FrameCaptureCdnSettingsProperty)}
mkFrameCaptureGroupSettingsProperty ::
  FrameCaptureGroupSettingsProperty
mkFrameCaptureGroupSettingsProperty
  = FrameCaptureGroupSettingsProperty
      {destination = Prelude.Nothing,
       frameCaptureCdnSettings = Prelude.Nothing}
instance ToResourceProperties FrameCaptureGroupSettingsProperty where
  toResourceProperties FrameCaptureGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "FrameCaptureCdnSettings"
                              Prelude.<$> frameCaptureCdnSettings])}
instance JSON.ToJSON FrameCaptureGroupSettingsProperty where
  toJSON FrameCaptureGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "FrameCaptureCdnSettings"
                 Prelude.<$> frameCaptureCdnSettings]))
instance Property "Destination" FrameCaptureGroupSettingsProperty where
  type PropertyType "Destination" FrameCaptureGroupSettingsProperty = OutputLocationRefProperty
  set newValue FrameCaptureGroupSettingsProperty {..}
    = FrameCaptureGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "FrameCaptureCdnSettings" FrameCaptureGroupSettingsProperty where
  type PropertyType "FrameCaptureCdnSettings" FrameCaptureGroupSettingsProperty = FrameCaptureCdnSettingsProperty
  set newValue FrameCaptureGroupSettingsProperty {..}
    = FrameCaptureGroupSettingsProperty
        {frameCaptureCdnSettings = Prelude.pure newValue, ..}