module Stratosphere.IoT.TopicRule.TopicRulePayloadProperty (
        module Exports, TopicRulePayloadProperty(..),
        mkTopicRulePayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicRulePayloadProperty
  = TopicRulePayloadProperty {actions :: [ActionProperty],
                              awsIotSqlVersion :: (Prelude.Maybe (Value Prelude.Text)),
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              errorAction :: (Prelude.Maybe ActionProperty),
                              ruleDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              sql :: (Value Prelude.Text)}
mkTopicRulePayloadProperty ::
  [ActionProperty] -> Value Prelude.Text -> TopicRulePayloadProperty
mkTopicRulePayloadProperty actions sql
  = TopicRulePayloadProperty
      {actions = actions, sql = sql, awsIotSqlVersion = Prelude.Nothing,
       description = Prelude.Nothing, errorAction = Prelude.Nothing,
       ruleDisabled = Prelude.Nothing}
instance ToResourceProperties TopicRulePayloadProperty where
  toResourceProperties TopicRulePayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.TopicRulePayload",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Sql" JSON..= sql]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsIotSqlVersion" Prelude.<$> awsIotSqlVersion,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ErrorAction" Prelude.<$> errorAction,
                               (JSON..=) "RuleDisabled" Prelude.<$> ruleDisabled]))}
instance JSON.ToJSON TopicRulePayloadProperty where
  toJSON TopicRulePayloadProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Sql" JSON..= sql]
              (Prelude.catMaybes
                 [(JSON..=) "AwsIotSqlVersion" Prelude.<$> awsIotSqlVersion,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ErrorAction" Prelude.<$> errorAction,
                  (JSON..=) "RuleDisabled" Prelude.<$> ruleDisabled])))
instance Property "Actions" TopicRulePayloadProperty where
  type PropertyType "Actions" TopicRulePayloadProperty = [ActionProperty]
  set newValue TopicRulePayloadProperty {..}
    = TopicRulePayloadProperty {actions = newValue, ..}
instance Property "AwsIotSqlVersion" TopicRulePayloadProperty where
  type PropertyType "AwsIotSqlVersion" TopicRulePayloadProperty = Value Prelude.Text
  set newValue TopicRulePayloadProperty {..}
    = TopicRulePayloadProperty
        {awsIotSqlVersion = Prelude.pure newValue, ..}
instance Property "Description" TopicRulePayloadProperty where
  type PropertyType "Description" TopicRulePayloadProperty = Value Prelude.Text
  set newValue TopicRulePayloadProperty {..}
    = TopicRulePayloadProperty
        {description = Prelude.pure newValue, ..}
instance Property "ErrorAction" TopicRulePayloadProperty where
  type PropertyType "ErrorAction" TopicRulePayloadProperty = ActionProperty
  set newValue TopicRulePayloadProperty {..}
    = TopicRulePayloadProperty
        {errorAction = Prelude.pure newValue, ..}
instance Property "RuleDisabled" TopicRulePayloadProperty where
  type PropertyType "RuleDisabled" TopicRulePayloadProperty = Value Prelude.Bool
  set newValue TopicRulePayloadProperty {..}
    = TopicRulePayloadProperty
        {ruleDisabled = Prelude.pure newValue, ..}
instance Property "Sql" TopicRulePayloadProperty where
  type PropertyType "Sql" TopicRulePayloadProperty = Value Prelude.Text
  set newValue TopicRulePayloadProperty {..}
    = TopicRulePayloadProperty {sql = newValue, ..}