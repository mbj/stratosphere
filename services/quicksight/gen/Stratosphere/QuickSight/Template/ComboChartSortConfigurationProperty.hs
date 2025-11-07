module Stratosphere.QuickSight.Template.ComboChartSortConfigurationProperty (
        module Exports, ComboChartSortConfigurationProperty(..),
        mkComboChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ComboChartSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartsortconfiguration.html>
    ComboChartSortConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartsortconfiguration.html#cfn-quicksight-template-combochartsortconfiguration-categoryitemslimit>
                                         categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartsortconfiguration.html#cfn-quicksight-template-combochartsortconfiguration-categorysort>
                                         categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartsortconfiguration.html#cfn-quicksight-template-combochartsortconfiguration-coloritemslimit>
                                         colorItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartsortconfiguration.html#cfn-quicksight-template-combochartsortconfiguration-colorsort>
                                         colorSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComboChartSortConfigurationProperty ::
  ComboChartSortConfigurationProperty
mkComboChartSortConfigurationProperty
  = ComboChartSortConfigurationProperty
      {haddock_workaround_ = (), categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing, colorItemsLimit = Prelude.Nothing,
       colorSort = Prelude.Nothing}
instance ToResourceProperties ComboChartSortConfigurationProperty where
  toResourceProperties ComboChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ComboChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
                            (JSON..=) "ColorSort" Prelude.<$> colorSort])}
instance JSON.ToJSON ComboChartSortConfigurationProperty where
  toJSON ComboChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
               (JSON..=) "ColorSort" Prelude.<$> colorSort]))
instance Property "CategoryItemsLimit" ComboChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" ComboChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" ComboChartSortConfigurationProperty where
  type PropertyType "CategorySort" ComboChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimit" ComboChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimit" ComboChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {colorItemsLimit = Prelude.pure newValue, ..}
instance Property "ColorSort" ComboChartSortConfigurationProperty where
  type PropertyType "ColorSort" ComboChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {colorSort = Prelude.pure newValue, ..}