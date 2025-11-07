module Stratosphere.QuickSight.Dashboard.BodySectionDynamicNumericDimensionConfigurationProperty (
        module Exports,
        BodySectionDynamicNumericDimensionConfigurationProperty(..),
        mkBodySectionDynamicNumericDimensionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnSortProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodySectionDynamicNumericDimensionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration.html>
    BodySectionDynamicNumericDimensionConfigurationProperty {haddock_workaround_ :: (),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration.html#cfn-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration-column>
                                                             column :: ColumnIdentifierProperty,
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration.html#cfn-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration-limit>
                                                             limit :: (Prelude.Maybe (Value Prelude.Double)),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration.html#cfn-quicksight-dashboard-bodysectiondynamicnumericdimensionconfiguration-sortbymetrics>
                                                             sortByMetrics :: (Prelude.Maybe [ColumnSortProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionDynamicNumericDimensionConfigurationProperty ::
  ColumnIdentifierProperty
  -> BodySectionDynamicNumericDimensionConfigurationProperty
mkBodySectionDynamicNumericDimensionConfigurationProperty column
  = BodySectionDynamicNumericDimensionConfigurationProperty
      {haddock_workaround_ = (), column = column,
       limit = Prelude.Nothing, sortByMetrics = Prelude.Nothing}
instance ToResourceProperties BodySectionDynamicNumericDimensionConfigurationProperty where
  toResourceProperties
    BodySectionDynamicNumericDimensionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BodySectionDynamicNumericDimensionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column]
                           (Prelude.catMaybes
                              [(JSON..=) "Limit" Prelude.<$> limit,
                               (JSON..=) "SortByMetrics" Prelude.<$> sortByMetrics]))}
instance JSON.ToJSON BodySectionDynamicNumericDimensionConfigurationProperty where
  toJSON BodySectionDynamicNumericDimensionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column]
              (Prelude.catMaybes
                 [(JSON..=) "Limit" Prelude.<$> limit,
                  (JSON..=) "SortByMetrics" Prelude.<$> sortByMetrics])))
instance Property "Column" BodySectionDynamicNumericDimensionConfigurationProperty where
  type PropertyType "Column" BodySectionDynamicNumericDimensionConfigurationProperty = ColumnIdentifierProperty
  set
    newValue
    BodySectionDynamicNumericDimensionConfigurationProperty {..}
    = BodySectionDynamicNumericDimensionConfigurationProperty
        {column = newValue, ..}
instance Property "Limit" BodySectionDynamicNumericDimensionConfigurationProperty where
  type PropertyType "Limit" BodySectionDynamicNumericDimensionConfigurationProperty = Value Prelude.Double
  set
    newValue
    BodySectionDynamicNumericDimensionConfigurationProperty {..}
    = BodySectionDynamicNumericDimensionConfigurationProperty
        {limit = Prelude.pure newValue, ..}
instance Property "SortByMetrics" BodySectionDynamicNumericDimensionConfigurationProperty where
  type PropertyType "SortByMetrics" BodySectionDynamicNumericDimensionConfigurationProperty = [ColumnSortProperty]
  set
    newValue
    BodySectionDynamicNumericDimensionConfigurationProperty {..}
    = BodySectionDynamicNumericDimensionConfigurationProperty
        {sortByMetrics = Prelude.pure newValue, ..}