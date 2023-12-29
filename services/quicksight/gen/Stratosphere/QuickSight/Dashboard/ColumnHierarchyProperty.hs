module Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty (
        module Exports, ColumnHierarchyProperty(..),
        mkColumnHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExplicitHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PredefinedHierarchyProperty as Exports
import Stratosphere.ResourceProperties
data ColumnHierarchyProperty
  = ColumnHierarchyProperty {dateTimeHierarchy :: (Prelude.Maybe DateTimeHierarchyProperty),
                             explicitHierarchy :: (Prelude.Maybe ExplicitHierarchyProperty),
                             predefinedHierarchy :: (Prelude.Maybe PredefinedHierarchyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnHierarchyProperty :: ColumnHierarchyProperty
mkColumnHierarchyProperty
  = ColumnHierarchyProperty
      {dateTimeHierarchy = Prelude.Nothing,
       explicitHierarchy = Prelude.Nothing,
       predefinedHierarchy = Prelude.Nothing}
instance ToResourceProperties ColumnHierarchyProperty where
  toResourceProperties ColumnHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ColumnHierarchy",
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