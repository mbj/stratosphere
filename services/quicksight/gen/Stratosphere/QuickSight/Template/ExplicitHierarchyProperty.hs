module Stratosphere.QuickSight.Template.ExplicitHierarchyProperty (
        module Exports, ExplicitHierarchyProperty(..),
        mkExplicitHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DrillDownFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExplicitHierarchyProperty
  = ExplicitHierarchyProperty {columns :: [ColumnIdentifierProperty],
                               drillDownFilters :: (Prelude.Maybe [DrillDownFilterProperty]),
                               hierarchyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExplicitHierarchyProperty ::
  [ColumnIdentifierProperty]
  -> Value Prelude.Text -> ExplicitHierarchyProperty
mkExplicitHierarchyProperty columns hierarchyId
  = ExplicitHierarchyProperty
      {columns = columns, hierarchyId = hierarchyId,
       drillDownFilters = Prelude.Nothing}
instance ToResourceProperties ExplicitHierarchyProperty where
  toResourceProperties ExplicitHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ExplicitHierarchy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Columns" JSON..= columns, "HierarchyId" JSON..= hierarchyId]
                           (Prelude.catMaybes
                              [(JSON..=) "DrillDownFilters" Prelude.<$> drillDownFilters]))}
instance JSON.ToJSON ExplicitHierarchyProperty where
  toJSON ExplicitHierarchyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Columns" JSON..= columns, "HierarchyId" JSON..= hierarchyId]
              (Prelude.catMaybes
                 [(JSON..=) "DrillDownFilters" Prelude.<$> drillDownFilters])))
instance Property "Columns" ExplicitHierarchyProperty where
  type PropertyType "Columns" ExplicitHierarchyProperty = [ColumnIdentifierProperty]
  set newValue ExplicitHierarchyProperty {..}
    = ExplicitHierarchyProperty {columns = newValue, ..}
instance Property "DrillDownFilters" ExplicitHierarchyProperty where
  type PropertyType "DrillDownFilters" ExplicitHierarchyProperty = [DrillDownFilterProperty]
  set newValue ExplicitHierarchyProperty {..}
    = ExplicitHierarchyProperty
        {drillDownFilters = Prelude.pure newValue, ..}
instance Property "HierarchyId" ExplicitHierarchyProperty where
  type PropertyType "HierarchyId" ExplicitHierarchyProperty = Value Prelude.Text
  set newValue ExplicitHierarchyProperty {..}
    = ExplicitHierarchyProperty {hierarchyId = newValue, ..}