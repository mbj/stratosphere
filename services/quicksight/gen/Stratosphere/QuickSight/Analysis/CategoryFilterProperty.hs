module Stratosphere.QuickSight.Analysis.CategoryFilterProperty (
        module Exports, CategoryFilterProperty(..),
        mkCategoryFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CategoryFilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultFilterControlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CategoryFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilter.html>
    CategoryFilterProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilter.html#cfn-quicksight-analysis-categoryfilter-column>
                            column :: ColumnIdentifierProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilter.html#cfn-quicksight-analysis-categoryfilter-configuration>
                            configuration :: CategoryFilterConfigurationProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilter.html#cfn-quicksight-analysis-categoryfilter-defaultfiltercontrolconfiguration>
                            defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilter.html#cfn-quicksight-analysis-categoryfilter-filterid>
                            filterId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCategoryFilterProperty ::
  ColumnIdentifierProperty
  -> CategoryFilterConfigurationProperty
     -> Value Prelude.Text -> CategoryFilterProperty
mkCategoryFilterProperty column configuration filterId
  = CategoryFilterProperty
      {haddock_workaround_ = (), column = column,
       configuration = configuration, filterId = filterId,
       defaultFilterControlConfiguration = Prelude.Nothing}
instance ToResourceProperties CategoryFilterProperty where
  toResourceProperties CategoryFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CategoryFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "Configuration" JSON..= configuration,
                            "FilterId" JSON..= filterId]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration]))}
instance JSON.ToJSON CategoryFilterProperty where
  toJSON CategoryFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "Configuration" JSON..= configuration,
               "FilterId" JSON..= filterId]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration])))
instance Property "Column" CategoryFilterProperty where
  type PropertyType "Column" CategoryFilterProperty = ColumnIdentifierProperty
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty {column = newValue, ..}
instance Property "Configuration" CategoryFilterProperty where
  type PropertyType "Configuration" CategoryFilterProperty = CategoryFilterConfigurationProperty
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty {configuration = newValue, ..}
instance Property "DefaultFilterControlConfiguration" CategoryFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" CategoryFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}
instance Property "FilterId" CategoryFilterProperty where
  type PropertyType "FilterId" CategoryFilterProperty = Value Prelude.Text
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty {filterId = newValue, ..}