module Stratosphere.ApplicationSignals.ServiceLevelObjective.GoalProperty (
        module Exports, GoalProperty(..), mkGoalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.IntervalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GoalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-goal.html>
    GoalProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-goal.html#cfn-applicationsignals-servicelevelobjective-goal-attainmentgoal>
                  attainmentGoal :: (Prelude.Maybe (Value Prelude.Double)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-goal.html#cfn-applicationsignals-servicelevelobjective-goal-interval>
                  interval :: (Prelude.Maybe IntervalProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-goal.html#cfn-applicationsignals-servicelevelobjective-goal-warningthreshold>
                  warningThreshold :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGoalProperty :: GoalProperty
mkGoalProperty
  = GoalProperty
      {haddock_workaround_ = (), attainmentGoal = Prelude.Nothing,
       interval = Prelude.Nothing, warningThreshold = Prelude.Nothing}
instance ToResourceProperties GoalProperty where
  toResourceProperties GoalProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.Goal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttainmentGoal" Prelude.<$> attainmentGoal,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "WarningThreshold" Prelude.<$> warningThreshold])}
instance JSON.ToJSON GoalProperty where
  toJSON GoalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttainmentGoal" Prelude.<$> attainmentGoal,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "WarningThreshold" Prelude.<$> warningThreshold]))
instance Property "AttainmentGoal" GoalProperty where
  type PropertyType "AttainmentGoal" GoalProperty = Value Prelude.Double
  set newValue GoalProperty {..}
    = GoalProperty {attainmentGoal = Prelude.pure newValue, ..}
instance Property "Interval" GoalProperty where
  type PropertyType "Interval" GoalProperty = IntervalProperty
  set newValue GoalProperty {..}
    = GoalProperty {interval = Prelude.pure newValue, ..}
instance Property "WarningThreshold" GoalProperty where
  type PropertyType "WarningThreshold" GoalProperty = Value Prelude.Double
  set newValue GoalProperty {..}
    = GoalProperty {warningThreshold = Prelude.pure newValue, ..}