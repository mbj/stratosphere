module Stratosphere.Bedrock.DataAutomationProject.AudioStandardOutputConfigurationProperty (
        module Exports, AudioStandardOutputConfigurationProperty(..),
        mkAudioStandardOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.AudioStandardExtractionProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.AudioStandardGenerativeFieldProperty as Exports
import Stratosphere.ResourceProperties
data AudioStandardOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardoutputconfiguration.html>
    AudioStandardOutputConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-audiostandardoutputconfiguration-extraction>
                                              extraction :: (Prelude.Maybe AudioStandardExtractionProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-audiostandardoutputconfiguration-generativefield>
                                              generativeField :: (Prelude.Maybe AudioStandardGenerativeFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioStandardOutputConfigurationProperty ::
  AudioStandardOutputConfigurationProperty
mkAudioStandardOutputConfigurationProperty
  = AudioStandardOutputConfigurationProperty
      {haddock_workaround_ = (), extraction = Prelude.Nothing,
       generativeField = Prelude.Nothing}
instance ToResourceProperties AudioStandardOutputConfigurationProperty where
  toResourceProperties AudioStandardOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.AudioStandardOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Extraction" Prelude.<$> extraction,
                            (JSON..=) "GenerativeField" Prelude.<$> generativeField])}
instance JSON.ToJSON AudioStandardOutputConfigurationProperty where
  toJSON AudioStandardOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Extraction" Prelude.<$> extraction,
               (JSON..=) "GenerativeField" Prelude.<$> generativeField]))
instance Property "Extraction" AudioStandardOutputConfigurationProperty where
  type PropertyType "Extraction" AudioStandardOutputConfigurationProperty = AudioStandardExtractionProperty
  set newValue AudioStandardOutputConfigurationProperty {..}
    = AudioStandardOutputConfigurationProperty
        {extraction = Prelude.pure newValue, ..}
instance Property "GenerativeField" AudioStandardOutputConfigurationProperty where
  type PropertyType "GenerativeField" AudioStandardOutputConfigurationProperty = AudioStandardGenerativeFieldProperty
  set newValue AudioStandardOutputConfigurationProperty {..}
    = AudioStandardOutputConfigurationProperty
        {generativeField = Prelude.pure newValue, ..}