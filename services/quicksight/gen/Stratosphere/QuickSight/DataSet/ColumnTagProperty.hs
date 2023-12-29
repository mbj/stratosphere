module Stratosphere.QuickSight.DataSet.ColumnTagProperty (
        module Exports, ColumnTagProperty(..), mkColumnTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ColumnDescriptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnTagProperty
  = ColumnTagProperty {columnDescription :: (Prelude.Maybe ColumnDescriptionProperty),
                       columnGeographicRole :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnTagProperty :: ColumnTagProperty
mkColumnTagProperty
  = ColumnTagProperty
      {columnDescription = Prelude.Nothing,
       columnGeographicRole = Prelude.Nothing}
instance ToResourceProperties ColumnTagProperty where
  toResourceProperties ColumnTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ColumnTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnDescription" Prelude.<$> columnDescription,
                            (JSON..=) "ColumnGeographicRole"
                              Prelude.<$> columnGeographicRole])}
instance JSON.ToJSON ColumnTagProperty where
  toJSON ColumnTagProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnDescription" Prelude.<$> columnDescription,
               (JSON..=) "ColumnGeographicRole"
                 Prelude.<$> columnGeographicRole]))
instance Property "ColumnDescription" ColumnTagProperty where
  type PropertyType "ColumnDescription" ColumnTagProperty = ColumnDescriptionProperty
  set newValue ColumnTagProperty {..}
    = ColumnTagProperty {columnDescription = Prelude.pure newValue, ..}
instance Property "ColumnGeographicRole" ColumnTagProperty where
  type PropertyType "ColumnGeographicRole" ColumnTagProperty = Value Prelude.Text
  set newValue ColumnTagProperty {..}
    = ColumnTagProperty
        {columnGeographicRole = Prelude.pure newValue, ..}