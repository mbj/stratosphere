module Stratosphere.MediaLive.Channel.FrameCaptureHlsSettingsProperty (
        FrameCaptureHlsSettingsProperty(..),
        mkFrameCaptureHlsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data FrameCaptureHlsSettingsProperty
  = FrameCaptureHlsSettingsProperty {}
mkFrameCaptureHlsSettingsProperty ::
  FrameCaptureHlsSettingsProperty
mkFrameCaptureHlsSettingsProperty
  = FrameCaptureHlsSettingsProperty {}
instance ToResourceProperties FrameCaptureHlsSettingsProperty where
  toResourceProperties FrameCaptureHlsSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureHlsSettings",
         properties = []}
instance JSON.ToJSON FrameCaptureHlsSettingsProperty where
  toJSON FrameCaptureHlsSettingsProperty {} = JSON.object []