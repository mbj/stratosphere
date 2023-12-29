module Stratosphere.NetworkManager.VpcAttachment (
        module Exports, VpcAttachment(..), mkVpcAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.VpcAttachment.ProposedSegmentChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.VpcAttachment.VpcOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VpcAttachment
  = VpcAttachment {coreNetworkId :: (Value Prelude.Text),
                   options :: (Prelude.Maybe VpcOptionsProperty),
                   proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                   subnetArns :: (ValueList Prelude.Text),
                   tags :: (Prelude.Maybe [Tag]),
                   vpcArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcAttachment ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> VpcAttachment
mkVpcAttachment coreNetworkId subnetArns vpcArn
  = VpcAttachment
      {coreNetworkId = coreNetworkId, subnetArns = subnetArns,
       vpcArn = vpcArn, options = Prelude.Nothing,
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