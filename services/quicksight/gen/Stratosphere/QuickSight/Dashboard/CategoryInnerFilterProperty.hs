module Stratosphere.QuickSight.Dashboard.CategoryInnerFilterProperty (
        module Exports, CategoryInnerFilterProperty(..),
        mkCategoryInnerFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CategoryFilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DefaultFilterControlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CategoryInnerFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryinnerfilter.html>
    CategoryInnerFilterProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryinnerfilter.html#cfn-quicksight-dashboard-categoryinnerfilter-column>
                                 column :: ColumnIdentifierProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryinnerfilter.html#cfn-quicksight-dashboard-categoryinnerfilter-configuration>
                                 configuration :: CategoryFilterConfigurationProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryinnerfilter.html#cfn-quicksight-dashboard-categoryinnerfilter-defaultfiltercontrolconfiguration>
                                 defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCategoryInnerFilterProperty ::
  ColumnIdentifierProperty
  -> CategoryFilterConfigurationProperty
     -> CategoryInnerFilterProperty
mkCategoryInnerFilterProperty column configuration
  = CategoryInnerFilterProperty
      {haddock_workaround_ = (), column = column,
       configuration = configuration,
       defaultFilterControlConfiguration = Prelude.Nothing}
instance ToResourceProperties CategoryInnerFilterProperty where
  toResourceProperties CategoryInnerFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CategoryInnerFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "Configuration" JSON..= configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration]))}
instance JSON.ToJSON CategoryInnerFilterProperty where
  toJSON CategoryInnerFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "Configuration" JSON..= configuration]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration])))
instance Property "Column" CategoryInnerFilterProperty where
  type PropertyType "Column" CategoryInnerFilterProperty = ColumnIdentifierProperty
  set newValue CategoryInnerFilterProperty {..}
    = CategoryInnerFilterProperty {column = newValue, ..}
instance Property "Configuration" CategoryInnerFilterProperty where
  type PropertyType "Configuration" CategoryInnerFilterProperty = CategoryFilterConfigurationProperty
  set newValue CategoryInnerFilterProperty {..}
    = CategoryInnerFilterProperty {configuration = newValue, ..}
instance Property "DefaultFilterControlConfiguration" CategoryInnerFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" CategoryInnerFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue CategoryInnerFilterProperty {..}
    = CategoryInnerFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}