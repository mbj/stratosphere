module Stratosphere.QuickSight.Analysis.NumericEqualityFilterProperty (
        module Exports, NumericEqualityFilterProperty(..),
        mkNumericEqualityFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultFilterControlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericEqualityFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html>
    NumericEqualityFilterProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-aggregationfunction>
                                   aggregationFunction :: (Prelude.Maybe AggregationFunctionProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-column>
                                   column :: ColumnIdentifierProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-defaultfiltercontrolconfiguration>
                                   defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-filterid>
                                   filterId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-matchoperator>
                                   matchOperator :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-nulloption>
                                   nullOption :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-parametername>
                                   parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-selectalloptions>
                                   selectAllOptions :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericequalityfilter.html#cfn-quicksight-analysis-numericequalityfilter-value>
                                   value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericEqualityFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> NumericEqualityFilterProperty
mkNumericEqualityFilterProperty
  column
  filterId
  matchOperator
  nullOption
  = NumericEqualityFilterProperty
      {haddock_workaround_ = (), column = column, filterId = filterId,
       matchOperator = matchOperator, nullOption = nullOption,
       aggregationFunction = Prelude.Nothing,
       defaultFilterControlConfiguration = Prelude.Nothing,
       parameterName = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties NumericEqualityFilterProperty where
  toResourceProperties NumericEqualityFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumericEqualityFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId,
                            "MatchOperator" JSON..= matchOperator,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                               (JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON NumericEqualityFilterProperty where
  toJSON NumericEqualityFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FilterId" JSON..= filterId,
               "MatchOperator" JSON..= matchOperator,
               "NullOption" JSON..= nullOption]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                  (JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "AggregationFunction" NumericEqualityFilterProperty where
  type PropertyType "AggregationFunction" NumericEqualityFilterProperty = AggregationFunctionProperty
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" NumericEqualityFilterProperty where
  type PropertyType "Column" NumericEqualityFilterProperty = ColumnIdentifierProperty
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {column = newValue, ..}
instance Property "DefaultFilterControlConfiguration" NumericEqualityFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" NumericEqualityFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}
instance Property "FilterId" NumericEqualityFilterProperty where
  type PropertyType "FilterId" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {filterId = newValue, ..}
instance Property "MatchOperator" NumericEqualityFilterProperty where
  type PropertyType "MatchOperator" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {matchOperator = newValue, ..}
instance Property "NullOption" NumericEqualityFilterProperty where
  type PropertyType "NullOption" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {nullOption = newValue, ..}
instance Property "ParameterName" NumericEqualityFilterProperty where
  type PropertyType "ParameterName" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" NumericEqualityFilterProperty where
  type PropertyType "SelectAllOptions" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {selectAllOptions = Prelude.pure newValue, ..}
instance Property "Value" NumericEqualityFilterProperty where
  type PropertyType "Value" NumericEqualityFilterProperty = Value Prelude.Double
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {value = Prelude.pure newValue, ..}