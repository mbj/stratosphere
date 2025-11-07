module Stratosphere.QuickSight.Template.DateTimeHierarchyProperty (
        module Exports, DateTimeHierarchyProperty(..),
        mkDateTimeHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DrillDownFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeHierarchyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimehierarchy.html>
    DateTimeHierarchyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimehierarchy.html#cfn-quicksight-template-datetimehierarchy-drilldownfilters>
                               drillDownFilters :: (Prelude.Maybe [DrillDownFilterProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimehierarchy.html#cfn-quicksight-template-datetimehierarchy-hierarchyid>
                               hierarchyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeHierarchyProperty ::
  Value Prelude.Text -> DateTimeHierarchyProperty
mkDateTimeHierarchyProperty hierarchyId
  = DateTimeHierarchyProperty
      {haddock_workaround_ = (), hierarchyId = hierarchyId,
       drillDownFilters = Prelude.Nothing}
instance ToResourceProperties DateTimeHierarchyProperty where
  toResourceProperties DateTimeHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DateTimeHierarchy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HierarchyId" JSON..= hierarchyId]
                           (Prelude.catMaybes
                              [(JSON..=) "DrillDownFilters" Prelude.<$> drillDownFilters]))}
instance JSON.ToJSON DateTimeHierarchyProperty where
  toJSON DateTimeHierarchyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HierarchyId" JSON..= hierarchyId]
              (Prelude.catMaybes
                 [(JSON..=) "DrillDownFilters" Prelude.<$> drillDownFilters])))
instance Property "DrillDownFilters" DateTimeHierarchyProperty where
  type PropertyType "DrillDownFilters" DateTimeHierarchyProperty = [DrillDownFilterProperty]
  set newValue DateTimeHierarchyProperty {..}
    = DateTimeHierarchyProperty
        {drillDownFilters = Prelude.pure newValue, ..}
instance Property "HierarchyId" DateTimeHierarchyProperty where
  type PropertyType "HierarchyId" DateTimeHierarchyProperty = Value Prelude.Text
  set newValue DateTimeHierarchyProperty {..}
    = DateTimeHierarchyProperty {hierarchyId = newValue, ..}