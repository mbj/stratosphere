module Stratosphere.QuickSight.Analysis.LineChartSortConfigurationProperty (
        module Exports, LineChartSortConfigurationProperty(..),
        mkLineChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LineChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartsortconfiguration.html>
    LineChartSortConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartsortconfiguration.html#cfn-quicksight-analysis-linechartsortconfiguration-categoryitemslimitconfiguration>
                                        categoryItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartsortconfiguration.html#cfn-quicksight-analysis-linechartsortconfiguration-categorysort>
                                        categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartsortconfiguration.html#cfn-quicksight-analysis-linechartsortconfiguration-coloritemslimitconfiguration>
                                        colorItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartsortconfiguration.html#cfn-quicksight-analysis-linechartsortconfiguration-smallmultipleslimitconfiguration>
                                        smallMultiplesLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartsortconfiguration.html#cfn-quicksight-analysis-linechartsortconfiguration-smallmultiplessort>
                                        smallMultiplesSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartSortConfigurationProperty ::
  LineChartSortConfigurationProperty
mkLineChartSortConfigurationProperty
  = LineChartSortConfigurationProperty
      {haddock_workaround_ = (),
       categoryItemsLimitConfiguration = Prelude.Nothing,
       categorySort = Prelude.Nothing,
       colorItemsLimitConfiguration = Prelude.Nothing,
       smallMultiplesLimitConfiguration = Prelude.Nothing,
       smallMultiplesSort = Prelude.Nothing}
instance ToResourceProperties LineChartSortConfigurationProperty where
  toResourceProperties LineChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimitConfiguration"
                              Prelude.<$> categoryItemsLimitConfiguration,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimitConfiguration"
                              Prelude.<$> colorItemsLimitConfiguration,
                            (JSON..=) "SmallMultiplesLimitConfiguration"
                              Prelude.<$> smallMultiplesLimitConfiguration,
                            (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort])}
instance JSON.ToJSON LineChartSortConfigurationProperty where
  toJSON LineChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimitConfiguration"
                 Prelude.<$> categoryItemsLimitConfiguration,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimitConfiguration"
                 Prelude.<$> colorItemsLimitConfiguration,
               (JSON..=) "SmallMultiplesLimitConfiguration"
                 Prelude.<$> smallMultiplesLimitConfiguration,
               (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort]))
instance Property "CategoryItemsLimitConfiguration" LineChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimitConfiguration" LineChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {categoryItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "CategorySort" LineChartSortConfigurationProperty where
  type PropertyType "CategorySort" LineChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimitConfiguration" LineChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimitConfiguration" LineChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {colorItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesLimitConfiguration" LineChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesLimitConfiguration" LineChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {smallMultiplesLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesSort" LineChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesSort" LineChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {smallMultiplesSort = Prelude.pure newValue, ..}