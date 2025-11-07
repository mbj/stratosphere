module Stratosphere.QuickSight.Analysis.PercentileAggregationProperty (
        PercentileAggregationProperty(..), mkPercentileAggregationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PercentileAggregationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-percentileaggregation.html>
    PercentileAggregationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-percentileaggregation.html#cfn-quicksight-analysis-percentileaggregation-percentilevalue>
                                   percentileValue :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPercentileAggregationProperty :: PercentileAggregationProperty
mkPercentileAggregationProperty
  = PercentileAggregationProperty
      {haddock_workaround_ = (), percentileValue = Prelude.Nothing}
instance ToResourceProperties PercentileAggregationProperty where
  toResourceProperties PercentileAggregationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PercentileAggregation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PercentileValue" Prelude.<$> percentileValue])}
instance JSON.ToJSON PercentileAggregationProperty where
  toJSON PercentileAggregationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PercentileValue" Prelude.<$> percentileValue]))
instance Property "PercentileValue" PercentileAggregationProperty where
  type PropertyType "PercentileValue" PercentileAggregationProperty = Value Prelude.Double
  set newValue PercentileAggregationProperty {..}
    = PercentileAggregationProperty
        {percentileValue = Prelude.pure newValue, ..}