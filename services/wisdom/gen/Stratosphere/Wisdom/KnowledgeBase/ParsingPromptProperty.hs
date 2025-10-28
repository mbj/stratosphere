module Stratosphere.Wisdom.KnowledgeBase.ParsingPromptProperty (
        ParsingPromptProperty(..), mkParsingPromptProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParsingPromptProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-parsingprompt.html>
    ParsingPromptProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-parsingprompt.html#cfn-wisdom-knowledgebase-parsingprompt-parsingprompttext>
                           parsingPromptText :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParsingPromptProperty ::
  Value Prelude.Text -> ParsingPromptProperty
mkParsingPromptProperty parsingPromptText
  = ParsingPromptProperty
      {haddock_workaround_ = (), parsingPromptText = parsingPromptText}
instance ToResourceProperties ParsingPromptProperty where
  toResourceProperties ParsingPromptProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.ParsingPrompt",
         supportsTags = Prelude.False,
         properties = ["ParsingPromptText" JSON..= parsingPromptText]}
instance JSON.ToJSON ParsingPromptProperty where
  toJSON ParsingPromptProperty {..}
    = JSON.object ["ParsingPromptText" JSON..= parsingPromptText]
instance Property "ParsingPromptText" ParsingPromptProperty where
  type PropertyType "ParsingPromptText" ParsingPromptProperty = Value Prelude.Text
  set newValue ParsingPromptProperty {..}
    = ParsingPromptProperty {parsingPromptText = newValue, ..}