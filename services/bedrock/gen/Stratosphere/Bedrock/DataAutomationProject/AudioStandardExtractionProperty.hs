module Stratosphere.Bedrock.DataAutomationProject.AudioStandardExtractionProperty (
        module Exports, AudioStandardExtractionProperty(..),
        mkAudioStandardExtractionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.AudioExtractionCategoryProperty as Exports
import Stratosphere.ResourceProperties
data AudioStandardExtractionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardextraction.html>
    AudioStandardExtractionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardextraction.html#cfn-bedrock-dataautomationproject-audiostandardextraction-category>
                                     category :: AudioExtractionCategoryProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioStandardExtractionProperty ::
  AudioExtractionCategoryProperty -> AudioStandardExtractionProperty
mkAudioStandardExtractionProperty category
  = AudioStandardExtractionProperty
      {haddock_workaround_ = (), category = category}
instance ToResourceProperties AudioStandardExtractionProperty where
  toResourceProperties AudioStandardExtractionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.AudioStandardExtraction",
         supportsTags = Prelude.False,
         properties = ["Category" JSON..= category]}
instance JSON.ToJSON AudioStandardExtractionProperty where
  toJSON AudioStandardExtractionProperty {..}
    = JSON.object ["Category" JSON..= category]
instance Property "Category" AudioStandardExtractionProperty where
  type PropertyType "Category" AudioStandardExtractionProperty = AudioExtractionCategoryProperty
  set newValue AudioStandardExtractionProperty {..}
    = AudioStandardExtractionProperty {category = newValue, ..}