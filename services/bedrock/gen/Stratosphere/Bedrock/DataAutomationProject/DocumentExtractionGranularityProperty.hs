module Stratosphere.Bedrock.DataAutomationProject.DocumentExtractionGranularityProperty (
        DocumentExtractionGranularityProperty(..),
        mkDocumentExtractionGranularityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentExtractionGranularityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentextractiongranularity.html>
    DocumentExtractionGranularityProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentextractiongranularity.html#cfn-bedrock-dataautomationproject-documentextractiongranularity-types>
                                           types :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentExtractionGranularityProperty ::
  DocumentExtractionGranularityProperty
mkDocumentExtractionGranularityProperty
  = DocumentExtractionGranularityProperty
      {haddock_workaround_ = (), types = Prelude.Nothing}
instance ToResourceProperties DocumentExtractionGranularityProperty where
  toResourceProperties DocumentExtractionGranularityProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentExtractionGranularity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types])}
instance JSON.ToJSON DocumentExtractionGranularityProperty where
  toJSON DocumentExtractionGranularityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Types" Prelude.<$> types]))
instance Property "Types" DocumentExtractionGranularityProperty where
  type PropertyType "Types" DocumentExtractionGranularityProperty = ValueList Prelude.Text
  set newValue DocumentExtractionGranularityProperty {..}
    = DocumentExtractionGranularityProperty
        {types = Prelude.pure newValue, ..}