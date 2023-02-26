module Stratosphere.MediaLive.Channel.OutputProperty (
        module Exports, OutputProperty(..), mkOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputProperty
  = OutputProperty {audioDescriptionNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                    captionDescriptionNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                    outputName :: (Prelude.Maybe (Value Prelude.Text)),
                    outputSettings :: (Prelude.Maybe OutputSettingsProperty),
                    videoDescriptionName :: (Prelude.Maybe (Value Prelude.Text))}
mkOutputProperty :: OutputProperty
mkOutputProperty
  = OutputProperty
      {audioDescriptionNames = Prelude.Nothing,
       captionDescriptionNames = Prelude.Nothing,
       outputName = Prelude.Nothing, outputSettings = Prelude.Nothing,
       videoDescriptionName = Prelude.Nothing}
instance ToResourceProperties OutputProperty where
  toResourceProperties OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Output",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioDescriptionNames"
                              Prelude.<$> audioDescriptionNames,
                            (JSON..=) "CaptionDescriptionNames"
                              Prelude.<$> captionDescriptionNames,
                            (JSON..=) "OutputName" Prelude.<$> outputName,
                            (JSON..=) "OutputSettings" Prelude.<$> outputSettings,
                            (JSON..=) "VideoDescriptionName"
                              Prelude.<$> videoDescriptionName])}
instance JSON.ToJSON OutputProperty where
  toJSON OutputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioDescriptionNames"
                 Prelude.<$> audioDescriptionNames,
               (JSON..=) "CaptionDescriptionNames"
                 Prelude.<$> captionDescriptionNames,
               (JSON..=) "OutputName" Prelude.<$> outputName,
               (JSON..=) "OutputSettings" Prelude.<$> outputSettings,
               (JSON..=) "VideoDescriptionName"
                 Prelude.<$> videoDescriptionName]))
instance Property "AudioDescriptionNames" OutputProperty where
  type PropertyType "AudioDescriptionNames" OutputProperty = ValueList Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty
        {audioDescriptionNames = Prelude.pure newValue, ..}
instance Property "CaptionDescriptionNames" OutputProperty where
  type PropertyType "CaptionDescriptionNames" OutputProperty = ValueList Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty
        {captionDescriptionNames = Prelude.pure newValue, ..}
instance Property "OutputName" OutputProperty where
  type PropertyType "OutputName" OutputProperty = Value Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty {outputName = Prelude.pure newValue, ..}
instance Property "OutputSettings" OutputProperty where
  type PropertyType "OutputSettings" OutputProperty = OutputSettingsProperty
  set newValue OutputProperty {..}
    = OutputProperty {outputSettings = Prelude.pure newValue, ..}
instance Property "VideoDescriptionName" OutputProperty where
  type PropertyType "VideoDescriptionName" OutputProperty = Value Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty {videoDescriptionName = Prelude.pure newValue, ..}