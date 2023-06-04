module Stratosphere.QuickSight.Dashboard.SankeyDiagramChartConfigurationProperty (
        module Exports, SankeyDiagramChartConfigurationProperty(..),
        mkSankeyDiagramChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SankeyDiagramFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SankeyDiagramSortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramChartConfigurationProperty
  = SankeyDiagramChartConfigurationProperty {dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                             fieldWells :: (Prelude.Maybe SankeyDiagramFieldWellsProperty),
                                             sortConfiguration :: (Prelude.Maybe SankeyDiagramSortConfigurationProperty)}
mkSankeyDiagramChartConfigurationProperty ::
  SankeyDiagramChartConfigurationProperty
mkSankeyDiagramChartConfigurationProperty
  = SankeyDiagramChartConfigurationProperty
      {dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramChartConfigurationProperty where
  toResourceProperties SankeyDiagramChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SankeyDiagramChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration])}
instance JSON.ToJSON SankeyDiagramChartConfigurationProperty where
  toJSON SankeyDiagramChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration]))
instance Property "DataLabels" SankeyDiagramChartConfigurationProperty where
  type PropertyType "DataLabels" SankeyDiagramChartConfigurationProperty = DataLabelOptionsProperty
  set newValue SankeyDiagramChartConfigurationProperty {..}
    = SankeyDiagramChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" SankeyDiagramChartConfigurationProperty where
  type PropertyType "FieldWells" SankeyDiagramChartConfigurationProperty = SankeyDiagramFieldWellsProperty
  set newValue SankeyDiagramChartConfigurationProperty {..}
    = SankeyDiagramChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "SortConfiguration" SankeyDiagramChartConfigurationProperty where
  type PropertyType "SortConfiguration" SankeyDiagramChartConfigurationProperty = SankeyDiagramSortConfigurationProperty
  set newValue SankeyDiagramChartConfigurationProperty {..}
    = SankeyDiagramChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}