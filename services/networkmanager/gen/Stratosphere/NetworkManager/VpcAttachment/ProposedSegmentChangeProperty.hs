module Stratosphere.NetworkManager.VpcAttachment.ProposedSegmentChangeProperty (
        ProposedSegmentChangeProperty(..), mkProposedSegmentChangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProposedSegmentChangeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-proposedsegmentchange.html>
    ProposedSegmentChangeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-proposedsegmentchange.html#cfn-networkmanager-vpcattachment-proposedsegmentchange-attachmentpolicyrulenumber>
                                   attachmentPolicyRuleNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-proposedsegmentchange.html#cfn-networkmanager-vpcattachment-proposedsegmentchange-segmentname>
                                   segmentName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-proposedsegmentchange.html#cfn-networkmanager-vpcattachment-proposedsegmentchange-tags>
                                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProposedSegmentChangeProperty :: ProposedSegmentChangeProperty
mkProposedSegmentChangeProperty
  = ProposedSegmentChangeProperty
      {attachmentPolicyRuleNumber = Prelude.Nothing,
       segmentName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ProposedSegmentChangeProperty where
  toResourceProperties ProposedSegmentChangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::VpcAttachment.ProposedSegmentChange",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttachmentPolicyRuleNumber"
                              Prelude.<$> attachmentPolicyRuleNumber,
                            (JSON..=) "SegmentName" Prelude.<$> segmentName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ProposedSegmentChangeProperty where
  toJSON ProposedSegmentChangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttachmentPolicyRuleNumber"
                 Prelude.<$> attachmentPolicyRuleNumber,
               (JSON..=) "SegmentName" Prelude.<$> segmentName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AttachmentPolicyRuleNumber" ProposedSegmentChangeProperty where
  type PropertyType "AttachmentPolicyRuleNumber" ProposedSegmentChangeProperty = Value Prelude.Integer
  set newValue ProposedSegmentChangeProperty {..}
    = ProposedSegmentChangeProperty
        {attachmentPolicyRuleNumber = Prelude.pure newValue, ..}
instance Property "SegmentName" ProposedSegmentChangeProperty where
  type PropertyType "SegmentName" ProposedSegmentChangeProperty = Value Prelude.Text
  set newValue ProposedSegmentChangeProperty {..}
    = ProposedSegmentChangeProperty
        {segmentName = Prelude.pure newValue, ..}
instance Property "Tags" ProposedSegmentChangeProperty where
  type PropertyType "Tags" ProposedSegmentChangeProperty = [Tag]
  set newValue ProposedSegmentChangeProperty {..}
    = ProposedSegmentChangeProperty {tags = Prelude.pure newValue, ..}