module Stratosphere.QuickSight.Analysis.NumericalMeasureFieldProperty (
        module Exports, NumericalMeasureFieldProperty(..),
        mkNumericalMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumberFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericalAggregationFunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericalMeasureFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html>
    NumericalMeasureFieldProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-aggregationfunction>
                                   aggregationFunction :: (Prelude.Maybe NumericalAggregationFunctionProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-column>
                                   column :: ColumnIdentifierProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-fieldid>
                                   fieldId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-formatconfiguration>
                                   formatConfiguration :: (Prelude.Maybe NumberFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericalMeasureFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> NumericalMeasureFieldProperty
mkNumericalMeasureFieldProperty column fieldId
  = NumericalMeasureFieldProperty
      {haddock_workaround_ = (), column = column, fieldId = fieldId,
       aggregationFunction = Prelude.Nothing,
       formatConfiguration = Prelude.Nothing}
instance ToResourceProperties NumericalMeasureFieldProperty where
  toResourceProperties NumericalMeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumericalMeasureField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                               (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration]))}
instance JSON.ToJSON NumericalMeasureFieldProperty where
  toJSON NumericalMeasureFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                  (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration])))
instance Property "AggregationFunction" NumericalMeasureFieldProperty where
  type PropertyType "AggregationFunction" NumericalMeasureFieldProperty = NumericalAggregationFunctionProperty
  set newValue NumericalMeasureFieldProperty {..}
    = NumericalMeasureFieldProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" NumericalMeasureFieldProperty where
  type PropertyType "Column" NumericalMeasureFieldProperty = ColumnIdentifierProperty
  set newValue NumericalMeasureFieldProperty {..}
    = NumericalMeasureFieldProperty {column = newValue, ..}
instance Property "FieldId" NumericalMeasureFieldProperty where
  type PropertyType "FieldId" NumericalMeasureFieldProperty = Value Prelude.Text
  set newValue NumericalMeasureFieldProperty {..}
    = NumericalMeasureFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" NumericalMeasureFieldProperty where
  type PropertyType "FormatConfiguration" NumericalMeasureFieldProperty = NumberFormatConfigurationProperty
  set newValue NumericalMeasureFieldProperty {..}
    = NumericalMeasureFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}