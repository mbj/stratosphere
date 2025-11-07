module Stratosphere.Wisdom.AIGuardrail (
        module Exports, AIGuardrail(..), mkAIGuardrail
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.AIGuardrailContentPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.AIGuardrailContextualGroundingPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.AIGuardrailSensitiveInformationPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.AIGuardrailTopicPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.AIGuardrailWordPolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AIGuardrail
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html>
    AIGuardrail {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-assistantid>
                 assistantId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-blockedinputmessaging>
                 blockedInputMessaging :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-blockedoutputsmessaging>
                 blockedOutputsMessaging :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-contentpolicyconfig>
                 contentPolicyConfig :: (Prelude.Maybe AIGuardrailContentPolicyConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-contextualgroundingpolicyconfig>
                 contextualGroundingPolicyConfig :: (Prelude.Maybe AIGuardrailContextualGroundingPolicyConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-sensitiveinformationpolicyconfig>
                 sensitiveInformationPolicyConfig :: (Prelude.Maybe AIGuardrailSensitiveInformationPolicyConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-tags>
                 tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-topicpolicyconfig>
                 topicPolicyConfig :: (Prelude.Maybe AIGuardrailTopicPolicyConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrail.html#cfn-wisdom-aiguardrail-wordpolicyconfig>
                 wordPolicyConfig :: (Prelude.Maybe AIGuardrailWordPolicyConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrail ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AIGuardrail
mkAIGuardrail
  assistantId
  blockedInputMessaging
  blockedOutputsMessaging
  = AIGuardrail
      {haddock_workaround_ = (), assistantId = assistantId,
       blockedInputMessaging = blockedInputMessaging,
       blockedOutputsMessaging = blockedOutputsMessaging,
       contentPolicyConfig = Prelude.Nothing,
       contextualGroundingPolicyConfig = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       sensitiveInformationPolicyConfig = Prelude.Nothing,
       tags = Prelude.Nothing, topicPolicyConfig = Prelude.Nothing,
       wordPolicyConfig = Prelude.Nothing}
instance ToResourceProperties AIGuardrail where
  toResourceProperties AIGuardrail {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssistantId" JSON..= assistantId,
                            "BlockedInputMessaging" JSON..= blockedInputMessaging,
                            "BlockedOutputsMessaging" JSON..= blockedOutputsMessaging]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentPolicyConfig" Prelude.<$> contentPolicyConfig,
                               (JSON..=) "ContextualGroundingPolicyConfig"
                                 Prelude.<$> contextualGroundingPolicyConfig,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SensitiveInformationPolicyConfig"
                                 Prelude.<$> sensitiveInformationPolicyConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TopicPolicyConfig" Prelude.<$> topicPolicyConfig,
                               (JSON..=) "WordPolicyConfig" Prelude.<$> wordPolicyConfig]))}
instance JSON.ToJSON AIGuardrail where
  toJSON AIGuardrail {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssistantId" JSON..= assistantId,
               "BlockedInputMessaging" JSON..= blockedInputMessaging,
               "BlockedOutputsMessaging" JSON..= blockedOutputsMessaging]
              (Prelude.catMaybes
                 [(JSON..=) "ContentPolicyConfig" Prelude.<$> contentPolicyConfig,
                  (JSON..=) "ContextualGroundingPolicyConfig"
                    Prelude.<$> contextualGroundingPolicyConfig,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SensitiveInformationPolicyConfig"
                    Prelude.<$> sensitiveInformationPolicyConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TopicPolicyConfig" Prelude.<$> topicPolicyConfig,
                  (JSON..=) "WordPolicyConfig" Prelude.<$> wordPolicyConfig])))
instance Property "AssistantId" AIGuardrail where
  type PropertyType "AssistantId" AIGuardrail = Value Prelude.Text
  set newValue AIGuardrail {..}
    = AIGuardrail {assistantId = newValue, ..}
instance Property "BlockedInputMessaging" AIGuardrail where
  type PropertyType "BlockedInputMessaging" AIGuardrail = Value Prelude.Text
  set newValue AIGuardrail {..}
    = AIGuardrail {blockedInputMessaging = newValue, ..}
instance Property "BlockedOutputsMessaging" AIGuardrail where
  type PropertyType "BlockedOutputsMessaging" AIGuardrail = Value Prelude.Text
  set newValue AIGuardrail {..}
    = AIGuardrail {blockedOutputsMessaging = newValue, ..}
instance Property "ContentPolicyConfig" AIGuardrail where
  type PropertyType "ContentPolicyConfig" AIGuardrail = AIGuardrailContentPolicyConfigProperty
  set newValue AIGuardrail {..}
    = AIGuardrail {contentPolicyConfig = Prelude.pure newValue, ..}
instance Property "ContextualGroundingPolicyConfig" AIGuardrail where
  type PropertyType "ContextualGroundingPolicyConfig" AIGuardrail = AIGuardrailContextualGroundingPolicyConfigProperty
  set newValue AIGuardrail {..}
    = AIGuardrail
        {contextualGroundingPolicyConfig = Prelude.pure newValue, ..}
instance Property "Description" AIGuardrail where
  type PropertyType "Description" AIGuardrail = Value Prelude.Text
  set newValue AIGuardrail {..}
    = AIGuardrail {description = Prelude.pure newValue, ..}
instance Property "Name" AIGuardrail where
  type PropertyType "Name" AIGuardrail = Value Prelude.Text
  set newValue AIGuardrail {..}
    = AIGuardrail {name = Prelude.pure newValue, ..}
instance Property "SensitiveInformationPolicyConfig" AIGuardrail where
  type PropertyType "SensitiveInformationPolicyConfig" AIGuardrail = AIGuardrailSensitiveInformationPolicyConfigProperty
  set newValue AIGuardrail {..}
    = AIGuardrail
        {sensitiveInformationPolicyConfig = Prelude.pure newValue, ..}
instance Property "Tags" AIGuardrail where
  type PropertyType "Tags" AIGuardrail = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AIGuardrail {..}
    = AIGuardrail {tags = Prelude.pure newValue, ..}
instance Property "TopicPolicyConfig" AIGuardrail where
  type PropertyType "TopicPolicyConfig" AIGuardrail = AIGuardrailTopicPolicyConfigProperty
  set newValue AIGuardrail {..}
    = AIGuardrail {topicPolicyConfig = Prelude.pure newValue, ..}
instance Property "WordPolicyConfig" AIGuardrail where
  type PropertyType "WordPolicyConfig" AIGuardrail = AIGuardrailWordPolicyConfigProperty
  set newValue AIGuardrail {..}
    = AIGuardrail {wordPolicyConfig = Prelude.pure newValue, ..}