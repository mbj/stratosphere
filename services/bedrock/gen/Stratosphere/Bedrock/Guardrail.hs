module Stratosphere.Bedrock.Guardrail (
        module Exports, Guardrail(..), mkGuardrail
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.ContentPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.ContextualGroundingPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.SensitiveInformationPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.TopicPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.WordPolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Guardrail
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html>
    Guardrail {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-blockedinputmessaging>
               blockedInputMessaging :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-blockedoutputsmessaging>
               blockedOutputsMessaging :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-contentpolicyconfig>
               contentPolicyConfig :: (Prelude.Maybe ContentPolicyConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-contextualgroundingpolicyconfig>
               contextualGroundingPolicyConfig :: (Prelude.Maybe ContextualGroundingPolicyConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-kmskeyarn>
               kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-sensitiveinformationpolicyconfig>
               sensitiveInformationPolicyConfig :: (Prelude.Maybe SensitiveInformationPolicyConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-topicpolicyconfig>
               topicPolicyConfig :: (Prelude.Maybe TopicPolicyConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrail.html#cfn-bedrock-guardrail-wordpolicyconfig>
               wordPolicyConfig :: (Prelude.Maybe WordPolicyConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrail ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Guardrail
mkGuardrail blockedInputMessaging blockedOutputsMessaging name
  = Guardrail
      {haddock_workaround_ = (),
       blockedInputMessaging = blockedInputMessaging,
       blockedOutputsMessaging = blockedOutputsMessaging, name = name,
       contentPolicyConfig = Prelude.Nothing,
       contextualGroundingPolicyConfig = Prelude.Nothing,
       description = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       sensitiveInformationPolicyConfig = Prelude.Nothing,
       tags = Prelude.Nothing, topicPolicyConfig = Prelude.Nothing,
       wordPolicyConfig = Prelude.Nothing}
instance ToResourceProperties Guardrail where
  toResourceProperties Guardrail {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BlockedInputMessaging" JSON..= blockedInputMessaging,
                            "BlockedOutputsMessaging" JSON..= blockedOutputsMessaging,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentPolicyConfig" Prelude.<$> contentPolicyConfig,
                               (JSON..=) "ContextualGroundingPolicyConfig"
                                 Prelude.<$> contextualGroundingPolicyConfig,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "SensitiveInformationPolicyConfig"
                                 Prelude.<$> sensitiveInformationPolicyConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TopicPolicyConfig" Prelude.<$> topicPolicyConfig,
                               (JSON..=) "WordPolicyConfig" Prelude.<$> wordPolicyConfig]))}
instance JSON.ToJSON Guardrail where
  toJSON Guardrail {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BlockedInputMessaging" JSON..= blockedInputMessaging,
               "BlockedOutputsMessaging" JSON..= blockedOutputsMessaging,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ContentPolicyConfig" Prelude.<$> contentPolicyConfig,
                  (JSON..=) "ContextualGroundingPolicyConfig"
                    Prelude.<$> contextualGroundingPolicyConfig,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "SensitiveInformationPolicyConfig"
                    Prelude.<$> sensitiveInformationPolicyConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TopicPolicyConfig" Prelude.<$> topicPolicyConfig,
                  (JSON..=) "WordPolicyConfig" Prelude.<$> wordPolicyConfig])))
instance Property "BlockedInputMessaging" Guardrail where
  type PropertyType "BlockedInputMessaging" Guardrail = Value Prelude.Text
  set newValue Guardrail {..}
    = Guardrail {blockedInputMessaging = newValue, ..}
instance Property "BlockedOutputsMessaging" Guardrail where
  type PropertyType "BlockedOutputsMessaging" Guardrail = Value Prelude.Text
  set newValue Guardrail {..}
    = Guardrail {blockedOutputsMessaging = newValue, ..}
instance Property "ContentPolicyConfig" Guardrail where
  type PropertyType "ContentPolicyConfig" Guardrail = ContentPolicyConfigProperty
  set newValue Guardrail {..}
    = Guardrail {contentPolicyConfig = Prelude.pure newValue, ..}
instance Property "ContextualGroundingPolicyConfig" Guardrail where
  type PropertyType "ContextualGroundingPolicyConfig" Guardrail = ContextualGroundingPolicyConfigProperty
  set newValue Guardrail {..}
    = Guardrail
        {contextualGroundingPolicyConfig = Prelude.pure newValue, ..}
instance Property "Description" Guardrail where
  type PropertyType "Description" Guardrail = Value Prelude.Text
  set newValue Guardrail {..}
    = Guardrail {description = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Guardrail where
  type PropertyType "KmsKeyArn" Guardrail = Value Prelude.Text
  set newValue Guardrail {..}
    = Guardrail {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Name" Guardrail where
  type PropertyType "Name" Guardrail = Value Prelude.Text
  set newValue Guardrail {..} = Guardrail {name = newValue, ..}
instance Property "SensitiveInformationPolicyConfig" Guardrail where
  type PropertyType "SensitiveInformationPolicyConfig" Guardrail = SensitiveInformationPolicyConfigProperty
  set newValue Guardrail {..}
    = Guardrail
        {sensitiveInformationPolicyConfig = Prelude.pure newValue, ..}
instance Property "Tags" Guardrail where
  type PropertyType "Tags" Guardrail = [Tag]
  set newValue Guardrail {..}
    = Guardrail {tags = Prelude.pure newValue, ..}
instance Property "TopicPolicyConfig" Guardrail where
  type PropertyType "TopicPolicyConfig" Guardrail = TopicPolicyConfigProperty
  set newValue Guardrail {..}
    = Guardrail {topicPolicyConfig = Prelude.pure newValue, ..}
instance Property "WordPolicyConfig" Guardrail where
  type PropertyType "WordPolicyConfig" Guardrail = WordPolicyConfigProperty
  set newValue Guardrail {..}
    = Guardrail {wordPolicyConfig = Prelude.pure newValue, ..}