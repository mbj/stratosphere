module Stratosphere.QuickSight.Template.PivotTableFieldOptionsProperty (
        module Exports, PivotTableFieldOptionsProperty(..),
        mkPivotTableFieldOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableDataPathOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableFieldCollapseStateOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableFieldOptionProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableFieldOptionsProperty
  = PivotTableFieldOptionsProperty {collapseStateOptions :: (Prelude.Maybe [PivotTableFieldCollapseStateOptionProperty]),
                                    dataPathOptions :: (Prelude.Maybe [PivotTableDataPathOptionProperty]),
                                    selectedFieldOptions :: (Prelude.Maybe [PivotTableFieldOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableFieldOptionsProperty :: PivotTableFieldOptionsProperty
mkPivotTableFieldOptionsProperty
  = PivotTableFieldOptionsProperty
      {collapseStateOptions = Prelude.Nothing,
       dataPathOptions = Prelude.Nothing,
       selectedFieldOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldOptionsProperty where
  toResourceProperties PivotTableFieldOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableFieldOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CollapseStateOptions" Prelude.<$> collapseStateOptions,
                            (JSON..=) "DataPathOptions" Prelude.<$> dataPathOptions,
                            (JSON..=) "SelectedFieldOptions"
                              Prelude.<$> selectedFieldOptions])}
instance JSON.ToJSON PivotTableFieldOptionsProperty where
  toJSON PivotTableFieldOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CollapseStateOptions" Prelude.<$> collapseStateOptions,
               (JSON..=) "DataPathOptions" Prelude.<$> dataPathOptions,
               (JSON..=) "SelectedFieldOptions"
                 Prelude.<$> selectedFieldOptions]))
instance Property "CollapseStateOptions" PivotTableFieldOptionsProperty where
  type PropertyType "CollapseStateOptions" PivotTableFieldOptionsProperty = [PivotTableFieldCollapseStateOptionProperty]
  set newValue PivotTableFieldOptionsProperty {..}
    = PivotTableFieldOptionsProperty
        {collapseStateOptions = Prelude.pure newValue, ..}
instance Property "DataPathOptions" PivotTableFieldOptionsProperty where
  type PropertyType "DataPathOptions" PivotTableFieldOptionsProperty = [PivotTableDataPathOptionProperty]
  set newValue PivotTableFieldOptionsProperty {..}
    = PivotTableFieldOptionsProperty
        {dataPathOptions = Prelude.pure newValue, ..}
instance Property "SelectedFieldOptions" PivotTableFieldOptionsProperty where
  type PropertyType "SelectedFieldOptions" PivotTableFieldOptionsProperty = [PivotTableFieldOptionProperty]
  set newValue PivotTableFieldOptionsProperty {..}
    = PivotTableFieldOptionsProperty
        {selectedFieldOptions = Prelude.pure newValue, ..}