module Stratosphere.AIOps.InvestigationGroup (
        module Exports, InvestigationGroup(..), mkInvestigationGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AIOps.InvestigationGroup.ChatbotNotificationChannelProperty as Exports
import {-# SOURCE #-} Stratosphere.AIOps.InvestigationGroup.CrossAccountConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AIOps.InvestigationGroup.EncryptionConfigMapProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InvestigationGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html>
    InvestigationGroup {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-chatbotnotificationchannels>
                        chatbotNotificationChannels :: (Prelude.Maybe [ChatbotNotificationChannelProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-crossaccountconfigurations>
                        crossAccountConfigurations :: (Prelude.Maybe [CrossAccountConfigurationProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-encryptionconfig>
                        encryptionConfig :: (Prelude.Maybe EncryptionConfigMapProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-investigationgrouppolicy>
                        investigationGroupPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-iscloudtraileventhistoryenabled>
                        isCloudTrailEventHistoryEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-retentionindays>
                        retentionInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-rolearn>
                        roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-tagkeyboundaries>
                        tagKeyBoundaries :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aiops-investigationgroup.html#cfn-aiops-investigationgroup-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInvestigationGroup :: Value Prelude.Text -> InvestigationGroup
mkInvestigationGroup name
  = InvestigationGroup
      {haddock_workaround_ = (), name = name,
       chatbotNotificationChannels = Prelude.Nothing,
       crossAccountConfigurations = Prelude.Nothing,
       encryptionConfig = Prelude.Nothing,
       investigationGroupPolicy = Prelude.Nothing,
       isCloudTrailEventHistoryEnabled = Prelude.Nothing,
       retentionInDays = Prelude.Nothing, roleArn = Prelude.Nothing,
       tagKeyBoundaries = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties InvestigationGroup where
  toResourceProperties InvestigationGroup {..}
    = ResourceProperties
        {awsType = "AWS::AIOps::InvestigationGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ChatbotNotificationChannels"
                                 Prelude.<$> chatbotNotificationChannels,
                               (JSON..=) "CrossAccountConfigurations"
                                 Prelude.<$> crossAccountConfigurations,
                               (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                               (JSON..=) "InvestigationGroupPolicy"
                                 Prelude.<$> investigationGroupPolicy,
                               (JSON..=) "IsCloudTrailEventHistoryEnabled"
                                 Prelude.<$> isCloudTrailEventHistoryEnabled,
                               (JSON..=) "RetentionInDays" Prelude.<$> retentionInDays,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "TagKeyBoundaries" Prelude.<$> tagKeyBoundaries,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InvestigationGroup where
  toJSON InvestigationGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ChatbotNotificationChannels"
                    Prelude.<$> chatbotNotificationChannels,
                  (JSON..=) "CrossAccountConfigurations"
                    Prelude.<$> crossAccountConfigurations,
                  (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                  (JSON..=) "InvestigationGroupPolicy"
                    Prelude.<$> investigationGroupPolicy,
                  (JSON..=) "IsCloudTrailEventHistoryEnabled"
                    Prelude.<$> isCloudTrailEventHistoryEnabled,
                  (JSON..=) "RetentionInDays" Prelude.<$> retentionInDays,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "TagKeyBoundaries" Prelude.<$> tagKeyBoundaries,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChatbotNotificationChannels" InvestigationGroup where
  type PropertyType "ChatbotNotificationChannels" InvestigationGroup = [ChatbotNotificationChannelProperty]
  set newValue InvestigationGroup {..}
    = InvestigationGroup
        {chatbotNotificationChannels = Prelude.pure newValue, ..}
instance Property "CrossAccountConfigurations" InvestigationGroup where
  type PropertyType "CrossAccountConfigurations" InvestigationGroup = [CrossAccountConfigurationProperty]
  set newValue InvestigationGroup {..}
    = InvestigationGroup
        {crossAccountConfigurations = Prelude.pure newValue, ..}
instance Property "EncryptionConfig" InvestigationGroup where
  type PropertyType "EncryptionConfig" InvestigationGroup = EncryptionConfigMapProperty
  set newValue InvestigationGroup {..}
    = InvestigationGroup {encryptionConfig = Prelude.pure newValue, ..}
instance Property "InvestigationGroupPolicy" InvestigationGroup where
  type PropertyType "InvestigationGroupPolicy" InvestigationGroup = Value Prelude.Text
  set newValue InvestigationGroup {..}
    = InvestigationGroup
        {investigationGroupPolicy = Prelude.pure newValue, ..}
instance Property "IsCloudTrailEventHistoryEnabled" InvestigationGroup where
  type PropertyType "IsCloudTrailEventHistoryEnabled" InvestigationGroup = Value Prelude.Bool
  set newValue InvestigationGroup {..}
    = InvestigationGroup
        {isCloudTrailEventHistoryEnabled = Prelude.pure newValue, ..}
instance Property "Name" InvestigationGroup where
  type PropertyType "Name" InvestigationGroup = Value Prelude.Text
  set newValue InvestigationGroup {..}
    = InvestigationGroup {name = newValue, ..}
instance Property "RetentionInDays" InvestigationGroup where
  type PropertyType "RetentionInDays" InvestigationGroup = Value Prelude.Integer
  set newValue InvestigationGroup {..}
    = InvestigationGroup {retentionInDays = Prelude.pure newValue, ..}
instance Property "RoleArn" InvestigationGroup where
  type PropertyType "RoleArn" InvestigationGroup = Value Prelude.Text
  set newValue InvestigationGroup {..}
    = InvestigationGroup {roleArn = Prelude.pure newValue, ..}
instance Property "TagKeyBoundaries" InvestigationGroup where
  type PropertyType "TagKeyBoundaries" InvestigationGroup = ValueList Prelude.Text
  set newValue InvestigationGroup {..}
    = InvestigationGroup {tagKeyBoundaries = Prelude.pure newValue, ..}
instance Property "Tags" InvestigationGroup where
  type PropertyType "Tags" InvestigationGroup = [Tag]
  set newValue InvestigationGroup {..}
    = InvestigationGroup {tags = Prelude.pure newValue, ..}