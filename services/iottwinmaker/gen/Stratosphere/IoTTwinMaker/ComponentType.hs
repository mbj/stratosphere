module Stratosphere.IoTTwinMaker.ComponentType (
        module Exports, ComponentType(..), mkComponentType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.CompositeComponentTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.FunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.PropertyDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.PropertyGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html>
    ComponentType {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-componenttypeid>
                   componentTypeId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-compositecomponenttypes>
                   compositeComponentTypes :: (Prelude.Maybe (Prelude.Map Prelude.Text CompositeComponentTypeProperty)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-extendsfrom>
                   extendsFrom :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-functions>
                   functions :: (Prelude.Maybe (Prelude.Map Prelude.Text FunctionProperty)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-issingleton>
                   isSingleton :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-propertydefinitions>
                   propertyDefinitions :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyDefinitionProperty)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-propertygroups>
                   propertyGroups :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyGroupProperty)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-componenttype.html#cfn-iottwinmaker-componenttype-workspaceid>
                   workspaceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentType ::
  Value Prelude.Text -> Value Prelude.Text -> ComponentType
mkComponentType componentTypeId workspaceId
  = ComponentType
      {haddock_workaround_ = (), componentTypeId = componentTypeId,
       workspaceId = workspaceId,
       compositeComponentTypes = Prelude.Nothing,
       description = Prelude.Nothing, extendsFrom = Prelude.Nothing,
       functions = Prelude.Nothing, isSingleton = Prelude.Nothing,
       propertyDefinitions = Prelude.Nothing,
       propertyGroups = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ComponentType where
  toResourceProperties ComponentType {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComponentTypeId" JSON..= componentTypeId,
                            "WorkspaceId" JSON..= workspaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "CompositeComponentTypes"
                                 Prelude.<$> compositeComponentTypes,
                               (JSON..=) "Description" Prelude.<$> description,
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
                 [(JSON..=) "CompositeComponentTypes"
                    Prelude.<$> compositeComponentTypes,
                  (JSON..=) "Description" Prelude.<$> description,
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
instance Property "CompositeComponentTypes" ComponentType where
  type PropertyType "CompositeComponentTypes" ComponentType = Prelude.Map Prelude.Text CompositeComponentTypeProperty
  set newValue ComponentType {..}
    = ComponentType
        {compositeComponentTypes = Prelude.pure newValue, ..}
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