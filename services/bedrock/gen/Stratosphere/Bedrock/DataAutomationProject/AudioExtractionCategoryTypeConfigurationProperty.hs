module Stratosphere.Bedrock.DataAutomationProject.AudioExtractionCategoryTypeConfigurationProperty (
        module Exports,
        AudioExtractionCategoryTypeConfigurationProperty(..),
        mkAudioExtractionCategoryTypeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.TranscriptConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AudioExtractionCategoryTypeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategorytypeconfiguration.html>
    AudioExtractionCategoryTypeConfigurationProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategorytypeconfiguration.html#cfn-bedrock-dataautomationproject-audioextractioncategorytypeconfiguration-transcript>
                                                      transcript :: (Prelude.Maybe TranscriptConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioExtractionCategoryTypeConfigurationProperty ::
  AudioExtractionCategoryTypeConfigurationProperty
mkAudioExtractionCategoryTypeConfigurationProperty
  = AudioExtractionCategoryTypeConfigurationProperty
      {haddock_workaround_ = (), transcript = Prelude.Nothing}
instance ToResourceProperties AudioExtractionCategoryTypeConfigurationProperty where
  toResourceProperties
    AudioExtractionCategoryTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.AudioExtractionCategoryTypeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Transcript" Prelude.<$> transcript])}
instance JSON.ToJSON AudioExtractionCategoryTypeConfigurationProperty where
  toJSON AudioExtractionCategoryTypeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Transcript" Prelude.<$> transcript]))
instance Property "Transcript" AudioExtractionCategoryTypeConfigurationProperty where
  type PropertyType "Transcript" AudioExtractionCategoryTypeConfigurationProperty = TranscriptConfigurationProperty
  set newValue AudioExtractionCategoryTypeConfigurationProperty {..}
    = AudioExtractionCategoryTypeConfigurationProperty
        {transcript = Prelude.pure newValue, ..}