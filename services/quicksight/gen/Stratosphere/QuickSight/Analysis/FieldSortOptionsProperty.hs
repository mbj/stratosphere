module Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty (
        module Exports, FieldSortOptionsProperty(..),
        mkFieldSortOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnSortProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortProperty as Exports
import Stratosphere.ResourceProperties
data FieldSortOptionsProperty
  = FieldSortOptionsProperty {columnSort :: (Prelude.Maybe ColumnSortProperty),
                              fieldSort :: (Prelude.Maybe FieldSortProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldSortOptionsProperty :: FieldSortOptionsProperty
mkFieldSortOptionsProperty
  = FieldSortOptionsProperty
      {columnSort = Prelude.Nothing, fieldSort = Prelude.Nothing}
instance ToResourceProperties FieldSortOptionsProperty where
  toResourceProperties FieldSortOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FieldSortOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnSort" Prelude.<$> columnSort,
                            (JSON..=) "FieldSort" Prelude.<$> fieldSort])}
instance JSON.ToJSON FieldSortOptionsProperty where
  toJSON FieldSortOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnSort" Prelude.<$> columnSort,
               (JSON..=) "FieldSort" Prelude.<$> fieldSort]))
instance Property "ColumnSort" FieldSortOptionsProperty where
  type PropertyType "ColumnSort" FieldSortOptionsProperty = ColumnSortProperty
  set newValue FieldSortOptionsProperty {..}
    = FieldSortOptionsProperty {columnSort = Prelude.pure newValue, ..}
instance Property "FieldSort" FieldSortOptionsProperty where
  type PropertyType "FieldSort" FieldSortOptionsProperty = FieldSortProperty
  set newValue FieldSortOptionsProperty {..}
    = FieldSortOptionsProperty {fieldSort = Prelude.pure newValue, ..}