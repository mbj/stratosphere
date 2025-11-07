module Stratosphere.QuickSight.Template.WaterfallChartSortConfigurationProperty (
        module Exports, WaterfallChartSortConfigurationProperty(..),
        mkWaterfallChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartsortconfiguration.html>
    WaterfallChartSortConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartsortconfiguration.html#cfn-quicksight-template-waterfallchartsortconfiguration-breakdownitemslimit>
                                             breakdownItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartsortconfiguration.html#cfn-quicksight-template-waterfallchartsortconfiguration-categorysort>
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
        {awsType = "AWS::QuickSight::Template.WaterfallChartSortConfiguration",
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