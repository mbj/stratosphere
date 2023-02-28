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
  = ProposedSegmentChangeProperty {attachmentPolicyRuleNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                                   segmentName :: (Prelude.Maybe (Value Prelude.Text)),
                                   tags :: (Prelude.Maybe [Tag])}
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