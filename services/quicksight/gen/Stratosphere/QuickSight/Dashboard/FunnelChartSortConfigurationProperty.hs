module Stratosphere.QuickSight.Dashboard.FunnelChartSortConfigurationProperty (
        module Exports, FunnelChartSortConfigurationProperty(..),
        mkFunnelChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartsortconfiguration.html>
    FunnelChartSortConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartsortconfiguration.html#cfn-quicksight-dashboard-funnelchartsortconfiguration-categoryitemslimit>
                                          categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartsortconfiguration.html#cfn-quicksight-dashboard-funnelchartsortconfiguration-categorysort>
                                          categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartSortConfigurationProperty ::
  FunnelChartSortConfigurationProperty
mkFunnelChartSortConfigurationProperty
  = FunnelChartSortConfigurationProperty
      {haddock_workaround_ = (), categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing}
instance ToResourceProperties FunnelChartSortConfigurationProperty where
  toResourceProperties FunnelChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FunnelChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON FunnelChartSortConfigurationProperty where
  toJSON FunnelChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "CategoryItemsLimit" FunnelChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" FunnelChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue FunnelChartSortConfigurationProperty {..}
    = FunnelChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" FunnelChartSortConfigurationProperty where
  type PropertyType "CategorySort" FunnelChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue FunnelChartSortConfigurationProperty {..}
    = FunnelChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}