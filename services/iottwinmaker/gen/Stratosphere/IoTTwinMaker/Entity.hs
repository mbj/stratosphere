module Stratosphere.IoTTwinMaker.Entity (
        module Exports, Entity(..), mkEntity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.ComponentProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.CompositeComponentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Entity
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html>
    Entity {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-components>
            components :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentProperty)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-compositecomponents>
            compositeComponents :: (Prelude.Maybe (Prelude.Map Prelude.Text CompositeComponentProperty)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-entityid>
            entityId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-entityname>
            entityName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-parententityid>
            parentEntityId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-tags>
            tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-entity.html#cfn-iottwinmaker-entity-workspaceid>
            workspaceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntity :: Value Prelude.Text -> Value Prelude.Text -> Entity
mkEntity entityName workspaceId
  = Entity
      {haddock_workaround_ = (), entityName = entityName,
       workspaceId = workspaceId, components = Prelude.Nothing,
       compositeComponents = Prelude.Nothing,
       description = Prelude.Nothing, entityId = Prelude.Nothing,
       parentEntityId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Entity where
  toResourceProperties Entity {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityName" JSON..= entityName,
                            "WorkspaceId" JSON..= workspaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Components" Prelude.<$> components,
                               (JSON..=) "CompositeComponents" Prelude.<$> compositeComponents,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EntityId" Prelude.<$> entityId,
                               (JSON..=) "ParentEntityId" Prelude.<$> parentEntityId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Entity where
  toJSON Entity {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityName" JSON..= entityName,
               "WorkspaceId" JSON..= workspaceId]
              (Prelude.catMaybes
                 [(JSON..=) "Components" Prelude.<$> components,
                  (JSON..=) "CompositeComponents" Prelude.<$> compositeComponents,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EntityId" Prelude.<$> entityId,
                  (JSON..=) "ParentEntityId" Prelude.<$> parentEntityId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Components" Entity where
  type PropertyType "Components" Entity = Prelude.Map Prelude.Text ComponentProperty
  set newValue Entity {..}
    = Entity {components = Prelude.pure newValue, ..}
instance Property "CompositeComponents" Entity where
  type PropertyType "CompositeComponents" Entity = Prelude.Map Prelude.Text CompositeComponentProperty
  set newValue Entity {..}
    = Entity {compositeComponents = Prelude.pure newValue, ..}
instance Property "Description" Entity where
  type PropertyType "Description" Entity = Value Prelude.Text
  set newValue Entity {..}
    = Entity {description = Prelude.pure newValue, ..}
instance Property "EntityId" Entity where
  type PropertyType "EntityId" Entity = Value Prelude.Text
  set newValue Entity {..}
    = Entity {entityId = Prelude.pure newValue, ..}
instance Property "EntityName" Entity where
  type PropertyType "EntityName" Entity = Value Prelude.Text
  set newValue Entity {..} = Entity {entityName = newValue, ..}
instance Property "ParentEntityId" Entity where
  type PropertyType "ParentEntityId" Entity = Value Prelude.Text
  set newValue Entity {..}
    = Entity {parentEntityId = Prelude.pure newValue, ..}
instance Property "Tags" Entity where
  type PropertyType "Tags" Entity = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Entity {..}
    = Entity {tags = Prelude.pure newValue, ..}
instance Property "WorkspaceId" Entity where
  type PropertyType "WorkspaceId" Entity = Value Prelude.Text
  set newValue Entity {..} = Entity {workspaceId = newValue, ..}