module Stratosphere.IoTThingsGraph.FlowTemplate.DefinitionDocumentProperty (
        DefinitionDocumentProperty(..), mkDefinitionDocumentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefinitionDocumentProperty
  = DefinitionDocumentProperty {language :: (Value Prelude.Text),
                                text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefinitionDocumentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DefinitionDocumentProperty
mkDefinitionDocumentProperty language text
  = DefinitionDocumentProperty {language = language, text = text}
instance ToResourceProperties DefinitionDocumentProperty where
  toResourceProperties DefinitionDocumentProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTThingsGraph::FlowTemplate.DefinitionDocument",
         supportsTags = Prelude.False,
         properties = ["Language" JSON..= language, "Text" JSON..= text]}
instance JSON.ToJSON DefinitionDocumentProperty where
  toJSON DefinitionDocumentProperty {..}
    = JSON.object ["Language" JSON..= language, "Text" JSON..= text]
instance Property "Language" DefinitionDocumentProperty where
  type PropertyType "Language" DefinitionDocumentProperty = Value Prelude.Text
  set newValue DefinitionDocumentProperty {..}
    = DefinitionDocumentProperty {language = newValue, ..}
instance Property "Text" DefinitionDocumentProperty where
  type PropertyType "Text" DefinitionDocumentProperty = Value Prelude.Text
  set newValue DefinitionDocumentProperty {..}
    = DefinitionDocumentProperty {text = newValue, ..}