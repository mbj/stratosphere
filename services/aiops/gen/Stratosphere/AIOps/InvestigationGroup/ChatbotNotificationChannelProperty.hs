module Stratosphere.AIOps.InvestigationGroup.ChatbotNotificationChannelProperty (
        ChatbotNotificationChannelProperty(..),
        mkChatbotNotificationChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChatbotNotificationChannelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-chatbotnotificationchannel.html>
    ChatbotNotificationChannelProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-chatbotnotificationchannel.html#cfn-aiops-investigationgroup-chatbotnotificationchannel-chatconfigurationarns>
                                        chatConfigurationArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-chatbotnotificationchannel.html#cfn-aiops-investigationgroup-chatbotnotificationchannel-snstopicarn>
                                        sNSTopicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChatbotNotificationChannelProperty ::
  ChatbotNotificationChannelProperty
mkChatbotNotificationChannelProperty
  = ChatbotNotificationChannelProperty
      {haddock_workaround_ = (), chatConfigurationArns = Prelude.Nothing,
       sNSTopicArn = Prelude.Nothing}
instance ToResourceProperties ChatbotNotificationChannelProperty where
  toResourceProperties ChatbotNotificationChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::AIOps::InvestigationGroup.ChatbotNotificationChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChatConfigurationArns"
                              Prelude.<$> chatConfigurationArns,
                            (JSON..=) "SNSTopicArn" Prelude.<$> sNSTopicArn])}
instance JSON.ToJSON ChatbotNotificationChannelProperty where
  toJSON ChatbotNotificationChannelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChatConfigurationArns"
                 Prelude.<$> chatConfigurationArns,
               (JSON..=) "SNSTopicArn" Prelude.<$> sNSTopicArn]))
instance Property "ChatConfigurationArns" ChatbotNotificationChannelProperty where
  type PropertyType "ChatConfigurationArns" ChatbotNotificationChannelProperty = ValueList Prelude.Text
  set newValue ChatbotNotificationChannelProperty {..}
    = ChatbotNotificationChannelProperty
        {chatConfigurationArns = Prelude.pure newValue, ..}
instance Property "SNSTopicArn" ChatbotNotificationChannelProperty where
  type PropertyType "SNSTopicArn" ChatbotNotificationChannelProperty = Value Prelude.Text
  set newValue ChatbotNotificationChannelProperty {..}
    = ChatbotNotificationChannelProperty
        {sNSTopicArn = Prelude.pure newValue, ..}