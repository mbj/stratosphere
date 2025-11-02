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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html>
    TopicRulePayloadProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-actions>
                              actions :: [ActionProperty],
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-awsiotsqlversion>
                              awsIotSqlVersion :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-erroraction>
                              errorAction :: (Prelude.Maybe ActionProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-ruledisabled>
                              ruleDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-sql>
                              sql :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicRulePayloadProperty ::
  [ActionProperty] -> Value Prelude.Text -> TopicRulePayloadProperty
mkTopicRulePayloadProperty actions sql
  = TopicRulePayloadProperty
      {haddock_workaround_ = (), actions = actions, sql = sql,
       awsIotSqlVersion = Prelude.Nothing, description = Prelude.Nothing,
       errorAction = Prelude.Nothing, ruleDisabled = Prelude.Nothing}
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