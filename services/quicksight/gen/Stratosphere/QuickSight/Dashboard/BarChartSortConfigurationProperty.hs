module Stratosphere.QuickSight.Dashboard.BarChartSortConfigurationProperty (
        module Exports, BarChartSortConfigurationProperty(..),
        mkBarChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BarChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html>
    BarChartSortConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html#cfn-quicksight-dashboard-barchartsortconfiguration-categoryitemslimit>
                                       categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html#cfn-quicksight-dashboard-barchartsortconfiguration-categorysort>
                                       categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html#cfn-quicksight-dashboard-barchartsortconfiguration-coloritemslimit>
                                       colorItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html#cfn-quicksight-dashboard-barchartsortconfiguration-colorsort>
                                       colorSort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html#cfn-quicksight-dashboard-barchartsortconfiguration-smallmultipleslimitconfiguration>
                                       smallMultiplesLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartsortconfiguration.html#cfn-quicksight-dashboard-barchartsortconfiguration-smallmultiplessort>
                                       smallMultiplesSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartSortConfigurationProperty ::
  BarChartSortConfigurationProperty
mkBarChartSortConfigurationProperty
  = BarChartSortConfigurationProperty
      {haddock_workaround_ = (), categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing, colorItemsLimit = Prelude.Nothing,
       colorSort = Prelude.Nothing,
       smallMultiplesLimitConfiguration = Prelude.Nothing,
       smallMultiplesSort = Prelude.Nothing}
instance ToResourceProperties BarChartSortConfigurationProperty where
  toResourceProperties BarChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BarChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
                            (JSON..=) "ColorSort" Prelude.<$> colorSort,
                            (JSON..=) "SmallMultiplesLimitConfiguration"
                              Prelude.<$> smallMultiplesLimitConfiguration,
                            (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort])}
instance JSON.ToJSON BarChartSortConfigurationProperty where
  toJSON BarChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
               (JSON..=) "ColorSort" Prelude.<$> colorSort,
               (JSON..=) "SmallMultiplesLimitConfiguration"
                 Prelude.<$> smallMultiplesLimitConfiguration,
               (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort]))
instance Property "CategoryItemsLimit" BarChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" BarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" BarChartSortConfigurationProperty where
  type PropertyType "CategorySort" BarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimit" BarChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimit" BarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {colorItemsLimit = Prelude.pure newValue, ..}
instance Property "ColorSort" BarChartSortConfigurationProperty where
  type PropertyType "ColorSort" BarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {colorSort = Prelude.pure newValue, ..}
instance Property "SmallMultiplesLimitConfiguration" BarChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesLimitConfiguration" BarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {smallMultiplesLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesSort" BarChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesSort" BarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {smallMultiplesSort = Prelude.pure newValue, ..}