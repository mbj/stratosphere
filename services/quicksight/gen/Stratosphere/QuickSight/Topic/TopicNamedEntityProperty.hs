module Stratosphere.QuickSight.Topic.TopicNamedEntityProperty (
        module Exports, TopicNamedEntityProperty(..),
        mkTopicNamedEntityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.NamedEntityDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.SemanticEntityTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicNamedEntityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnamedentity.html>
    TopicNamedEntityProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnamedentity.html#cfn-quicksight-topic-topicnamedentity-definition>
                              definition :: (Prelude.Maybe [NamedEntityDefinitionProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnamedentity.html#cfn-quicksight-topic-topicnamedentity-entitydescription>
                              entityDescription :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnamedentity.html#cfn-quicksight-topic-topicnamedentity-entityname>
                              entityName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnamedentity.html#cfn-quicksight-topic-topicnamedentity-entitysynonyms>
                              entitySynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnamedentity.html#cfn-quicksight-topic-topicnamedentity-semanticentitytype>
                              semanticEntityType :: (Prelude.Maybe SemanticEntityTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicNamedEntityProperty ::
  Value Prelude.Text -> TopicNamedEntityProperty
mkTopicNamedEntityProperty entityName
  = TopicNamedEntityProperty
      {haddock_workaround_ = (), entityName = entityName,
       definition = Prelude.Nothing, entityDescription = Prelude.Nothing,
       entitySynonyms = Prelude.Nothing,
       semanticEntityType = Prelude.Nothing}
instance ToResourceProperties TopicNamedEntityProperty where
  toResourceProperties TopicNamedEntityProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicNamedEntity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityName" JSON..= entityName]
                           (Prelude.catMaybes
                              [(JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "EntityDescription" Prelude.<$> entityDescription,
                               (JSON..=) "EntitySynonyms" Prelude.<$> entitySynonyms,
                               (JSON..=) "SemanticEntityType" Prelude.<$> semanticEntityType]))}
instance JSON.ToJSON TopicNamedEntityProperty where
  toJSON TopicNamedEntityProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityName" JSON..= entityName]
              (Prelude.catMaybes
                 [(JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "EntityDescription" Prelude.<$> entityDescription,
                  (JSON..=) "EntitySynonyms" Prelude.<$> entitySynonyms,
                  (JSON..=) "SemanticEntityType" Prelude.<$> semanticEntityType])))
instance Property "Definition" TopicNamedEntityProperty where
  type PropertyType "Definition" TopicNamedEntityProperty = [NamedEntityDefinitionProperty]
  set newValue TopicNamedEntityProperty {..}
    = TopicNamedEntityProperty {definition = Prelude.pure newValue, ..}
instance Property "EntityDescription" TopicNamedEntityProperty where
  type PropertyType "EntityDescription" TopicNamedEntityProperty = Value Prelude.Text
  set newValue TopicNamedEntityProperty {..}
    = TopicNamedEntityProperty
        {entityDescription = Prelude.pure newValue, ..}
instance Property "EntityName" TopicNamedEntityProperty where
  type PropertyType "EntityName" TopicNamedEntityProperty = Value Prelude.Text
  set newValue TopicNamedEntityProperty {..}
    = TopicNamedEntityProperty {entityName = newValue, ..}
instance Property "EntitySynonyms" TopicNamedEntityProperty where
  type PropertyType "EntitySynonyms" TopicNamedEntityProperty = ValueList Prelude.Text
  set newValue TopicNamedEntityProperty {..}
    = TopicNamedEntityProperty
        {entitySynonyms = Prelude.pure newValue, ..}
instance Property "SemanticEntityType" TopicNamedEntityProperty where
  type PropertyType "SemanticEntityType" TopicNamedEntityProperty = SemanticEntityTypeProperty
  set newValue TopicNamedEntityProperty {..}
    = TopicNamedEntityProperty
        {semanticEntityType = Prelude.pure newValue, ..}