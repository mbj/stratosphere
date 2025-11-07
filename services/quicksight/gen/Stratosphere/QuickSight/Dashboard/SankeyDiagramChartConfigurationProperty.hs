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
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramchartconfiguration.html>
    SankeyDiagramChartConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramchartconfiguration.html#cfn-quicksight-dashboard-sankeydiagramchartconfiguration-datalabels>
                                             dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramchartconfiguration.html#cfn-quicksight-dashboard-sankeydiagramchartconfiguration-fieldwells>
                                             fieldWells :: (Prelude.Maybe SankeyDiagramFieldWellsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramchartconfiguration.html#cfn-quicksight-dashboard-sankeydiagramchartconfiguration-interactions>
                                             interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramchartconfiguration.html#cfn-quicksight-dashboard-sankeydiagramchartconfiguration-sortconfiguration>
                                             sortConfiguration :: (Prelude.Maybe SankeyDiagramSortConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSankeyDiagramChartConfigurationProperty ::
  SankeyDiagramChartConfigurationProperty
mkSankeyDiagramChartConfigurationProperty
  = SankeyDiagramChartConfigurationProperty
      {haddock_workaround_ = (), dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
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
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration])}
instance JSON.ToJSON SankeyDiagramChartConfigurationProperty where
  toJSON SankeyDiagramChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
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
instance Property "Interactions" SankeyDiagramChartConfigurationProperty where
  type PropertyType "Interactions" SankeyDiagramChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue SankeyDiagramChartConfigurationProperty {..}
    = SankeyDiagramChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" SankeyDiagramChartConfigurationProperty where
  type PropertyType "SortConfiguration" SankeyDiagramChartConfigurationProperty = SankeyDiagramSortConfigurationProperty
  set newValue SankeyDiagramChartConfigurationProperty {..}
    = SankeyDiagramChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}