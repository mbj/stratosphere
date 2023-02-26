module Stratosphere.IoTTwinMaker.ComponentType (
        module Exports, ComponentType(..), mkComponentType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.FunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.PropertyDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.PropertyGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentType
  = ComponentType {componentTypeId :: (Value Prelude.Text),
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   extendsFrom :: (Prelude.Maybe (ValueList Prelude.Text)),
                   functions :: (Prelude.Maybe (Prelude.Map Prelude.Text FunctionProperty)),
                   isSingleton :: (Prelude.Maybe (Value Prelude.Bool)),
                   propertyDefinitions :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyDefinitionProperty)),
                   propertyGroups :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyGroupProperty)),
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   workspaceId :: (Value Prelude.Text)}
mkComponentType ::
  Value Prelude.Text -> Value Prelude.Text -> ComponentType
mkComponentType componentTypeId workspaceId
  = ComponentType
      {componentTypeId = componentTypeId, workspaceId = workspaceId,
       description = Prelude.Nothing, extendsFrom = Prelude.Nothing,
       functions = Prelude.Nothing, isSingleton = Prelude.Nothing,
       propertyDefinitions = Prelude.Nothing,
       propertyGroups = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ComponentType where
  toResourceProperties ComponentType {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComponentTypeId" JSON..= componentTypeId,
                            "WorkspaceId" JSON..= workspaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExtendsFrom" Prelude.<$> extendsFrom,
                               (JSON..=) "Functions" Prelude.<$> functions,
                               (JSON..=) "IsSingleton" Prelude.<$> isSingleton,
                               (JSON..=) "PropertyDefinitions" Prelude.<$> propertyDefinitions,
                               (JSON..=) "PropertyGroups" Prelude.<$> propertyGroups,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ComponentType where
  toJSON ComponentType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComponentTypeId" JSON..= componentTypeId,
               "WorkspaceId" JSON..= workspaceId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExtendsFrom" Prelude.<$> extendsFrom,
                  (JSON..=) "Functions" Prelude.<$> functions,
                  (JSON..=) "IsSingleton" Prelude.<$> isSingleton,
                  (JSON..=) "PropertyDefinitions" Prelude.<$> propertyDefinitions,
                  (JSON..=) "PropertyGroups" Prelude.<$> propertyGroups,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComponentTypeId" ComponentType where
  type PropertyType "ComponentTypeId" ComponentType = Value Prelude.Text
  set newValue ComponentType {..}
    = ComponentType {componentTypeId = newValue, ..}
instance Property "Description" ComponentType where
  type PropertyType "Description" ComponentType = Value Prelude.Text
  set newValue ComponentType {..}
    = ComponentType {description = Prelude.pure newValue, ..}
instance Property "ExtendsFrom" ComponentType where
  type PropertyType "ExtendsFrom" ComponentType = ValueList Prelude.Text
  set newValue ComponentType {..}
    = ComponentType {extendsFrom = Prelude.pure newValue, ..}
instance Property "Functions" ComponentType where
  type PropertyType "Functions" ComponentType = Prelude.Map Prelude.Text FunctionProperty
  set newValue ComponentType {..}
    = ComponentType {functions = Prelude.pure newValue, ..}
instance Property "IsSingleton" ComponentType where
  type PropertyType "IsSingleton" ComponentType = Value Prelude.Bool
  set newValue ComponentType {..}
    = ComponentType {isSingleton = Prelude.pure newValue, ..}
instance Property "PropertyDefinitions" ComponentType where
  type PropertyType "PropertyDefinitions" ComponentType = Prelude.Map Prelude.Text PropertyDefinitionProperty
  set newValue ComponentType {..}
    = ComponentType {propertyDefinitions = Prelude.pure newValue, ..}
instance Property "PropertyGroups" ComponentType where
  type PropertyType "PropertyGroups" ComponentType = Prelude.Map Prelude.Text PropertyGroupProperty
  set newValue ComponentType {..}
    = ComponentType {propertyGroups = Prelude.pure newValue, ..}
instance Property "Tags" ComponentType where
  type PropertyType "Tags" ComponentType = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComponentType {..}
    = ComponentType {tags = Prelude.pure newValue, ..}
instance Property "WorkspaceId" ComponentType where
  type PropertyType "WorkspaceId" ComponentType = Value Prelude.Text
  set newValue ComponentType {..}
    = ComponentType {workspaceId = newValue, ..}