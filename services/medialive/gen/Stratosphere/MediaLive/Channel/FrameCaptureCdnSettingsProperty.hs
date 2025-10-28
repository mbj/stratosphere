module Stratosphere.MediaLive.Channel.FrameCaptureCdnSettingsProperty (
        module Exports, FrameCaptureCdnSettingsProperty(..),
        mkFrameCaptureCdnSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FrameCaptureS3SettingsProperty as Exports
import Stratosphere.ResourceProperties
data FrameCaptureCdnSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturecdnsettings.html>
    FrameCaptureCdnSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturecdnsettings.html#cfn-medialive-channel-framecapturecdnsettings-framecaptures3settings>
                                     frameCaptureS3Settings :: (Prelude.Maybe FrameCaptureS3SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameCaptureCdnSettingsProperty ::
  FrameCaptureCdnSettingsProperty
mkFrameCaptureCdnSettingsProperty
  = FrameCaptureCdnSettingsProperty
      {frameCaptureS3Settings = Prelude.Nothing}
instance ToResourceProperties FrameCaptureCdnSettingsProperty where
  toResourceProperties FrameCaptureCdnSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureCdnSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FrameCaptureS3Settings"
                              Prelude.<$> frameCaptureS3Settings])}
instance JSON.ToJSON FrameCaptureCdnSettingsProperty where
  toJSON FrameCaptureCdnSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FrameCaptureS3Settings"
                 Prelude.<$> frameCaptureS3Settings]))
instance Property "FrameCaptureS3Settings" FrameCaptureCdnSettingsProperty where
  type PropertyType "FrameCaptureS3Settings" FrameCaptureCdnSettingsProperty = FrameCaptureS3SettingsProperty
  set newValue FrameCaptureCdnSettingsProperty {}
    = FrameCaptureCdnSettingsProperty
        {frameCaptureS3Settings = Prelude.pure newValue, ..}