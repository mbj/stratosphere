module Stratosphere.QuickSight.Dashboard.BodySectionDynamicCategoryDimensionConfigurationProperty (
        module Exports,
        BodySectionDynamicCategoryDimensionConfigurationProperty(..),
        mkBodySectionDynamicCategoryDimensionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnSortProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodySectionDynamicCategoryDimensionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration.html>
    BodySectionDynamicCategoryDimensionConfigurationProperty {haddock_workaround_ :: (),
                                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration.html#cfn-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration-column>
                                                              column :: ColumnIdentifierProperty,
                                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration.html#cfn-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration-limit>
                                                              limit :: (Prelude.Maybe (Value Prelude.Double)),
                                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration.html#cfn-quicksight-dashboard-bodysectiondynamiccategorydimensionconfiguration-sortbymetrics>
                                                              sortByMetrics :: (Prelude.Maybe [ColumnSortProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionDynamicCategoryDimensionConfigurationProperty ::
  ColumnIdentifierProperty
  -> BodySectionDynamicCategoryDimensionConfigurationProperty
mkBodySectionDynamicCategoryDimensionConfigurationProperty column
  = BodySectionDynamicCategoryDimensionConfigurationProperty
      {haddock_workaround_ = (), column = column,
       limit = Prelude.Nothing, sortByMetrics = Prelude.Nothing}
instance ToResourceProperties BodySectionDynamicCategoryDimensionConfigurationProperty where
  toResourceProperties
    BodySectionDynamicCategoryDimensionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BodySectionDynamicCategoryDimensionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column]
                           (Prelude.catMaybes
                              [(JSON..=) "Limit" Prelude.<$> limit,
                               (JSON..=) "SortByMetrics" Prelude.<$> sortByMetrics]))}
instance JSON.ToJSON BodySectionDynamicCategoryDimensionConfigurationProperty where
  toJSON
    BodySectionDynamicCategoryDimensionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column]
              (Prelude.catMaybes
                 [(JSON..=) "Limit" Prelude.<$> limit,
                  (JSON..=) "SortByMetrics" Prelude.<$> sortByMetrics])))
instance Property "Column" BodySectionDynamicCategoryDimensionConfigurationProperty where
  type PropertyType "Column" BodySectionDynamicCategoryDimensionConfigurationProperty = ColumnIdentifierProperty
  set
    newValue
    BodySectionDynamicCategoryDimensionConfigurationProperty {..}
    = BodySectionDynamicCategoryDimensionConfigurationProperty
        {column = newValue, ..}
instance Property "Limit" BodySectionDynamicCategoryDimensionConfigurationProperty where
  type PropertyType "Limit" BodySectionDynamicCategoryDimensionConfigurationProperty = Value Prelude.Double
  set
    newValue
    BodySectionDynamicCategoryDimensionConfigurationProperty {..}
    = BodySectionDynamicCategoryDimensionConfigurationProperty
        {limit = Prelude.pure newValue, ..}
instance Property "SortByMetrics" BodySectionDynamicCategoryDimensionConfigurationProperty where
  type PropertyType "SortByMetrics" BodySectionDynamicCategoryDimensionConfigurationProperty = [ColumnSortProperty]
  set
    newValue
    BodySectionDynamicCategoryDimensionConfigurationProperty {..}
    = BodySectionDynamicCategoryDimensionConfigurationProperty
        {sortByMetrics = Prelude.pure newValue, ..}