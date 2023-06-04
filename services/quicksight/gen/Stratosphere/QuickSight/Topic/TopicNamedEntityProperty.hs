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
  = TopicNamedEntityProperty {definition :: (Prelude.Maybe [NamedEntityDefinitionProperty]),
                              entityDescription :: (Prelude.Maybe (Value Prelude.Text)),
                              entityName :: (Value Prelude.Text),
                              entitySynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                              semanticEntityType :: (Prelude.Maybe SemanticEntityTypeProperty)}
mkTopicNamedEntityProperty ::
  Value Prelude.Text -> TopicNamedEntityProperty
mkTopicNamedEntityProperty entityName
  = TopicNamedEntityProperty
      {entityName = entityName, definition = Prelude.Nothing,
       entityDescription = Prelude.Nothing,
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