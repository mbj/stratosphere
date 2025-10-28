module Stratosphere.MediaLive.Channel.FrameCaptureHlsSettingsProperty (
        FrameCaptureHlsSettingsProperty(..),
        mkFrameCaptureHlsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FrameCaptureHlsSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturehlssettings.html>
    FrameCaptureHlsSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameCaptureHlsSettingsProperty ::
  FrameCaptureHlsSettingsProperty
mkFrameCaptureHlsSettingsProperty
  = FrameCaptureHlsSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties FrameCaptureHlsSettingsProperty where
  toResourceProperties FrameCaptureHlsSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureHlsSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON FrameCaptureHlsSettingsProperty where
  toJSON FrameCaptureHlsSettingsProperty {} = JSON.object []