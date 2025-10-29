module Stratosphere.Connect.Rule (
        module Exports, Rule(..), mkRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.ActionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.RuleTriggerEventSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Rule
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html>
    Rule {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-actions>
          actions :: ActionsProperty,
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-function>
          function :: (Value Prelude.Text),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-instancearn>
          instanceArn :: (Value Prelude.Text),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-name>
          name :: (Value Prelude.Text),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-publishstatus>
          publishStatus :: (Value Prelude.Text),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-rule.html#cfn-connect-rule-triggereventsource>
          triggerEventSource :: RuleTriggerEventSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRule ::
  ActionsProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> RuleTriggerEventSourceProperty -> Rule
mkRule
  actions
  function
  instanceArn
  name
  publishStatus
  triggerEventSource
  = Rule
      {actions = actions, function = function, instanceArn = instanceArn,
       name = name, publishStatus = publishStatus,
       triggerEventSource = triggerEventSource, tags = Prelude.Nothing}
instance ToResourceProperties Rule where
  toResourceProperties Rule {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Function" JSON..= function,
                            "InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
                            "PublishStatus" JSON..= publishStatus,
                            "TriggerEventSource" JSON..= triggerEventSource]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Rule where
  toJSON Rule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Function" JSON..= function,
               "InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
               "PublishStatus" JSON..= publishStatus,
               "TriggerEventSource" JSON..= triggerEventSource]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Actions" Rule where
  type PropertyType "Actions" Rule = ActionsProperty
  set newValue Rule {..} = Rule {actions = newValue, ..}
instance Property "Function" Rule where
  type PropertyType "Function" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {function = newValue, ..}
instance Property "InstanceArn" Rule where
  type PropertyType "InstanceArn" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {instanceArn = newValue, ..}
instance Property "Name" Rule where
  type PropertyType "Name" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {name = newValue, ..}
instance Property "PublishStatus" Rule where
  type PropertyType "PublishStatus" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {publishStatus = newValue, ..}
instance Property "Tags" Rule where
  type PropertyType "Tags" Rule = [Tag]
  set newValue Rule {..} = Rule {tags = Prelude.pure newValue, ..}
instance Property "TriggerEventSource" Rule where
  type PropertyType "TriggerEventSource" Rule = RuleTriggerEventSourceProperty
  set newValue Rule {..} = Rule {triggerEventSource = newValue, ..}