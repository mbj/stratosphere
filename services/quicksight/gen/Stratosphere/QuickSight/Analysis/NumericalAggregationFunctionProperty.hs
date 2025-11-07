module Stratosphere.QuickSight.Analysis.NumericalAggregationFunctionProperty (
        module Exports, NumericalAggregationFunctionProperty(..),
        mkNumericalAggregationFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PercentileAggregationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericalAggregationFunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalaggregationfunction.html>
    NumericalAggregationFunctionProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalaggregationfunction.html#cfn-quicksight-analysis-numericalaggregationfunction-percentileaggregation>
                                          percentileAggregation :: (Prelude.Maybe PercentileAggregationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalaggregationfunction.html#cfn-quicksight-analysis-numericalaggregationfunction-simplenumericalaggregation>
                                          simpleNumericalAggregation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericalAggregationFunctionProperty ::
  NumericalAggregationFunctionProperty
mkNumericalAggregationFunctionProperty
  = NumericalAggregationFunctionProperty
      {haddock_workaround_ = (), percentileAggregation = Prelude.Nothing,
       simpleNumericalAggregation = Prelude.Nothing}
instance ToResourceProperties NumericalAggregationFunctionProperty where
  toResourceProperties NumericalAggregationFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumericalAggregationFunction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PercentileAggregation"
                              Prelude.<$> percentileAggregation,
                            (JSON..=) "SimpleNumericalAggregation"
                              Prelude.<$> simpleNumericalAggregation])}
instance JSON.ToJSON NumericalAggregationFunctionProperty where
  toJSON NumericalAggregationFunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PercentileAggregation"
                 Prelude.<$> percentileAggregation,
               (JSON..=) "SimpleNumericalAggregation"
                 Prelude.<$> simpleNumericalAggregation]))
instance Property "PercentileAggregation" NumericalAggregationFunctionProperty where
  type PropertyType "PercentileAggregation" NumericalAggregationFunctionProperty = PercentileAggregationProperty
  set newValue NumericalAggregationFunctionProperty {..}
    = NumericalAggregationFunctionProperty
        {percentileAggregation = Prelude.pure newValue, ..}
instance Property "SimpleNumericalAggregation" NumericalAggregationFunctionProperty where
  type PropertyType "SimpleNumericalAggregation" NumericalAggregationFunctionProperty = Value Prelude.Text
  set newValue NumericalAggregationFunctionProperty {..}
    = NumericalAggregationFunctionProperty
        {simpleNumericalAggregation = Prelude.pure newValue, ..}