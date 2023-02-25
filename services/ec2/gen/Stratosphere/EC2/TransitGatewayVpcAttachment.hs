module Stratosphere.EC2.TransitGatewayVpcAttachment (
        module Exports, TransitGatewayVpcAttachment(..),
        mkTransitGatewayVpcAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TransitGatewayVpcAttachment.OptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayVpcAttachment
  = TransitGatewayVpcAttachment {addSubnetIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 options :: (Prelude.Maybe OptionsProperty),
                                 removeSubnetIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 subnetIds :: (ValueList (Value Prelude.Text)),
                                 tags :: (Prelude.Maybe [Tag]),
                                 transitGatewayId :: (Value Prelude.Text),
                                 vpcId :: (Value Prelude.Text)}
mkTransitGatewayVpcAttachment ::
  ValueList (Value Prelude.Text)
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayVpcAttachment
mkTransitGatewayVpcAttachment subnetIds transitGatewayId vpcId
  = TransitGatewayVpcAttachment
      {subnetIds = subnetIds, transitGatewayId = transitGatewayId,
       vpcId = vpcId, addSubnetIds = Prelude.Nothing,
       options = Prelude.Nothing, removeSubnetIds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayVpcAttachment where
  toResourceProperties TransitGatewayVpcAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayVpcAttachment",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetIds" JSON..= subnetIds,
                            "TransitGatewayId" JSON..= transitGatewayId, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "AddSubnetIds" Prelude.<$> addSubnetIds,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "RemoveSubnetIds" Prelude.<$> removeSubnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayVpcAttachment where
  toJSON TransitGatewayVpcAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetIds" JSON..= subnetIds,
               "TransitGatewayId" JSON..= transitGatewayId, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "AddSubnetIds" Prelude.<$> addSubnetIds,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "RemoveSubnetIds" Prelude.<$> removeSubnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddSubnetIds" TransitGatewayVpcAttachment where
  type PropertyType "AddSubnetIds" TransitGatewayVpcAttachment = ValueList (Value Prelude.Text)
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment
        {addSubnetIds = Prelude.pure newValue, ..}
instance Property "Options" TransitGatewayVpcAttachment where
  type PropertyType "Options" TransitGatewayVpcAttachment = OptionsProperty
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment {options = Prelude.pure newValue, ..}
instance Property "RemoveSubnetIds" TransitGatewayVpcAttachment where
  type PropertyType "RemoveSubnetIds" TransitGatewayVpcAttachment = ValueList (Value Prelude.Text)
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment
        {removeSubnetIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" TransitGatewayVpcAttachment where
  type PropertyType "SubnetIds" TransitGatewayVpcAttachment = ValueList (Value Prelude.Text)
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment {subnetIds = newValue, ..}
instance Property "Tags" TransitGatewayVpcAttachment where
  type PropertyType "Tags" TransitGatewayVpcAttachment = [Tag]
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" TransitGatewayVpcAttachment where
  type PropertyType "TransitGatewayId" TransitGatewayVpcAttachment = Value Prelude.Text
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment {transitGatewayId = newValue, ..}
instance Property "VpcId" TransitGatewayVpcAttachment where
  type PropertyType "VpcId" TransitGatewayVpcAttachment = Value Prelude.Text
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment {vpcId = newValue, ..}