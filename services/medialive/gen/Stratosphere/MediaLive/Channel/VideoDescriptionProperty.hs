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
  = VideoDescriptionProperty {codecSettings :: (Prelude.Maybe VideoCodecSettingsProperty),
                              height :: (Prelude.Maybe (Value Prelude.Integer)),
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              respondToAfd :: (Prelude.Maybe (Value Prelude.Text)),
                              scalingBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                              sharpness :: (Prelude.Maybe (Value Prelude.Integer)),
                              width :: (Prelude.Maybe (Value Prelude.Integer))}
mkVideoDescriptionProperty :: VideoDescriptionProperty
mkVideoDescriptionProperty
  = VideoDescriptionProperty
      {codecSettings = Prelude.Nothing, height = Prelude.Nothing,
       name = Prelude.Nothing, respondToAfd = Prelude.Nothing,
       scalingBehavior = Prelude.Nothing, sharpness = Prelude.Nothing,
       width = Prelude.Nothing}
instance ToResourceProperties VideoDescriptionProperty where
  toResourceProperties VideoDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoDescription",
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