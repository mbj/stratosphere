module Stratosphere.Pinpoint.Campaign.CampaignSmsMessageProperty (
        CampaignSmsMessageProperty(..), mkCampaignSmsMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignSmsMessageProperty
  = CampaignSmsMessageProperty {body :: (Prelude.Maybe (Value Prelude.Text)),
                                entityId :: (Prelude.Maybe (Value Prelude.Text)),
                                messageType :: (Prelude.Maybe (Value Prelude.Text)),
                                originationNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                senderId :: (Prelude.Maybe (Value Prelude.Text)),
                                templateId :: (Prelude.Maybe (Value Prelude.Text))}
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