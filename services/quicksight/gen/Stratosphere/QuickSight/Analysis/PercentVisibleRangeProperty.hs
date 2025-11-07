module Stratosphere.QuickSight.Analysis.PercentVisibleRangeProperty (
        PercentVisibleRangeProperty(..), mkPercentVisibleRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PercentVisibleRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-percentvisiblerange.html>
    PercentVisibleRangeProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-percentvisiblerange.html#cfn-quicksight-analysis-percentvisiblerange-from>
                                 from :: (Prelude.Maybe (Value Prelude.Double)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-percentvisiblerange.html#cfn-quicksight-analysis-percentvisiblerange-to>
                                 to :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPercentVisibleRangeProperty :: PercentVisibleRangeProperty
mkPercentVisibleRangeProperty
  = PercentVisibleRangeProperty
      {haddock_workaround_ = (), from = Prelude.Nothing,
       to = Prelude.Nothing}
instance ToResourceProperties PercentVisibleRangeProperty where
  toResourceProperties PercentVisibleRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PercentVisibleRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "From" Prelude.<$> from,
                            (JSON..=) "To" Prelude.<$> to])}
instance JSON.ToJSON PercentVisibleRangeProperty where
  toJSON PercentVisibleRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "From" Prelude.<$> from,
               (JSON..=) "To" Prelude.<$> to]))
instance Property "From" PercentVisibleRangeProperty where
  type PropertyType "From" PercentVisibleRangeProperty = Value Prelude.Double
  set newValue PercentVisibleRangeProperty {..}
    = PercentVisibleRangeProperty {from = Prelude.pure newValue, ..}
instance Property "To" PercentVisibleRangeProperty where
  type PropertyType "To" PercentVisibleRangeProperty = Value Prelude.Double
  set newValue PercentVisibleRangeProperty {..}
    = PercentVisibleRangeProperty {to = Prelude.pure newValue, ..}