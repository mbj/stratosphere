module Stratosphere.MediaLive.Channel.VideoDescriptionProperty (
        module Exports, VideoDescriptionProperty(..),
        mkVideoDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoCodecSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoDescriptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html>
    VideoDescriptionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-codecsettings>
                              codecSettings :: (Prelude.Maybe VideoCodecSettingsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-height>
                              height :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-name>
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-respondtoafd>
                              respondToAfd :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-scalingbehavior>
                              scalingBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-sharpness>
                              sharpness :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videodescription.html#cfn-medialive-channel-videodescription-width>
                              width :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoDescriptionProperty :: VideoDescriptionProperty
mkVideoDescriptionProperty
  = VideoDescriptionProperty
      {haddock_workaround_ = (), codecSettings = Prelude.Nothing,
       height = Prelude.Nothing, name = Prelude.Nothing,
       respondToAfd = Prelude.Nothing, scalingBehavior = Prelude.Nothing,
       sharpness = Prelude.Nothing, width = Prelude.Nothing}
instance ToResourceProperties VideoDescriptionProperty where
  toResourceProperties VideoDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodecSettings" Prelude.<$> codecSettings,
                            (JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RespondToAfd" Prelude.<$> respondToAfd,
                            (JSON..=) "ScalingBehavior" Prelude.<$> scalingBehavior,
                            (JSON..=) "Sharpness" Prelude.<$> sharpness,
                            (JSON..=) "Width" Prelude.<$> width])}
instance JSON.ToJSON VideoDescriptionProperty where
  toJSON VideoDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodecSettings" Prelude.<$> codecSettings,
               (JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RespondToAfd" Prelude.<$> respondToAfd,
               (JSON..=) "ScalingBehavior" Prelude.<$> scalingBehavior,
               (JSON..=) "Sharpness" Prelude.<$> sharpness,
               (JSON..=) "Width" Prelude.<$> width]))
instance Property "CodecSettings" VideoDescriptionProperty where
  type PropertyType "CodecSettings" VideoDescriptionProperty = VideoCodecSettingsProperty
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty
        {codecSettings = Prelude.pure newValue, ..}
instance Property "Height" VideoDescriptionProperty where
  type PropertyType "Height" VideoDescriptionProperty = Value Prelude.Integer
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty {height = Prelude.pure newValue, ..}
instance Property "Name" VideoDescriptionProperty where
  type PropertyType "Name" VideoDescriptionProperty = Value Prelude.Text
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty {name = Prelude.pure newValue, ..}
instance Property "RespondToAfd" VideoDescriptionProperty where
  type PropertyType "RespondToAfd" VideoDescriptionProperty = Value Prelude.Text
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty
        {respondToAfd = Prelude.pure newValue, ..}
instance Property "ScalingBehavior" VideoDescriptionProperty where
  type PropertyType "ScalingBehavior" VideoDescriptionProperty = Value Prelude.Text
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty
        {scalingBehavior = Prelude.pure newValue, ..}
instance Property "Sharpness" VideoDescriptionProperty where
  type PropertyType "Sharpness" VideoDescriptionProperty = Value Prelude.Integer
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty {sharpness = Prelude.pure newValue, ..}
instance Property "Width" VideoDescriptionProperty where
  type PropertyType "Width" VideoDescriptionProperty = Value Prelude.Integer
  set newValue VideoDescriptionProperty {..}
    = VideoDescriptionProperty {width = Prelude.pure newValue, ..}