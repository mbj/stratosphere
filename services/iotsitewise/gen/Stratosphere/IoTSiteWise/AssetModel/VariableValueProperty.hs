module Stratosphere.IoTSiteWise.AssetModel.VariableValueProperty (
        module Exports, VariableValueProperty(..), mkVariableValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.PropertyPathDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariableValueProperty
  = VariableValueProperty {hierarchyExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                           hierarchyId :: (Prelude.Maybe (Value Prelude.Text)),
                           hierarchyLogicalId :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyId :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyLogicalId :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyPath :: (Prelude.Maybe [PropertyPathDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariableValueProperty :: VariableValueProperty
mkVariableValueProperty
  = VariableValueProperty
      {hierarchyExternalId = Prelude.Nothing,
       hierarchyId = Prelude.Nothing,
       hierarchyLogicalId = Prelude.Nothing,
       propertyExternalId = Prelude.Nothing, propertyId = Prelude.Nothing,
       propertyLogicalId = Prelude.Nothing,
       propertyPath = Prelude.Nothing}
instance ToResourceProperties VariableValueProperty where
  toResourceProperties VariableValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.VariableValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HierarchyExternalId" Prelude.<$> hierarchyExternalId,
                            (JSON..=) "HierarchyId" Prelude.<$> hierarchyId,
                            (JSON..=) "HierarchyLogicalId" Prelude.<$> hierarchyLogicalId,
                            (JSON..=) "PropertyExternalId" Prelude.<$> propertyExternalId,
                            (JSON..=) "PropertyId" Prelude.<$> propertyId,
                            (JSON..=) "PropertyLogicalId" Prelude.<$> propertyLogicalId,
                            (JSON..=) "PropertyPath" Prelude.<$> propertyPath])}
instance JSON.ToJSON VariableValueProperty where
  toJSON VariableValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HierarchyExternalId" Prelude.<$> hierarchyExternalId,
               (JSON..=) "HierarchyId" Prelude.<$> hierarchyId,
               (JSON..=) "HierarchyLogicalId" Prelude.<$> hierarchyLogicalId,
               (JSON..=) "PropertyExternalId" Prelude.<$> propertyExternalId,
               (JSON..=) "PropertyId" Prelude.<$> propertyId,
               (JSON..=) "PropertyLogicalId" Prelude.<$> propertyLogicalId,
               (JSON..=) "PropertyPath" Prelude.<$> propertyPath]))
instance Property "HierarchyExternalId" VariableValueProperty where
  type PropertyType "HierarchyExternalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {hierarchyExternalId = Prelude.pure newValue, ..}
instance Property "HierarchyId" VariableValueProperty where
  type PropertyType "HierarchyId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty {hierarchyId = Prelude.pure newValue, ..}
instance Property "HierarchyLogicalId" VariableValueProperty where
  type PropertyType "HierarchyLogicalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {hierarchyLogicalId = Prelude.pure newValue, ..}
instance Property "PropertyExternalId" VariableValueProperty where
  type PropertyType "PropertyExternalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {propertyExternalId = Prelude.pure newValue, ..}
instance Property "PropertyId" VariableValueProperty where
  type PropertyType "PropertyId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty {propertyId = Prelude.pure newValue, ..}
instance Property "PropertyLogicalId" VariableValueProperty where
  type PropertyType "PropertyLogicalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {propertyLogicalId = Prelude.pure newValue, ..}
instance Property "PropertyPath" VariableValueProperty where
  type PropertyType "PropertyPath" VariableValueProperty = [PropertyPathDefinitionProperty]
  set newValue VariableValueProperty {..}
    = VariableValueProperty {propertyPath = Prelude.pure newValue, ..}