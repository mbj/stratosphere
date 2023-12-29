module Stratosphere.QuickSight.Dashboard.CategoryDrillDownFilterProperty (
        module Exports, CategoryDrillDownFilterProperty(..),
        mkCategoryDrillDownFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CategoryDrillDownFilterProperty
  = CategoryDrillDownFilterProperty {categoryValues :: (ValueList Prelude.Text),
                                     column :: ColumnIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCategoryDrillDownFilterProperty ::
  ValueList Prelude.Text
  -> ColumnIdentifierProperty -> CategoryDrillDownFilterProperty
mkCategoryDrillDownFilterProperty categoryValues column
  = CategoryDrillDownFilterProperty
      {categoryValues = categoryValues, column = column}
instance ToResourceProperties CategoryDrillDownFilterProperty where
  toResourceProperties CategoryDrillDownFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CategoryDrillDownFilter",
         supportsTags = Prelude.False,
         properties = ["CategoryValues" JSON..= categoryValues,
                       "Column" JSON..= column]}
instance JSON.ToJSON CategoryDrillDownFilterProperty where
  toJSON CategoryDrillDownFilterProperty {..}
    = JSON.object
        ["CategoryValues" JSON..= categoryValues, "Column" JSON..= column]
instance Property "CategoryValues" CategoryDrillDownFilterProperty where
  type PropertyType "CategoryValues" CategoryDrillDownFilterProperty = ValueList Prelude.Text
  set newValue CategoryDrillDownFilterProperty {..}
    = CategoryDrillDownFilterProperty {categoryValues = newValue, ..}
instance Property "Column" CategoryDrillDownFilterProperty where
  type PropertyType "Column" CategoryDrillDownFilterProperty = ColumnIdentifierProperty
  set newValue CategoryDrillDownFilterProperty {..}
    = CategoryDrillDownFilterProperty {column = newValue, ..}