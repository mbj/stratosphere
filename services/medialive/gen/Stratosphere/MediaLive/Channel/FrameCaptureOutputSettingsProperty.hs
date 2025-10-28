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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecaptureoutputsettings.html>
    FrameCaptureOutputSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecaptureoutputsettings.html#cfn-medialive-channel-framecaptureoutputsettings-namemodifier>
                                        nameModifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameCaptureOutputSettingsProperty ::
  FrameCaptureOutputSettingsProperty
mkFrameCaptureOutputSettingsProperty
  = FrameCaptureOutputSettingsProperty
      {haddock_workaround_ = (), nameModifier = Prelude.Nothing}
instance ToResourceProperties FrameCaptureOutputSettingsProperty where
  toResourceProperties FrameCaptureOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureOutputSettings",
         supportsTags = Prelude.False,
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
  set newValue FrameCaptureOutputSettingsProperty {..}
    = FrameCaptureOutputSettingsProperty
        {nameModifier = Prelude.pure newValue, ..}