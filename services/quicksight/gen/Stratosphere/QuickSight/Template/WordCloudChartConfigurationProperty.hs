module Stratosphere.QuickSight.Template.WordCloudChartConfigurationProperty (
        module Exports, WordCloudChartConfigurationProperty(..),
        mkWordCloudChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WordCloudFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WordCloudOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WordCloudSortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WordCloudChartConfigurationProperty
  = WordCloudChartConfigurationProperty {categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                         fieldWells :: (Prelude.Maybe WordCloudFieldWellsProperty),
                                         sortConfiguration :: (Prelude.Maybe WordCloudSortConfigurationProperty),
                                         wordCloudOptions :: (Prelude.Maybe WordCloudOptionsProperty)}
mkWordCloudChartConfigurationProperty ::
  WordCloudChartConfigurationProperty
mkWordCloudChartConfigurationProperty
  = WordCloudChartConfigurationProperty
      {categoryLabelOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, sortConfiguration = Prelude.Nothing,
       wordCloudOptions = Prelude.Nothing}
instance ToResourceProperties WordCloudChartConfigurationProperty where
  toResourceProperties WordCloudChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.WordCloudChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "WordCloudOptions" Prelude.<$> wordCloudOptions])}
instance JSON.ToJSON WordCloudChartConfigurationProperty where
  toJSON WordCloudChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "WordCloudOptions" Prelude.<$> wordCloudOptions]))
instance Property "CategoryLabelOptions" WordCloudChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" WordCloudChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue WordCloudChartConfigurationProperty {..}
    = WordCloudChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" WordCloudChartConfigurationProperty where
  type PropertyType "FieldWells" WordCloudChartConfigurationProperty = WordCloudFieldWellsProperty
  set newValue WordCloudChartConfigurationProperty {..}
    = WordCloudChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "SortConfiguration" WordCloudChartConfigurationProperty where
  type PropertyType "SortConfiguration" WordCloudChartConfigurationProperty = WordCloudSortConfigurationProperty
  set newValue WordCloudChartConfigurationProperty {..}
    = WordCloudChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "WordCloudOptions" WordCloudChartConfigurationProperty where
  type PropertyType "WordCloudOptions" WordCloudChartConfigurationProperty = WordCloudOptionsProperty
  set newValue WordCloudChartConfigurationProperty {..}
    = WordCloudChartConfigurationProperty
        {wordCloudOptions = Prelude.pure newValue, ..}