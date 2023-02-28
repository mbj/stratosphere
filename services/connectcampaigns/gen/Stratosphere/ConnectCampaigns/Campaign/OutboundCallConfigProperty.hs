module Stratosphere.ConnectCampaigns.Campaign.OutboundCallConfigProperty (
        module Exports, OutboundCallConfigProperty(..),
        mkOutboundCallConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaigns.Campaign.AnswerMachineDetectionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutboundCallConfigProperty
  = OutboundCallConfigProperty {answerMachineDetectionConfig :: (Prelude.Maybe AnswerMachineDetectionConfigProperty),
                                connectContactFlowArn :: (Value Prelude.Text),
                                connectQueueArn :: (Value Prelude.Text),
                                connectSourcePhoneNumber :: (Prelude.Maybe (Value Prelude.Text))}
mkOutboundCallConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OutboundCallConfigProperty
mkOutboundCallConfigProperty connectContactFlowArn connectQueueArn
  = OutboundCallConfigProperty
      {connectContactFlowArn = connectContactFlowArn,
       connectQueueArn = connectQueueArn,
       answerMachineDetectionConfig = Prelude.Nothing,
       connectSourcePhoneNumber = Prelude.Nothing}
instance ToResourceProperties OutboundCallConfigProperty where
  toResourceProperties OutboundCallConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.OutboundCallConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectContactFlowArn" JSON..= connectContactFlowArn,
                            "ConnectQueueArn" JSON..= connectQueueArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AnswerMachineDetectionConfig"
                                 Prelude.<$> answerMachineDetectionConfig,
                               (JSON..=) "ConnectSourcePhoneNumber"
                                 Prelude.<$> connectSourcePhoneNumber]))}
instance JSON.ToJSON OutboundCallConfigProperty where
  toJSON OutboundCallConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectContactFlowArn" JSON..= connectContactFlowArn,
               "ConnectQueueArn" JSON..= connectQueueArn]
              (Prelude.catMaybes
                 [(JSON..=) "AnswerMachineDetectionConfig"
                    Prelude.<$> answerMachineDetectionConfig,
                  (JSON..=) "ConnectSourcePhoneNumber"
                    Prelude.<$> connectSourcePhoneNumber])))
instance Property "AnswerMachineDetectionConfig" OutboundCallConfigProperty where
  type PropertyType "AnswerMachineDetectionConfig" OutboundCallConfigProperty = AnswerMachineDetectionConfigProperty
  set newValue OutboundCallConfigProperty {..}
    = OutboundCallConfigProperty
        {answerMachineDetectionConfig = Prelude.pure newValue, ..}
instance Property "ConnectContactFlowArn" OutboundCallConfigProperty where
  type PropertyType "ConnectContactFlowArn" OutboundCallConfigProperty = Value Prelude.Text
  set newValue OutboundCallConfigProperty {..}
    = OutboundCallConfigProperty {connectContactFlowArn = newValue, ..}
instance Property "ConnectQueueArn" OutboundCallConfigProperty where
  type PropertyType "ConnectQueueArn" OutboundCallConfigProperty = Value Prelude.Text
  set newValue OutboundCallConfigProperty {..}
    = OutboundCallConfigProperty {connectQueueArn = newValue, ..}
instance Property "ConnectSourcePhoneNumber" OutboundCallConfigProperty where
  type PropertyType "ConnectSourcePhoneNumber" OutboundCallConfigProperty = Value Prelude.Text
  set newValue OutboundCallConfigProperty {..}
    = OutboundCallConfigProperty
        {connectSourcePhoneNumber = Prelude.pure newValue, ..}