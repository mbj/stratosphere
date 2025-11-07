module Stratosphere.QuickSight.Dashboard.TotalAggregationFunctionProperty (
        TotalAggregationFunctionProperty(..),
        mkTotalAggregationFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalAggregationFunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-totalaggregationfunction.html>
    TotalAggregationFunctionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-totalaggregationfunction.html#cfn-quicksight-dashboard-totalaggregationfunction-simpletotalaggregationfunction>
                                      simpleTotalAggregationFunction :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalAggregationFunctionProperty ::
  TotalAggregationFunctionProperty
mkTotalAggregationFunctionProperty
  = TotalAggregationFunctionProperty
      {haddock_workaround_ = (),
       simpleTotalAggregationFunction = Prelude.Nothing}
instance ToResourceProperties TotalAggregationFunctionProperty where
  toResourceProperties TotalAggregationFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TotalAggregationFunction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SimpleTotalAggregationFunction"
                              Prelude.<$> simpleTotalAggregationFunction])}
instance JSON.ToJSON TotalAggregationFunctionProperty where
  toJSON TotalAggregationFunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SimpleTotalAggregationFunction"
                 Prelude.<$> simpleTotalAggregationFunction]))
instance Property "SimpleTotalAggregationFunction" TotalAggregationFunctionProperty where
  type PropertyType "SimpleTotalAggregationFunction" TotalAggregationFunctionProperty = Value Prelude.Text
  set newValue TotalAggregationFunctionProperty {..}
    = TotalAggregationFunctionProperty
        {simpleTotalAggregationFunction = Prelude.pure newValue, ..}