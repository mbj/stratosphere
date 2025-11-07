module Stratosphere.QuickSight.Analysis.PluginVisualTableQuerySortProperty (
        module Exports, PluginVisualTableQuerySortProperty(..),
        mkPluginVisualTableQuerySortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PluginVisualItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PluginVisualTableQuerySortProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualtablequerysort.html>
    PluginVisualTableQuerySortProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualtablequerysort.html#cfn-quicksight-analysis-pluginvisualtablequerysort-itemslimitconfiguration>
                                        itemsLimitConfiguration :: (Prelude.Maybe PluginVisualItemsLimitConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualtablequerysort.html#cfn-quicksight-analysis-pluginvisualtablequerysort-rowsort>
                                        rowSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualTableQuerySortProperty ::
  PluginVisualTableQuerySortProperty
mkPluginVisualTableQuerySortProperty
  = PluginVisualTableQuerySortProperty
      {haddock_workaround_ = (),
       itemsLimitConfiguration = Prelude.Nothing,
       rowSort = Prelude.Nothing}
instance ToResourceProperties PluginVisualTableQuerySortProperty where
  toResourceProperties PluginVisualTableQuerySortProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PluginVisualTableQuerySort",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ItemsLimitConfiguration"
                              Prelude.<$> itemsLimitConfiguration,
                            (JSON..=) "RowSort" Prelude.<$> rowSort])}
instance JSON.ToJSON PluginVisualTableQuerySortProperty where
  toJSON PluginVisualTableQuerySortProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ItemsLimitConfiguration"
                 Prelude.<$> itemsLimitConfiguration,
               (JSON..=) "RowSort" Prelude.<$> rowSort]))
instance Property "ItemsLimitConfiguration" PluginVisualTableQuerySortProperty where
  type PropertyType "ItemsLimitConfiguration" PluginVisualTableQuerySortProperty = PluginVisualItemsLimitConfigurationProperty
  set newValue PluginVisualTableQuerySortProperty {..}
    = PluginVisualTableQuerySortProperty
        {itemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "RowSort" PluginVisualTableQuerySortProperty where
  type PropertyType "RowSort" PluginVisualTableQuerySortProperty = [FieldSortOptionsProperty]
  set newValue PluginVisualTableQuerySortProperty {..}
    = PluginVisualTableQuerySortProperty
        {rowSort = Prelude.pure newValue, ..}