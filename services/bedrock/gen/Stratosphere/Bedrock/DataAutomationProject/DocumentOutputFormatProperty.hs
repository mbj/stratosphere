module Stratosphere.Bedrock.DataAutomationProject.DocumentOutputFormatProperty (
        module Exports, DocumentOutputFormatProperty(..),
        mkDocumentOutputFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentOutputAdditionalFileFormatProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentOutputTextFormatProperty as Exports
import Stratosphere.ResourceProperties
data DocumentOutputFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputformat.html>
    DocumentOutputFormatProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputformat.html#cfn-bedrock-dataautomationproject-documentoutputformat-additionalfileformat>
                                  additionalFileFormat :: DocumentOutputAdditionalFileFormatProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputformat.html#cfn-bedrock-dataautomationproject-documentoutputformat-textformat>
                                  textFormat :: DocumentOutputTextFormatProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentOutputFormatProperty ::
  DocumentOutputAdditionalFileFormatProperty
  -> DocumentOutputTextFormatProperty -> DocumentOutputFormatProperty
mkDocumentOutputFormatProperty additionalFileFormat textFormat
  = DocumentOutputFormatProperty
      {haddock_workaround_ = (),
       additionalFileFormat = additionalFileFormat,
       textFormat = textFormat}
instance ToResourceProperties DocumentOutputFormatProperty where
  toResourceProperties DocumentOutputFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentOutputFormat",
         supportsTags = Prelude.False,
         properties = ["AdditionalFileFormat" JSON..= additionalFileFormat,
                       "TextFormat" JSON..= textFormat]}
instance JSON.ToJSON DocumentOutputFormatProperty where
  toJSON DocumentOutputFormatProperty {..}
    = JSON.object
        ["AdditionalFileFormat" JSON..= additionalFileFormat,
         "TextFormat" JSON..= textFormat]
instance Property "AdditionalFileFormat" DocumentOutputFormatProperty where
  type PropertyType "AdditionalFileFormat" DocumentOutputFormatProperty = DocumentOutputAdditionalFileFormatProperty
  set newValue DocumentOutputFormatProperty {..}
    = DocumentOutputFormatProperty
        {additionalFileFormat = newValue, ..}
instance Property "TextFormat" DocumentOutputFormatProperty where
  type PropertyType "TextFormat" DocumentOutputFormatProperty = DocumentOutputTextFormatProperty
  set newValue DocumentOutputFormatProperty {..}
    = DocumentOutputFormatProperty {textFormat = newValue, ..}