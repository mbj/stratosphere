module Stratosphere.ConnectCampaignsV2.Campaign.TelephonyOutboundConfigProperty (
        module Exports, TelephonyOutboundConfigProperty(..),
        mkTelephonyOutboundConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.AnswerMachineDetectionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TelephonyOutboundConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundconfig.html>
    TelephonyOutboundConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundconfig.html#cfn-connectcampaignsv2-campaign-telephonyoutboundconfig-answermachinedetectionconfig>
                                     answerMachineDetectionConfig :: (Prelude.Maybe AnswerMachineDetectionConfigProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundconfig.html#cfn-connectcampaignsv2-campaign-telephonyoutboundconfig-connectcontactflowid>
                                     connectContactFlowId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundconfig.html#cfn-connectcampaignsv2-campaign-telephonyoutboundconfig-connectsourcephonenumber>
                                     connectSourcePhoneNumber :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTelephonyOutboundConfigProperty ::
  Value Prelude.Text -> TelephonyOutboundConfigProperty
mkTelephonyOutboundConfigProperty connectContactFlowId
  = TelephonyOutboundConfigProperty
      {haddock_workaround_ = (),
       connectContactFlowId = connectContactFlowId,
       answerMachineDetectionConfig = Prelude.Nothing,
       connectSourcePhoneNumber = Prelude.Nothing}
instance ToResourceProperties TelephonyOutboundConfigProperty where
  toResourceProperties TelephonyOutboundConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.TelephonyOutboundConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectContactFlowId" JSON..= connectContactFlowId]
                           (Prelude.catMaybes
                              [(JSON..=) "AnswerMachineDetectionConfig"
                                 Prelude.<$> answerMachineDetectionConfig,
                               (JSON..=) "ConnectSourcePhoneNumber"
                                 Prelude.<$> connectSourcePhoneNumber]))}
instance JSON.ToJSON TelephonyOutboundConfigProperty where
  toJSON TelephonyOutboundConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectContactFlowId" JSON..= connectContactFlowId]
              (Prelude.catMaybes
                 [(JSON..=) "AnswerMachineDetectionConfig"
                    Prelude.<$> answerMachineDetectionConfig,
                  (JSON..=) "ConnectSourcePhoneNumber"
                    Prelude.<$> connectSourcePhoneNumber])))
instance Property "AnswerMachineDetectionConfig" TelephonyOutboundConfigProperty where
  type PropertyType "AnswerMachineDetectionConfig" TelephonyOutboundConfigProperty = AnswerMachineDetectionConfigProperty
  set newValue TelephonyOutboundConfigProperty {..}
    = TelephonyOutboundConfigProperty
        {answerMachineDetectionConfig = Prelude.pure newValue, ..}
instance Property "ConnectContactFlowId" TelephonyOutboundConfigProperty where
  type PropertyType "ConnectContactFlowId" TelephonyOutboundConfigProperty = Value Prelude.Text
  set newValue TelephonyOutboundConfigProperty {..}
    = TelephonyOutboundConfigProperty
        {connectContactFlowId = newValue, ..}
instance Property "ConnectSourcePhoneNumber" TelephonyOutboundConfigProperty where
  type PropertyType "ConnectSourcePhoneNumber" TelephonyOutboundConfigProperty = Value Prelude.Text
  set newValue TelephonyOutboundConfigProperty {..}
    = TelephonyOutboundConfigProperty
        {connectSourcePhoneNumber = Prelude.pure newValue, ..}