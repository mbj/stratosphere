module Stratosphere.Events.Rule (
        module Exports, Rule(..), mkRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Rule.TargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Rule
  = Rule {description :: (Prelude.Maybe (Value Prelude.Text)),
          eventBusName :: (Prelude.Maybe (Value Prelude.Text)),
          eventPattern :: (Prelude.Maybe JSON.Object),
          name :: (Prelude.Maybe (Value Prelude.Text)),
          roleArn :: (Prelude.Maybe (Value Prelude.Text)),
          scheduleExpression :: (Prelude.Maybe (Value Prelude.Text)),
          state :: (Prelude.Maybe (Value Prelude.Text)),
          targets :: (Prelude.Maybe [TargetProperty])}
mkRule :: Rule
mkRule
  = Rule
      {description = Prelude.Nothing, eventBusName = Prelude.Nothing,
       eventPattern = Prelude.Nothing, name = Prelude.Nothing,
       roleArn = Prelude.Nothing, scheduleExpression = Prelude.Nothing,
       state = Prelude.Nothing, targets = Prelude.Nothing}
instance ToResourceProperties Rule where
  toResourceProperties Rule {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "EventBusName" Prelude.<$> eventBusName,
                            (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Targets" Prelude.<$> targets])}
instance JSON.ToJSON Rule where
  toJSON Rule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "EventBusName" Prelude.<$> eventBusName,
               (JSON..=) "EventPattern" Prelude.<$> eventPattern,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Targets" Prelude.<$> targets]))
instance Property "Description" Rule where
  type PropertyType "Description" Rule = Value Prelude.Text
  set newValue Rule {..}
    = Rule {description = Prelude.pure newValue, ..}
instance Property "EventBusName" Rule where
  type PropertyType "EventBusName" Rule = Value Prelude.Text
  set newValue Rule {..}
    = Rule {eventBusName = Prelude.pure newValue, ..}
instance Property "EventPattern" Rule where
  type PropertyType "EventPattern" Rule = JSON.Object
  set newValue Rule {..}
    = Rule {eventPattern = Prelude.pure newValue, ..}
instance Property "Name" Rule where
  type PropertyType "Name" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {name = Prelude.pure newValue, ..}
instance Property "RoleArn" Rule where
  type PropertyType "RoleArn" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {roleArn = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" Rule where
  type PropertyType "ScheduleExpression" Rule = Value Prelude.Text
  set newValue Rule {..}
    = Rule {scheduleExpression = Prelude.pure newValue, ..}
instance Property "State" Rule where
  type PropertyType "State" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {state = Prelude.pure newValue, ..}
instance Property "Targets" Rule where
  type PropertyType "Targets" Rule = [TargetProperty]
  set newValue Rule {..} = Rule {targets = Prelude.pure newValue, ..}