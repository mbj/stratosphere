module Stratosphere.QuickSight.Analysis.BoxPlotSortConfigurationProperty (
        module Exports, BoxPlotSortConfigurationProperty(..),
        mkBoxPlotSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PaginationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotsortconfiguration.html>
    BoxPlotSortConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotsortconfiguration.html#cfn-quicksight-analysis-boxplotsortconfiguration-categorysort>
                                      categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotsortconfiguration.html#cfn-quicksight-analysis-boxplotsortconfiguration-paginationconfiguration>
                                      paginationConfiguration :: (Prelude.Maybe PaginationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotSortConfigurationProperty ::
  BoxPlotSortConfigurationProperty
mkBoxPlotSortConfigurationProperty
  = BoxPlotSortConfigurationProperty
      {haddock_workaround_ = (), categorySort = Prelude.Nothing,
       paginationConfiguration = Prelude.Nothing}
instance ToResourceProperties BoxPlotSortConfigurationProperty where
  toResourceProperties BoxPlotSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BoxPlotSortConfiguration",
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