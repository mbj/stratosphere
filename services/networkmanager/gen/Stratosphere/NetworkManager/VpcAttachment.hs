module Stratosphere.NetworkManager.VpcAttachment (
        module Exports, VpcAttachment(..), mkVpcAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.VpcAttachment.ProposedNetworkFunctionGroupChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.VpcAttachment.ProposedSegmentChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.VpcAttachment.VpcOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VpcAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html>
    VpcAttachment {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-corenetworkid>
                   coreNetworkId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-options>
                   options :: (Prelude.Maybe VpcOptionsProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-proposednetworkfunctiongroupchange>
                   proposedNetworkFunctionGroupChange :: (Prelude.Maybe ProposedNetworkFunctionGroupChangeProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-proposedsegmentchange>
                   proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-subnetarns>
                   subnetArns :: (ValueList Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-vpcattachment.html#cfn-networkmanager-vpcattachment-vpcarn>
                   vpcArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcAttachment ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> VpcAttachment
mkVpcAttachment coreNetworkId subnetArns vpcArn
  = VpcAttachment
      {haddock_workaround_ = (), coreNetworkId = coreNetworkId,
       subnetArns = subnetArns, vpcArn = vpcArn,
       options = Prelude.Nothing,
       proposedNetworkFunctionGroupChange = Prelude.Nothing,
       proposedSegmentChange = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VpcAttachment where
  toResourceProperties VpcAttachment {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::VpcAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CoreNetworkId" JSON..= coreNetworkId,
                            "SubnetArns" JSON..= subnetArns, "VpcArn" JSON..= vpcArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "ProposedNetworkFunctionGroupChange"
                                 Prelude.<$> proposedNetworkFunctionGroupChange,
                               (JSON..=) "ProposedSegmentChange"
                                 Prelude.<$> proposedSegmentChange,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VpcAttachment where
  toJSON VpcAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CoreNetworkId" JSON..= coreNetworkId,
               "SubnetArns" JSON..= subnetArns, "VpcArn" JSON..= vpcArn]
              (Prelude.catMaybes
                 [(JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "ProposedNetworkFunctionGroupChange"
                    Prelude.<$> proposedNetworkFunctionGroupChange,
                  (JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" VpcAttachment where
  type PropertyType "CoreNetworkId" VpcAttachment = Value Prelude.Text
  set newValue VpcAttachment {..}
    = VpcAttachment {coreNetworkId = newValue, ..}
instance Property "Options" VpcAttachment where
  type PropertyType "Options" VpcAttachment = VpcOptionsProperty
  set newValue VpcAttachment {..}
    = VpcAttachment {options = Prelude.pure newValue, ..}
instance Property "ProposedNetworkFunctionGroupChange" VpcAttachment where
  type PropertyType "ProposedNetworkFunctionGroupChange" VpcAttachment = ProposedNetworkFunctionGroupChangeProperty
  set newValue VpcAttachment {..}
    = VpcAttachment
        {proposedNetworkFunctionGroupChange = Prelude.pure newValue, ..}
instance Property "ProposedSegmentChange" VpcAttachment where
  type PropertyType "ProposedSegmentChange" VpcAttachment = ProposedSegmentChangeProperty
  set newValue VpcAttachment {..}
    = VpcAttachment {proposedSegmentChange = Prelude.pure newValue, ..}
instance Property "SubnetArns" VpcAttachment where
  type PropertyType "SubnetArns" VpcAttachment = ValueList Prelude.Text
  set newValue VpcAttachment {..}
    = VpcAttachment {subnetArns = newValue, ..}
instance Property "Tags" VpcAttachment where
  type PropertyType "Tags" VpcAttachment = [Tag]
  set newValue VpcAttachment {..}
    = VpcAttachment {tags = Prelude.pure newValue, ..}
instance Property "VpcArn" VpcAttachment where
  type PropertyType "VpcArn" VpcAttachment = Value Prelude.Text
  set newValue VpcAttachment {..}
    = VpcAttachment {vpcArn = newValue, ..}