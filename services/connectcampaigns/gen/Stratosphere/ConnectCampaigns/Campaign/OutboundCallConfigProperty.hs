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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-outboundcallconfig.html>
    OutboundCallConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-outboundcallconfig.html#cfn-connectcampaigns-campaign-outboundcallconfig-answermachinedetectionconfig>
                                answerMachineDetectionConfig :: (Prelude.Maybe AnswerMachineDetectionConfigProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-outboundcallconfig.html#cfn-connectcampaigns-campaign-outboundcallconfig-connectcontactflowarn>
                                connectContactFlowArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-outboundcallconfig.html#cfn-connectcampaigns-campaign-outboundcallconfig-connectqueuearn>
                                connectQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-outboundcallconfig.html#cfn-connectcampaigns-campaign-outboundcallconfig-connectsourcephonenumber>
                                connectSourcePhoneNumber :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutboundCallConfigProperty ::
  Value Prelude.Text -> OutboundCallConfigProperty
mkOutboundCallConfigProperty connectContactFlowArn
  = OutboundCallConfigProperty
      {haddock_workaround_ = (),
       connectContactFlowArn = connectContactFlowArn,
       answerMachineDetectionConfig = Prelude.Nothing,
       connectQueueArn = Prelude.Nothing,
       connectSourcePhoneNumber = Prelude.Nothing}
instance ToResourceProperties OutboundCallConfigProperty where
  toResourceProperties OutboundCallConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.OutboundCallConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectContactFlowArn" JSON..= connectContactFlowArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AnswerMachineDetectionConfig"
                                 Prelude.<$> answerMachineDetectionConfig,
                               (JSON..=) "ConnectQueueArn" Prelude.<$> connectQueueArn,
                               (JSON..=) "ConnectSourcePhoneNumber"
                                 Prelude.<$> connectSourcePhoneNumber]))}
instance JSON.ToJSON OutboundCallConfigProperty where
  toJSON OutboundCallConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectContactFlowArn" JSON..= connectContactFlowArn]
              (Prelude.catMaybes
                 [(JSON..=) "AnswerMachineDetectionConfig"
                    Prelude.<$> answerMachineDetectionConfig,
                  (JSON..=) "ConnectQueueArn" Prelude.<$> connectQueueArn,
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
    = OutboundCallConfigProperty
        {connectQueueArn = Prelude.pure newValue, ..}
instance Property "ConnectSourcePhoneNumber" OutboundCallConfigProperty where
  type PropertyType "ConnectSourcePhoneNumber" OutboundCallConfigProperty = Value Prelude.Text
  set newValue OutboundCallConfigProperty {..}
    = OutboundCallConfigProperty
        {connectSourcePhoneNumber = Prelude.pure newValue, ..}