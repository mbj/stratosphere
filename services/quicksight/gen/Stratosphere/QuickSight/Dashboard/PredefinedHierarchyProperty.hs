module Stratosphere.QuickSight.Dashboard.PredefinedHierarchyProperty (
        module Exports, PredefinedHierarchyProperty(..),
        mkPredefinedHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DrillDownFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedHierarchyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-predefinedhierarchy.html>
    PredefinedHierarchyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-predefinedhierarchy.html#cfn-quicksight-dashboard-predefinedhierarchy-columns>
                                 columns :: [ColumnIdentifierProperty],
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-predefinedhierarchy.html#cfn-quicksight-dashboard-predefinedhierarchy-drilldownfilters>
                                 drillDownFilters :: (Prelude.Maybe [DrillDownFilterProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-predefinedhierarchy.html#cfn-quicksight-dashboard-predefinedhierarchy-hierarchyid>
                                 hierarchyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredefinedHierarchyProperty ::
  [ColumnIdentifierProperty]
  -> Value Prelude.Text -> PredefinedHierarchyProperty
mkPredefinedHierarchyProperty columns hierarchyId
  = PredefinedHierarchyProperty
      {haddock_workaround_ = (), columns = columns,
       hierarchyId = hierarchyId, drillDownFilters = Prelude.Nothing}
instance ToResourceProperties PredefinedHierarchyProperty where
  toResourceProperties PredefinedHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PredefinedHierarchy",
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