module Stratosphere.QuickSight.Template.CategoryFilterConfigurationProperty (
        module Exports, CategoryFilterConfigurationProperty(..),
        mkCategoryFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomFilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomFilterListConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterListConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CategoryFilterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryfilterconfiguration.html>
    CategoryFilterConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryfilterconfiguration.html#cfn-quicksight-template-categoryfilterconfiguration-customfilterconfiguration>
                                         customFilterConfiguration :: (Prelude.Maybe CustomFilterConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryfilterconfiguration.html#cfn-quicksight-template-categoryfilterconfiguration-customfilterlistconfiguration>
                                         customFilterListConfiguration :: (Prelude.Maybe CustomFilterListConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryfilterconfiguration.html#cfn-quicksight-template-categoryfilterconfiguration-filterlistconfiguration>
                                         filterListConfiguration :: (Prelude.Maybe FilterListConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCategoryFilterConfigurationProperty ::
  CategoryFilterConfigurationProperty
mkCategoryFilterConfigurationProperty
  = CategoryFilterConfigurationProperty
      {haddock_workaround_ = (),
       customFilterConfiguration = Prelude.Nothing,
       customFilterListConfiguration = Prelude.Nothing,
       filterListConfiguration = Prelude.Nothing}
instance ToResourceProperties CategoryFilterConfigurationProperty where
  toResourceProperties CategoryFilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CategoryFilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomFilterConfiguration"
                              Prelude.<$> customFilterConfiguration,
                            (JSON..=) "CustomFilterListConfiguration"
                              Prelude.<$> customFilterListConfiguration,
                            (JSON..=) "FilterListConfiguration"
                              Prelude.<$> filterListConfiguration])}
instance JSON.ToJSON CategoryFilterConfigurationProperty where
  toJSON CategoryFilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomFilterConfiguration"
                 Prelude.<$> customFilterConfiguration,
               (JSON..=) "CustomFilterListConfiguration"
                 Prelude.<$> customFilterListConfiguration,
               (JSON..=) "FilterListConfiguration"
                 Prelude.<$> filterListConfiguration]))
instance Property "CustomFilterConfiguration" CategoryFilterConfigurationProperty where
  type PropertyType "CustomFilterConfiguration" CategoryFilterConfigurationProperty = CustomFilterConfigurationProperty
  set newValue CategoryFilterConfigurationProperty {..}
    = CategoryFilterConfigurationProperty
        {customFilterConfiguration = Prelude.pure newValue, ..}
instance Property "CustomFilterListConfiguration" CategoryFilterConfigurationProperty where
  type PropertyType "CustomFilterListConfiguration" CategoryFilterConfigurationProperty = CustomFilterListConfigurationProperty
  set newValue CategoryFilterConfigurationProperty {..}
    = CategoryFilterConfigurationProperty
        {customFilterListConfiguration = Prelude.pure newValue, ..}
instance Property "FilterListConfiguration" CategoryFilterConfigurationProperty where
  type PropertyType "FilterListConfiguration" CategoryFilterConfigurationProperty = FilterListConfigurationProperty
  set newValue CategoryFilterConfigurationProperty {..}
    = CategoryFilterConfigurationProperty
        {filterListConfiguration = Prelude.pure newValue, ..}