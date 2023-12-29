module Stratosphere.QuickSight.Template.RadarChartSortConfigurationProperty (
        module Exports, RadarChartSortConfigurationProperty(..),
        mkRadarChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartSortConfigurationProperty
  = RadarChartSortConfigurationProperty {categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                         colorItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         colorSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartSortConfigurationProperty ::
  RadarChartSortConfigurationProperty
mkRadarChartSortConfigurationProperty
  = RadarChartSortConfigurationProperty
      {categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing, colorItemsLimit = Prelude.Nothing,
       colorSort = Prelude.Nothing}
instance ToResourceProperties RadarChartSortConfigurationProperty where
  toResourceProperties RadarChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RadarChartSortConfiguration",
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