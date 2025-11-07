module Stratosphere.QuickSight.Dashboard.WaterfallChartSortConfigurationProperty (
        module Exports, WaterfallChartSortConfigurationProperty(..),
        mkWaterfallChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartsortconfiguration.html>
    WaterfallChartSortConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartsortconfiguration.html#cfn-quicksight-dashboard-waterfallchartsortconfiguration-breakdownitemslimit>
                                             breakdownItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartsortconfiguration.html#cfn-quicksight-dashboard-waterfallchartsortconfiguration-categorysort>
                                             categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartSortConfigurationProperty ::
  WaterfallChartSortConfigurationProperty
mkWaterfallChartSortConfigurationProperty
  = WaterfallChartSortConfigurationProperty
      {haddock_workaround_ = (), breakdownItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing}
instance ToResourceProperties WaterfallChartSortConfigurationProperty where
  toResourceProperties WaterfallChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WaterfallChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BreakdownItemsLimit" Prelude.<$> breakdownItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON WaterfallChartSortConfigurationProperty where
  toJSON WaterfallChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BreakdownItemsLimit" Prelude.<$> breakdownItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "BreakdownItemsLimit" WaterfallChartSortConfigurationProperty where
  type PropertyType "BreakdownItemsLimit" WaterfallChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue WaterfallChartSortConfigurationProperty {..}
    = WaterfallChartSortConfigurationProperty
        {breakdownItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" WaterfallChartSortConfigurationProperty where
  type PropertyType "CategorySort" WaterfallChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue WaterfallChartSortConfigurationProperty {..}
    = WaterfallChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}