module Stratosphere.Wisdom.AssistantAssociation.AssociationDataProperty (
        AssociationDataProperty(..), mkAssociationDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssociationDataProperty
  = AssociationDataProperty {knowledgeBaseId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociationDataProperty ::
  Value Prelude.Text -> AssociationDataProperty
mkAssociationDataProperty knowledgeBaseId
  = AssociationDataProperty {knowledgeBaseId = knowledgeBaseId}
instance ToResourceProperties AssociationDataProperty where
  toResourceProperties AssociationDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AssistantAssociation.AssociationData",
         supportsTags = Prelude.False,
         properties = ["KnowledgeBaseId" JSON..= knowledgeBaseId]}
instance JSON.ToJSON AssociationDataProperty where
  toJSON AssociationDataProperty {..}
    = JSON.object ["KnowledgeBaseId" JSON..= knowledgeBaseId]
instance Property "KnowledgeBaseId" AssociationDataProperty where
  type PropertyType "KnowledgeBaseId" AssociationDataProperty = Value Prelude.Text
  set newValue AssociationDataProperty {}
    = AssociationDataProperty {knowledgeBaseId = newValue, ..}