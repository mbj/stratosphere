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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html>
    OutputProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-audiodescriptionnames>
                    audioDescriptionNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-captiondescriptionnames>
                    captionDescriptionNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-outputname>
                    outputName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-outputsettings>
                    outputSettings :: (Prelude.Maybe OutputSettingsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-videodescriptionname>
                    videoDescriptionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputProperty :: OutputProperty
mkOutputProperty
  = OutputProperty
      {haddock_workaround_ = (), audioDescriptionNames = Prelude.Nothing,
       captionDescriptionNames = Prelude.Nothing,
       outputName = Prelude.Nothing, outputSettings = Prelude.Nothing,
       videoDescriptionName = Prelude.Nothing}
instance ToResourceProperties OutputProperty where
  toResourceProperties OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Output",
         supportsTags = Prelude.False,
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