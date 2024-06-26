module Stratosphere.QuickSight.Template.PieChartSortConfigurationProperty (
        module Exports, PieChartSortConfigurationProperty(..),
        mkPieChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PieChartSortConfigurationProperty
  = PieChartSortConfigurationProperty {categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                       smallMultiplesLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       smallMultiplesSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPieChartSortConfigurationProperty ::
  PieChartSortConfigurationProperty
mkPieChartSortConfigurationProperty
  = PieChartSortConfigurationProperty
      {categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing,
       smallMultiplesLimitConfiguration = Prelude.Nothing,
       smallMultiplesSort = Prelude.Nothing}
instance ToResourceProperties PieChartSortConfigurationProperty where
  toResourceProperties PieChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PieChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "SmallMultiplesLimitConfiguration"
                              Prelude.<$> smallMultiplesLimitConfiguration,
                            (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort])}
instance JSON.ToJSON PieChartSortConfigurationProperty where
  toJSON PieChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "SmallMultiplesLimitConfiguration"
                 Prelude.<$> smallMultiplesLimitConfiguration,
               (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort]))
instance Property "CategoryItemsLimit" PieChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" PieChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue PieChartSortConfigurationProperty {..}
    = PieChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" PieChartSortConfigurationProperty where
  type PropertyType "CategorySort" PieChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue PieChartSortConfigurationProperty {..}
    = PieChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "SmallMultiplesLimitConfiguration" PieChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesLimitConfiguration" PieChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue PieChartSortConfigurationProperty {..}
    = PieChartSortConfigurationProperty
        {smallMultiplesLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesSort" PieChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesSort" PieChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue PieChartSortConfigurationProperty {..}
    = PieChartSortConfigurationProperty
        {smallMultiplesSort = Prelude.pure newValue, ..}