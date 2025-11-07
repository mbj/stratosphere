module Stratosphere.Bedrock.DataAutomationProject.DocumentOutputTextFormatProperty (
        DocumentOutputTextFormatProperty(..),
        mkDocumentOutputTextFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentOutputTextFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputtextformat.html>
    DocumentOutputTextFormatProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputtextformat.html#cfn-bedrock-dataautomationproject-documentoutputtextformat-types>
                                      types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentOutputTextFormatProperty ::
  DocumentOutputTextFormatProperty
mkDocumentOutputTextFormatProperty
  = DocumentOutputTextFormatProperty
      {haddock_workaround_ = (), types = Prelude.Nothing}
instance ToResourceProperties DocumentOutputTextFormatProperty where
  toResourceProperties DocumentOutputTextFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentOutputTextFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])}
instance JSON.ToJSON DocumentOutputTextFormatProperty where
  toJSON DocumentOutputTextFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))
instance Property "Types" DocumentOutputTextFormatProperty where
  type PropertyType "Types" DocumentOutputTextFormatProperty = ValueList Prelude.Text
  set newValue DocumentOutputTextFormatProperty {..}
    = DocumentOutputTextFormatProperty
        {types = Prelude.pure newValue, ..}