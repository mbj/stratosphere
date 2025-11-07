module Stratosphere.QuickSight.Template.ColumnHierarchyProperty (
        module Exports, ColumnHierarchyProperty(..),
        mkColumnHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DateTimeHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ExplicitHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PredefinedHierarchyProperty as Exports
import Stratosphere.ResourceProperties
data ColumnHierarchyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnhierarchy.html>
    ColumnHierarchyProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnhierarchy.html#cfn-quicksight-template-columnhierarchy-datetimehierarchy>
                             dateTimeHierarchy :: (Prelude.Maybe DateTimeHierarchyProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnhierarchy.html#cfn-quicksight-template-columnhierarchy-explicithierarchy>
                             explicitHierarchy :: (Prelude.Maybe ExplicitHierarchyProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columnhierarchy.html#cfn-quicksight-template-columnhierarchy-predefinedhierarchy>
                             predefinedHierarchy :: (Prelude.Maybe PredefinedHierarchyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnHierarchyProperty :: ColumnHierarchyProperty
mkColumnHierarchyProperty
  = ColumnHierarchyProperty
      {haddock_workaround_ = (), dateTimeHierarchy = Prelude.Nothing,
       explicitHierarchy = Prelude.Nothing,
       predefinedHierarchy = Prelude.Nothing}
instance ToResourceProperties ColumnHierarchyProperty where
  toResourceProperties ColumnHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnHierarchy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeHierarchy" Prelude.<$> dateTimeHierarchy,
                            (JSON..=) "ExplicitHierarchy" Prelude.<$> explicitHierarchy,
                            (JSON..=) "PredefinedHierarchy" Prelude.<$> predefinedHierarchy])}
instance JSON.ToJSON ColumnHierarchyProperty where
  toJSON ColumnHierarchyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeHierarchy" Prelude.<$> dateTimeHierarchy,
               (JSON..=) "ExplicitHierarchy" Prelude.<$> explicitHierarchy,
               (JSON..=) "PredefinedHierarchy" Prelude.<$> predefinedHierarchy]))
instance Property "DateTimeHierarchy" ColumnHierarchyProperty where
  type PropertyType "DateTimeHierarchy" ColumnHierarchyProperty = DateTimeHierarchyProperty
  set newValue ColumnHierarchyProperty {..}
    = ColumnHierarchyProperty
        {dateTimeHierarchy = Prelude.pure newValue, ..}
instance Property "ExplicitHierarchy" ColumnHierarchyProperty where
  type PropertyType "ExplicitHierarchy" ColumnHierarchyProperty = ExplicitHierarchyProperty
  set newValue ColumnHierarchyProperty {..}
    = ColumnHierarchyProperty
        {explicitHierarchy = Prelude.pure newValue, ..}
instance Property "PredefinedHierarchy" ColumnHierarchyProperty where
  type PropertyType "PredefinedHierarchy" ColumnHierarchyProperty = PredefinedHierarchyProperty
  set newValue ColumnHierarchyProperty {..}
    = ColumnHierarchyProperty
        {predefinedHierarchy = Prelude.pure newValue, ..}