module Stratosphere.QuickSight.Template.PivotTableSortConfigurationProperty (
        module Exports, PivotTableSortConfigurationProperty(..),
        mkPivotTableSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotFieldSortOptionsProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableSortConfigurationProperty
  = PivotTableSortConfigurationProperty {fieldSortOptions :: (Prelude.Maybe [PivotFieldSortOptionsProperty])}
mkPivotTableSortConfigurationProperty ::
  PivotTableSortConfigurationProperty
mkPivotTableSortConfigurationProperty
  = PivotTableSortConfigurationProperty
      {fieldSortOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableSortConfigurationProperty where
  toResourceProperties PivotTableSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldSortOptions" Prelude.<$> fieldSortOptions])}
instance JSON.ToJSON PivotTableSortConfigurationProperty where
  toJSON PivotTableSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldSortOptions" Prelude.<$> fieldSortOptions]))
instance Property "FieldSortOptions" PivotTableSortConfigurationProperty where
  type PropertyType "FieldSortOptions" PivotTableSortConfigurationProperty = [PivotFieldSortOptionsProperty]
  set newValue PivotTableSortConfigurationProperty {}
    = PivotTableSortConfigurationProperty
        {fieldSortOptions = Prelude.pure newValue, ..}