module Stratosphere.Pinpoint.Campaign.CampaignSmsMessageProperty (
        CampaignSmsMessageProperty(..), mkCampaignSmsMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignSmsMessageProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html>
    CampaignSmsMessageProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-body>
                                body :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-entityid>
                                entityId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-messagetype>
                                messageType :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-originationnumber>
                                originationNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-senderid>
                                senderId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-templateid>
                                templateId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaignSmsMessageProperty :: CampaignSmsMessageProperty
mkCampaignSmsMessageProperty
  = CampaignSmsMessageProperty
      {body = Prelude.Nothing, entityId = Prelude.Nothing,
       messageType = Prelude.Nothing, originationNumber = Prelude.Nothing,
       senderId = Prelude.Nothing, templateId = Prelude.Nothing}
instance ToResourceProperties CampaignSmsMessageProperty where
  toResourceProperties CampaignSmsMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.CampaignSmsMessage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "EntityId" Prelude.<$> entityId,
                            (JSON..=) "MessageType" Prelude.<$> messageType,
                            (JSON..=) "OriginationNumber" Prelude.<$> originationNumber,
                            (JSON..=) "SenderId" Prelude.<$> senderId,
                            (JSON..=) "TemplateId" Prelude.<$> templateId])}
instance JSON.ToJSON CampaignSmsMessageProperty where
  toJSON CampaignSmsMessageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "EntityId" Prelude.<$> entityId,
               (JSON..=) "MessageType" Prelude.<$> messageType,
               (JSON..=) "OriginationNumber" Prelude.<$> originationNumber,
               (JSON..=) "SenderId" Prelude.<$> senderId,
               (JSON..=) "TemplateId" Prelude.<$> templateId]))
instance Property "Body" CampaignSmsMessageProperty where
  type PropertyType "Body" CampaignSmsMessageProperty = Value Prelude.Text
  set newValue CampaignSmsMessageProperty {..}
    = CampaignSmsMessageProperty {body = Prelude.pure newValue, ..}
instance Property "EntityId" CampaignSmsMessageProperty where
  type PropertyType "EntityId" CampaignSmsMessageProperty = Value Prelude.Text
  set newValue CampaignSmsMessageProperty {..}
    = CampaignSmsMessageProperty {entityId = Prelude.pure newValue, ..}
instance Property "MessageType" CampaignSmsMessageProperty where
  type PropertyType "MessageType" CampaignSmsMessageProperty = Value Prelude.Text
  set newValue CampaignSmsMessageProperty {..}
    = CampaignSmsMessageProperty
        {messageType = Prelude.pure newValue, ..}
instance Property "OriginationNumber" CampaignSmsMessageProperty where
  type PropertyType "OriginationNumber" CampaignSmsMessageProperty = Value Prelude.Text
  set newValue CampaignSmsMessageProperty {..}
    = CampaignSmsMessageProperty
        {originationNumber = Prelude.pure newValue, ..}
instance Property "SenderId" CampaignSmsMessageProperty where
  type PropertyType "SenderId" CampaignSmsMessageProperty = Value Prelude.Text
  set newValue CampaignSmsMessageProperty {..}
    = CampaignSmsMessageProperty {senderId = Prelude.pure newValue, ..}
instance Property "TemplateId" CampaignSmsMessageProperty where
  type PropertyType "TemplateId" CampaignSmsMessageProperty = Value Prelude.Text
  set newValue CampaignSmsMessageProperty {..}
    = CampaignSmsMessageProperty
        {templateId = Prelude.pure newValue, ..}