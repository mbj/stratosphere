module Stratosphere.Bedrock.DataAutomationProject.TranscriptConfigurationProperty (
        module Exports, TranscriptConfigurationProperty(..),
        mkTranscriptConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ChannelLabelingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.SpeakerLabelingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TranscriptConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-transcriptconfiguration.html>
    TranscriptConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-transcriptconfiguration.html#cfn-bedrock-dataautomationproject-transcriptconfiguration-channellabeling>
                                     channelLabeling :: (Prelude.Maybe ChannelLabelingConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-transcriptconfiguration.html#cfn-bedrock-dataautomationproject-transcriptconfiguration-speakerlabeling>
                                     speakerLabeling :: (Prelude.Maybe SpeakerLabelingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTranscriptConfigurationProperty ::
  TranscriptConfigurationProperty
mkTranscriptConfigurationProperty
  = TranscriptConfigurationProperty
      {haddock_workaround_ = (), channelLabeling = Prelude.Nothing,
       speakerLabeling = Prelude.Nothing}
instance ToResourceProperties TranscriptConfigurationProperty where
  toResourceProperties TranscriptConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.TranscriptConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelLabeling" Prelude.<$> channelLabeling,
                            (JSON..=) "SpeakerLabeling" Prelude.<$> speakerLabeling])}
instance JSON.ToJSON TranscriptConfigurationProperty where
  toJSON TranscriptConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelLabeling" Prelude.<$> channelLabeling,
               (JSON..=) "SpeakerLabeling" Prelude.<$> speakerLabeling]))
instance Property "ChannelLabeling" TranscriptConfigurationProperty where
  type PropertyType "ChannelLabeling" TranscriptConfigurationProperty = ChannelLabelingConfigurationProperty
  set newValue TranscriptConfigurationProperty {..}
    = TranscriptConfigurationProperty
        {channelLabeling = Prelude.pure newValue, ..}
instance Property "SpeakerLabeling" TranscriptConfigurationProperty where
  type PropertyType "SpeakerLabeling" TranscriptConfigurationProperty = SpeakerLabelingConfigurationProperty
  set newValue TranscriptConfigurationProperty {..}
    = TranscriptConfigurationProperty
        {speakerLabeling = Prelude.pure newValue, ..}