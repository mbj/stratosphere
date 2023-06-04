module Stratosphere.QuickSight.Dashboard.BoxPlotSortConfigurationProperty (
        module Exports, BoxPlotSortConfigurationProperty(..),
        mkBoxPlotSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PaginationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotSortConfigurationProperty
  = BoxPlotSortConfigurationProperty {categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                      paginationConfiguration :: (Prelude.Maybe PaginationConfigurationProperty)}
mkBoxPlotSortConfigurationProperty ::
  BoxPlotSortConfigurationProperty
mkBoxPlotSortConfigurationProperty
  = BoxPlotSortConfigurationProperty
      {categorySort = Prelude.Nothing,
       paginationConfiguration = Prelude.Nothing}
instance ToResourceProperties BoxPlotSortConfigurationProperty where
  toResourceProperties BoxPlotSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BoxPlotSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "PaginationConfiguration"
                              Prelude.<$> paginationConfiguration])}
instance JSON.ToJSON BoxPlotSortConfigurationProperty where
  toJSON BoxPlotSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "PaginationConfiguration"
                 Prelude.<$> paginationConfiguration]))
instance Property "CategorySort" BoxPlotSortConfigurationProperty where
  type PropertyType "CategorySort" BoxPlotSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BoxPlotSortConfigurationProperty {..}
    = BoxPlotSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "PaginationConfiguration" BoxPlotSortConfigurationProperty where
  type PropertyType "PaginationConfiguration" BoxPlotSortConfigurationProperty = PaginationConfigurationProperty
  set newValue BoxPlotSortConfigurationProperty {..}
    = BoxPlotSortConfigurationProperty
        {paginationConfiguration = Prelude.pure newValue, ..}