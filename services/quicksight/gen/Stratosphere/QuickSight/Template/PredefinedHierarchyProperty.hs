module Stratosphere.QuickSight.Template.PredefinedHierarchyProperty (
        module Exports, PredefinedHierarchyProperty(..),
        mkPredefinedHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DrillDownFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedHierarchyProperty
  = PredefinedHierarchyProperty {columns :: [ColumnIdentifierProperty],
                                 drillDownFilters :: (Prelude.Maybe [DrillDownFilterProperty]),
                                 hierarchyId :: (Value Prelude.Text)}
mkPredefinedHierarchyProperty ::
  [ColumnIdentifierProperty]
  -> Value Prelude.Text -> PredefinedHierarchyProperty
mkPredefinedHierarchyProperty columns hierarchyId
  = PredefinedHierarchyProperty
      {columns = columns, hierarchyId = hierarchyId,
       drillDownFilters = Prelude.Nothing}
instance ToResourceProperties PredefinedHierarchyProperty where
  toResourceProperties PredefinedHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PredefinedHierarchy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Columns" JSON..= columns, "HierarchyId" JSON..= hierarchyId]
                           (Prelude.catMaybes
                              [(JSON..=) "DrillDownFilters" Prelude.<$> drillDownFilters]))}
instance JSON.ToJSON PredefinedHierarchyProperty where
  toJSON PredefinedHierarchyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Columns" JSON..= columns, "HierarchyId" JSON..= hierarchyId]
              (Prelude.catMaybes
                 [(JSON..=) "DrillDownFilters" Prelude.<$> drillDownFilters])))
instance Property "Columns" PredefinedHierarchyProperty where
  type PropertyType "Columns" PredefinedHierarchyProperty = [ColumnIdentifierProperty]
  set newValue PredefinedHierarchyProperty {..}
    = PredefinedHierarchyProperty {columns = newValue, ..}
instance Property "DrillDownFilters" PredefinedHierarchyProperty where
  type PropertyType "DrillDownFilters" PredefinedHierarchyProperty = [DrillDownFilterProperty]
  set newValue PredefinedHierarchyProperty {..}
    = PredefinedHierarchyProperty
        {drillDownFilters = Prelude.pure newValue, ..}
instance Property "HierarchyId" PredefinedHierarchyProperty where
  type PropertyType "HierarchyId" PredefinedHierarchyProperty = Value Prelude.Text
  set newValue PredefinedHierarchyProperty {..}
    = PredefinedHierarchyProperty {hierarchyId = newValue, ..}