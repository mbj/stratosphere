module Stratosphere.QuickSight.Analysis.RadarChartSortConfigurationProperty (
        module Exports, RadarChartSortConfigurationProperty(..),
        mkRadarChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartsortconfiguration.html>
    RadarChartSortConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartsortconfiguration.html#cfn-quicksight-analysis-radarchartsortconfiguration-categoryitemslimit>
                                         categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartsortconfiguration.html#cfn-quicksight-analysis-radarchartsortconfiguration-categorysort>
                                         categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartsortconfiguration.html#cfn-quicksight-analysis-radarchartsortconfiguration-coloritemslimit>
                                         colorItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartsortconfiguration.html#cfn-quicksight-analysis-radarchartsortconfiguration-colorsort>
                                         colorSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartSortConfigurationProperty ::
  RadarChartSortConfigurationProperty
mkRadarChartSortConfigurationProperty
  = RadarChartSortConfigurationProperty
      {haddock_workaround_ = (), categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing, colorItemsLimit = Prelude.Nothing,
       colorSort = Prelude.Nothing}
instance ToResourceProperties RadarChartSortConfigurationProperty where
  toResourceProperties RadarChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RadarChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
                            (JSON..=) "ColorSort" Prelude.<$> colorSort])}
instance JSON.ToJSON RadarChartSortConfigurationProperty where
  toJSON RadarChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
               (JSON..=) "ColorSort" Prelude.<$> colorSort]))
instance Property "CategoryItemsLimit" RadarChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" RadarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue RadarChartSortConfigurationProperty {..}
    = RadarChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" RadarChartSortConfigurationProperty where
  type PropertyType "CategorySort" RadarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue RadarChartSortConfigurationProperty {..}
    = RadarChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimit" RadarChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimit" RadarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue RadarChartSortConfigurationProperty {..}
    = RadarChartSortConfigurationProperty
        {colorItemsLimit = Prelude.pure newValue, ..}
instance Property "ColorSort" RadarChartSortConfigurationProperty where
  type PropertyType "ColorSort" RadarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue RadarChartSortConfigurationProperty {..}
    = RadarChartSortConfigurationProperty
        {colorSort = Prelude.pure newValue, ..}