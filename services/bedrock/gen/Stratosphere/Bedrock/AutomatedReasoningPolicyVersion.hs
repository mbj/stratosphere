module Stratosphere.Bedrock.AutomatedReasoningPolicyVersion (
        AutomatedReasoningPolicyVersion(..),
        mkAutomatedReasoningPolicyVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AutomatedReasoningPolicyVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicyversion.html>
    AutomatedReasoningPolicyVersion {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicyversion.html#cfn-bedrock-automatedreasoningpolicyversion-lastupdateddefinitionhash>
                                     lastUpdatedDefinitionHash :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicyversion.html#cfn-bedrock-automatedreasoningpolicyversion-policyarn>
                                     policyArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-automatedreasoningpolicyversion.html#cfn-bedrock-automatedreasoningpolicyversion-tags>
                                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomatedReasoningPolicyVersion ::
  Value Prelude.Text -> AutomatedReasoningPolicyVersion
mkAutomatedReasoningPolicyVersion policyArn
  = AutomatedReasoningPolicyVersion
      {haddock_workaround_ = (), policyArn = policyArn,
       lastUpdatedDefinitionHash = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AutomatedReasoningPolicyVersion where
  toResourceProperties AutomatedReasoningPolicyVersion {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AutomatedReasoningPolicyVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyArn" JSON..= policyArn]
                           (Prelude.catMaybes
                              [(JSON..=) "LastUpdatedDefinitionHash"
                                 Prelude.<$> lastUpdatedDefinitionHash,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AutomatedReasoningPolicyVersion where
  toJSON AutomatedReasoningPolicyVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyArn" JSON..= policyArn]
              (Prelude.catMaybes
                 [(JSON..=) "LastUpdatedDefinitionHash"
                    Prelude.<$> lastUpdatedDefinitionHash,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LastUpdatedDefinitionHash" AutomatedReasoningPolicyVersion where
  type PropertyType "LastUpdatedDefinitionHash" AutomatedReasoningPolicyVersion = Value Prelude.Text
  set newValue AutomatedReasoningPolicyVersion {..}
    = AutomatedReasoningPolicyVersion
        {lastUpdatedDefinitionHash = Prelude.pure newValue, ..}
instance Property "PolicyArn" AutomatedReasoningPolicyVersion where
  type PropertyType "PolicyArn" AutomatedReasoningPolicyVersion = Value Prelude.Text
  set newValue AutomatedReasoningPolicyVersion {..}
    = AutomatedReasoningPolicyVersion {policyArn = newValue, ..}
instance Property "Tags" AutomatedReasoningPolicyVersion where
  type PropertyType "Tags" AutomatedReasoningPolicyVersion = [Tag]
  set newValue AutomatedReasoningPolicyVersion {..}
    = AutomatedReasoningPolicyVersion
        {tags = Prelude.pure newValue, ..}