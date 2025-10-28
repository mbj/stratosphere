module Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleAggregationProperty (
        module Exports, AnalysisRuleAggregationProperty(..),
        mkAnalysisRuleAggregationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AggregateColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AggregationConstraintProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRuleAggregationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html>
    AnalysisRuleAggregationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-additionalanalyses>
                                     additionalAnalyses :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-aggregatecolumns>
                                     aggregateColumns :: [AggregateColumnProperty],
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-allowedjoinoperators>
                                     allowedJoinOperators :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-dimensioncolumns>
                                     dimensionColumns :: (ValueList Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-joincolumns>
                                     joinColumns :: (ValueList Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-joinrequired>
                                     joinRequired :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-outputconstraints>
                                     outputConstraints :: [AggregationConstraintProperty],
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-analysisruleaggregation.html#cfn-cleanrooms-configuredtable-analysisruleaggregation-scalarfunctions>
                                     scalarFunctions :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleAggregationProperty ::
  [AggregateColumnProperty]
  -> ValueList Prelude.Text
     -> ValueList Prelude.Text
        -> [AggregationConstraintProperty]
           -> ValueList Prelude.Text -> AnalysisRuleAggregationProperty
mkAnalysisRuleAggregationProperty
  aggregateColumns
  dimensionColumns
  joinColumns
  outputConstraints
  scalarFunctions
  = AnalysisRuleAggregationProperty
      {haddock_workaround_ = (), aggregateColumns = aggregateColumns,
       dimensionColumns = dimensionColumns, joinColumns = joinColumns,
       outputConstraints = outputConstraints,
       scalarFunctions = scalarFunctions,
       additionalAnalyses = Prelude.Nothing,
       allowedJoinOperators = Prelude.Nothing,
       joinRequired = Prelude.Nothing}
instance ToResourceProperties AnalysisRuleAggregationProperty where
  toResourceProperties AnalysisRuleAggregationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AnalysisRuleAggregation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AggregateColumns" JSON..= aggregateColumns,
                            "DimensionColumns" JSON..= dimensionColumns,
                            "JoinColumns" JSON..= joinColumns,
                            "OutputConstraints" JSON..= outputConstraints,
                            "ScalarFunctions" JSON..= scalarFunctions]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalAnalyses" Prelude.<$> additionalAnalyses,
                               (JSON..=) "AllowedJoinOperators" Prelude.<$> allowedJoinOperators,
                               (JSON..=) "JoinRequired" Prelude.<$> joinRequired]))}
instance JSON.ToJSON AnalysisRuleAggregationProperty where
  toJSON AnalysisRuleAggregationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AggregateColumns" JSON..= aggregateColumns,
               "DimensionColumns" JSON..= dimensionColumns,
               "JoinColumns" JSON..= joinColumns,
               "OutputConstraints" JSON..= outputConstraints,
               "ScalarFunctions" JSON..= scalarFunctions]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalAnalyses" Prelude.<$> additionalAnalyses,
                  (JSON..=) "AllowedJoinOperators" Prelude.<$> allowedJoinOperators,
                  (JSON..=) "JoinRequired" Prelude.<$> joinRequired])))
instance Property "AdditionalAnalyses" AnalysisRuleAggregationProperty where
  type PropertyType "AdditionalAnalyses" AnalysisRuleAggregationProperty = Value Prelude.Text
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty
        {additionalAnalyses = Prelude.pure newValue, ..}
instance Property "AggregateColumns" AnalysisRuleAggregationProperty where
  type PropertyType "AggregateColumns" AnalysisRuleAggregationProperty = [AggregateColumnProperty]
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty {aggregateColumns = newValue, ..}
instance Property "AllowedJoinOperators" AnalysisRuleAggregationProperty where
  type PropertyType "AllowedJoinOperators" AnalysisRuleAggregationProperty = ValueList Prelude.Text
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty
        {allowedJoinOperators = Prelude.pure newValue, ..}
instance Property "DimensionColumns" AnalysisRuleAggregationProperty where
  type PropertyType "DimensionColumns" AnalysisRuleAggregationProperty = ValueList Prelude.Text
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty {dimensionColumns = newValue, ..}
instance Property "JoinColumns" AnalysisRuleAggregationProperty where
  type PropertyType "JoinColumns" AnalysisRuleAggregationProperty = ValueList Prelude.Text
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty {joinColumns = newValue, ..}
instance Property "JoinRequired" AnalysisRuleAggregationProperty where
  type PropertyType "JoinRequired" AnalysisRuleAggregationProperty = Value Prelude.Text
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty
        {joinRequired = Prelude.pure newValue, ..}
instance Property "OutputConstraints" AnalysisRuleAggregationProperty where
  type PropertyType "OutputConstraints" AnalysisRuleAggregationProperty = [AggregationConstraintProperty]
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty
        {outputConstraints = newValue, ..}
instance Property "ScalarFunctions" AnalysisRuleAggregationProperty where
  type PropertyType "ScalarFunctions" AnalysisRuleAggregationProperty = ValueList Prelude.Text
  set newValue AnalysisRuleAggregationProperty {..}
    = AnalysisRuleAggregationProperty {scalarFunctions = newValue, ..}