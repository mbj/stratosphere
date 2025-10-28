module Stratosphere.NetworkManager.ConnectAttachment.ProposedNetworkFunctionGroupChangeProperty (
        ProposedNetworkFunctionGroupChangeProperty(..),
        mkProposedNetworkFunctionGroupChangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProposedNetworkFunctionGroupChangeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-connectattachment-proposednetworkfunctiongroupchange.html>
    ProposedNetworkFunctionGroupChangeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-connectattachment-proposednetworkfunctiongroupchange.html#cfn-networkmanager-connectattachment-proposednetworkfunctiongroupchange-attachmentpolicyrulenumber>
                                                attachmentPolicyRuleNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-connectattachment-proposednetworkfunctiongroupchange.html#cfn-networkmanager-connectattachment-proposednetworkfunctiongroupchange-networkfunctiongroupname>
                                                networkFunctionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-connectattachment-proposednetworkfunctiongroupchange.html#cfn-networkmanager-connectattachment-proposednetworkfunctiongroupchange-tags>
                                                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProposedNetworkFunctionGroupChangeProperty ::
  ProposedNetworkFunctionGroupChangeProperty
mkProposedNetworkFunctionGroupChangeProperty
  = ProposedNetworkFunctionGroupChangeProperty
      {attachmentPolicyRuleNumber = Prelude.Nothing,
       networkFunctionGroupName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ProposedNetworkFunctionGroupChangeProperty where
  toResourceProperties
    ProposedNetworkFunctionGroupChangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectAttachment.ProposedNetworkFunctionGroupChange",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttachmentPolicyRuleNumber"
                              Prelude.<$> attachmentPolicyRuleNumber,
                            (JSON..=) "NetworkFunctionGroupName"
                              Prelude.<$> networkFunctionGroupName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ProposedNetworkFunctionGroupChangeProperty where
  toJSON ProposedNetworkFunctionGroupChangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttachmentPolicyRuleNumber"
                 Prelude.<$> attachmentPolicyRuleNumber,
               (JSON..=) "NetworkFunctionGroupName"
                 Prelude.<$> networkFunctionGroupName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AttachmentPolicyRuleNumber" ProposedNetworkFunctionGroupChangeProperty where
  type PropertyType "AttachmentPolicyRuleNumber" ProposedNetworkFunctionGroupChangeProperty = Value Prelude.Integer
  set newValue ProposedNetworkFunctionGroupChangeProperty {..}
    = ProposedNetworkFunctionGroupChangeProperty
        {attachmentPolicyRuleNumber = Prelude.pure newValue, ..}
instance Property "NetworkFunctionGroupName" ProposedNetworkFunctionGroupChangeProperty where
  type PropertyType "NetworkFunctionGroupName" ProposedNetworkFunctionGroupChangeProperty = Value Prelude.Text
  set newValue ProposedNetworkFunctionGroupChangeProperty {..}
    = ProposedNetworkFunctionGroupChangeProperty
        {networkFunctionGroupName = Prelude.pure newValue, ..}
instance Property "Tags" ProposedNetworkFunctionGroupChangeProperty where
  type PropertyType "Tags" ProposedNetworkFunctionGroupChangeProperty = [Tag]
  set newValue ProposedNetworkFunctionGroupChangeProperty {..}
    = ProposedNetworkFunctionGroupChangeProperty
        {tags = Prelude.pure newValue, ..}