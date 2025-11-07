module Stratosphere.QuickSight.Analysis.AggregationFunctionProperty (
        module Exports, AggregationFunctionProperty(..),
        mkAggregationFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AttributeAggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericalAggregationFunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationFunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-aggregationfunction.html>
    AggregationFunctionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-aggregationfunction.html#cfn-quicksight-analysis-aggregationfunction-attributeaggregationfunction>
                                 attributeAggregationFunction :: (Prelude.Maybe AttributeAggregationFunctionProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-aggregationfunction.html#cfn-quicksight-analysis-aggregationfunction-categoricalaggregationfunction>
                                 categoricalAggregationFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-aggregationfunction.html#cfn-quicksight-analysis-aggregationfunction-dateaggregationfunction>
                                 dateAggregationFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-aggregationfunction.html#cfn-quicksight-analysis-aggregationfunction-numericalaggregationfunction>
                                 numericalAggregationFunction :: (Prelude.Maybe NumericalAggregationFunctionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationFunctionProperty :: AggregationFunctionProperty
mkAggregationFunctionProperty
  = AggregationFunctionProperty
      {haddock_workaround_ = (),
       attributeAggregationFunction = Prelude.Nothing,
       categoricalAggregationFunction = Prelude.Nothing,
       dateAggregationFunction = Prelude.Nothing,
       numericalAggregationFunction = Prelude.Nothing}
instance ToResourceProperties AggregationFunctionProperty where
  toResourceProperties AggregationFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AggregationFunction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributeAggregationFunction"
                              Prelude.<$> attributeAggregationFunction,
                            (JSON..=) "CategoricalAggregationFunction"
                              Prelude.<$> categoricalAggregationFunction,
                            (JSON..=) "DateAggregationFunction"
                              Prelude.<$> dateAggregationFunction,
                            (JSON..=) "NumericalAggregationFunction"
                              Prelude.<$> numericalAggregationFunction])}
instance JSON.ToJSON AggregationFunctionProperty where
  toJSON AggregationFunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributeAggregationFunction"
                 Prelude.<$> attributeAggregationFunction,
               (JSON..=) "CategoricalAggregationFunction"
                 Prelude.<$> categoricalAggregationFunction,
               (JSON..=) "DateAggregationFunction"
                 Prelude.<$> dateAggregationFunction,
               (JSON..=) "NumericalAggregationFunction"
                 Prelude.<$> numericalAggregationFunction]))
instance Property "AttributeAggregationFunction" AggregationFunctionProperty where
  type PropertyType "AttributeAggregationFunction" AggregationFunctionProperty = AttributeAggregationFunctionProperty
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {attributeAggregationFunction = Prelude.pure newValue, ..}
instance Property "CategoricalAggregationFunction" AggregationFunctionProperty where
  type PropertyType "CategoricalAggregationFunction" AggregationFunctionProperty = Value Prelude.Text
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {categoricalAggregationFunction = Prelude.pure newValue, ..}
instance Property "DateAggregationFunction" AggregationFunctionProperty where
  type PropertyType "DateAggregationFunction" AggregationFunctionProperty = Value Prelude.Text
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {dateAggregationFunction = Prelude.pure newValue, ..}
instance Property "NumericalAggregationFunction" AggregationFunctionProperty where
  type PropertyType "NumericalAggregationFunction" AggregationFunctionProperty = NumericalAggregationFunctionProperty
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {numericalAggregationFunction = Prelude.pure newValue, ..}