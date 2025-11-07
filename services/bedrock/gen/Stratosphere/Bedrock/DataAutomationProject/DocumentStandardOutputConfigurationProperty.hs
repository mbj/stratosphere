module Stratosphere.Bedrock.DataAutomationProject.DocumentStandardOutputConfigurationProperty (
        module Exports, DocumentStandardOutputConfigurationProperty(..),
        mkDocumentStandardOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentOutputFormatProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentStandardExtractionProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentStandardGenerativeFieldProperty as Exports
import Stratosphere.ResourceProperties
data DocumentStandardOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html>
    DocumentStandardOutputConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-documentstandardoutputconfiguration-extraction>
                                                 extraction :: (Prelude.Maybe DocumentStandardExtractionProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-documentstandardoutputconfiguration-generativefield>
                                                 generativeField :: (Prelude.Maybe DocumentStandardGenerativeFieldProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-documentstandardoutputconfiguration-outputformat>
                                                 outputFormat :: (Prelude.Maybe DocumentOutputFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentStandardOutputConfigurationProperty ::
  DocumentStandardOutputConfigurationProperty
mkDocumentStandardOutputConfigurationProperty
  = DocumentStandardOutputConfigurationProperty
      {haddock_workaround_ = (), extraction = Prelude.Nothing,
       generativeField = Prelude.Nothing, outputFormat = Prelude.Nothing}
instance ToResourceProperties DocumentStandardOutputConfigurationProperty where
  toResourceProperties
    DocumentStandardOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentStandardOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Extraction" Prelude.<$> extraction,
                            (JSON..=) "GenerativeField" Prelude.<$> generativeField,
                            (JSON..=) "OutputFormat" Prelude.<$> outputFormat])}
instance JSON.ToJSON DocumentStandardOutputConfigurationProperty where
  toJSON DocumentStandardOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Extraction" Prelude.<$> extraction,
               (JSON..=) "GenerativeField" Prelude.<$> generativeField,
               (JSON..=) "OutputFormat" Prelude.<$> outputFormat]))
instance Property "Extraction" DocumentStandardOutputConfigurationProperty where
  type PropertyType "Extraction" DocumentStandardOutputConfigurationProperty = DocumentStandardExtractionProperty
  set newValue DocumentStandardOutputConfigurationProperty {..}
    = DocumentStandardOutputConfigurationProperty
        {extraction = Prelude.pure newValue, ..}
instance Property "GenerativeField" DocumentStandardOutputConfigurationProperty where
  type PropertyType "GenerativeField" DocumentStandardOutputConfigurationProperty = DocumentStandardGenerativeFieldProperty
  set newValue DocumentStandardOutputConfigurationProperty {..}
    = DocumentStandardOutputConfigurationProperty
        {generativeField = Prelude.pure newValue, ..}
instance Property "OutputFormat" DocumentStandardOutputConfigurationProperty where
  type PropertyType "OutputFormat" DocumentStandardOutputConfigurationProperty = DocumentOutputFormatProperty
  set newValue DocumentStandardOutputConfigurationProperty {..}
    = DocumentStandardOutputConfigurationProperty
        {outputFormat = Prelude.pure newValue, ..}