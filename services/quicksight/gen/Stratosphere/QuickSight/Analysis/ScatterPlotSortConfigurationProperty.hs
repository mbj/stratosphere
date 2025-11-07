module Stratosphere.QuickSight.Analysis.ScatterPlotSortConfigurationProperty (
        module Exports, ScatterPlotSortConfigurationProperty(..),
        mkScatterPlotSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotsortconfiguration.html>
    ScatterPlotSortConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotsortconfiguration.html#cfn-quicksight-analysis-scatterplotsortconfiguration-scatterplotlimitconfiguration>
                                          scatterPlotLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotSortConfigurationProperty ::
  ScatterPlotSortConfigurationProperty
mkScatterPlotSortConfigurationProperty
  = ScatterPlotSortConfigurationProperty
      {haddock_workaround_ = (),
       scatterPlotLimitConfiguration = Prelude.Nothing}
instance ToResourceProperties ScatterPlotSortConfigurationProperty where
  toResourceProperties ScatterPlotSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ScatterPlotSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScatterPlotLimitConfiguration"
                              Prelude.<$> scatterPlotLimitConfiguration])}
instance JSON.ToJSON ScatterPlotSortConfigurationProperty where
  toJSON ScatterPlotSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScatterPlotLimitConfiguration"
                 Prelude.<$> scatterPlotLimitConfiguration]))
instance Property "ScatterPlotLimitConfiguration" ScatterPlotSortConfigurationProperty where
  type PropertyType "ScatterPlotLimitConfiguration" ScatterPlotSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue ScatterPlotSortConfigurationProperty {..}
    = ScatterPlotSortConfigurationProperty
        {scatterPlotLimitConfiguration = Prelude.pure newValue, ..}