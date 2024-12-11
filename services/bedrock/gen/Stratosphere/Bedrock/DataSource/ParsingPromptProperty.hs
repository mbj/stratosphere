module Stratosphere.Bedrock.DataSource.ParsingPromptProperty (
        ParsingPromptProperty(..), mkParsingPromptProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParsingPromptProperty
  = ParsingPromptProperty {parsingPromptText :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParsingPromptProperty ::
  Value Prelude.Text -> ParsingPromptProperty
mkParsingPromptProperty parsingPromptText
  = ParsingPromptProperty {parsingPromptText = parsingPromptText}
instance ToResourceProperties ParsingPromptProperty where
  toResourceProperties ParsingPromptProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ParsingPrompt",
         supportsTags = Prelude.False,
         properties = ["ParsingPromptText" JSON..= parsingPromptText]}
instance JSON.ToJSON ParsingPromptProperty where
  toJSON ParsingPromptProperty {..}
    = JSON.object ["ParsingPromptText" JSON..= parsingPromptText]
instance Property "ParsingPromptText" ParsingPromptProperty where
  type PropertyType "ParsingPromptText" ParsingPromptProperty = Value Prelude.Text
  set newValue ParsingPromptProperty {}
    = ParsingPromptProperty {parsingPromptText = newValue, ..}