module Stratosphere.Bedrock.Flow.KnowledgeBasePromptTemplateProperty (
        KnowledgeBasePromptTemplateProperty(..),
        mkKnowledgeBasePromptTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBasePromptTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseprompttemplate.html>
    KnowledgeBasePromptTemplateProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseprompttemplate.html#cfn-bedrock-flow-knowledgebaseprompttemplate-textprompttemplate>
                                         textPromptTemplate :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBasePromptTemplateProperty ::
  Value Prelude.Text -> KnowledgeBasePromptTemplateProperty
mkKnowledgeBasePromptTemplateProperty textPromptTemplate
  = KnowledgeBasePromptTemplateProperty
      {haddock_workaround_ = (), textPromptTemplate = textPromptTemplate}
instance ToResourceProperties KnowledgeBasePromptTemplateProperty where
  toResourceProperties KnowledgeBasePromptTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.KnowledgeBasePromptTemplate",
         supportsTags = Prelude.False,
         properties = ["TextPromptTemplate" JSON..= textPromptTemplate]}
instance JSON.ToJSON KnowledgeBasePromptTemplateProperty where
  toJSON KnowledgeBasePromptTemplateProperty {..}
    = JSON.object ["TextPromptTemplate" JSON..= textPromptTemplate]
instance Property "TextPromptTemplate" KnowledgeBasePromptTemplateProperty where
  type PropertyType "TextPromptTemplate" KnowledgeBasePromptTemplateProperty = Value Prelude.Text
  set newValue KnowledgeBasePromptTemplateProperty {..}
    = KnowledgeBasePromptTemplateProperty
        {textPromptTemplate = newValue, ..}