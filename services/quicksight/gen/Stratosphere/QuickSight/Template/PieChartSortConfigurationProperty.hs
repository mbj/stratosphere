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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html>
    PieChartSortConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-categoryitemslimit>
                                       categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-categorysort>
                                       categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-smallmultipleslimitconfiguration>
                                       smallMultiplesLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-smallmultiplessort>
                                       smallMultiplesSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPieChartSortConfigurationProperty ::
  PieChartSortConfigurationProperty
mkPieChartSortConfigurationProperty
  = PieChartSortConfigurationProperty
      {haddock_workaround_ = (), categoryItemsLimit = Prelude.Nothing,
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