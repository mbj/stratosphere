module Stratosphere.Scheduler.Schedule.PlacementStrategyProperty (
        PlacementStrategyProperty(..), mkPlacementStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementStrategyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-placementstrategy.html>
    PlacementStrategyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-placementstrategy.html#cfn-scheduler-schedule-placementstrategy-field>
                               field :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-placementstrategy.html#cfn-scheduler-schedule-placementstrategy-type>
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementStrategyProperty :: PlacementStrategyProperty
mkPlacementStrategyProperty
  = PlacementStrategyProperty
      {field = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties PlacementStrategyProperty where
  toResourceProperties PlacementStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.PlacementStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON PlacementStrategyProperty where
  toJSON PlacementStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Field" Prelude.<$> field,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Field" PlacementStrategyProperty where
  type PropertyType "Field" PlacementStrategyProperty = Value Prelude.Text
  set newValue PlacementStrategyProperty {..}
    = PlacementStrategyProperty {field = Prelude.pure newValue, ..}
instance Property "Type" PlacementStrategyProperty where
  type PropertyType "Type" PlacementStrategyProperty = Value Prelude.Text
  set newValue PlacementStrategyProperty {..}
    = PlacementStrategyProperty {type' = Prelude.pure newValue, ..}