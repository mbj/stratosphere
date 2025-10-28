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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html>
    TransitGatewayVpcAttachment {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-addsubnetids>
                                 addSubnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-options>
                                 options :: (Prelude.Maybe OptionsProperty),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-removesubnetids>
                                 removeSubnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-subnetids>
                                 subnetIds :: (ValueList Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-tags>
                                 tags :: (Prelude.Maybe [Tag]),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-transitgatewayid>
                                 transitGatewayId :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayvpcattachment.html#cfn-ec2-transitgatewayvpcattachment-vpcid>
                                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayVpcAttachment ::
  ValueList Prelude.Text
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
         supportsTags = Prelude.True,
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
  type PropertyType "AddSubnetIds" TransitGatewayVpcAttachment = ValueList Prelude.Text
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment
        {addSubnetIds = Prelude.pure newValue, ..}
instance Property "Options" TransitGatewayVpcAttachment where
  type PropertyType "Options" TransitGatewayVpcAttachment = OptionsProperty
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment {options = Prelude.pure newValue, ..}
instance Property "RemoveSubnetIds" TransitGatewayVpcAttachment where
  type PropertyType "RemoveSubnetIds" TransitGatewayVpcAttachment = ValueList Prelude.Text
  set newValue TransitGatewayVpcAttachment {..}
    = TransitGatewayVpcAttachment
        {removeSubnetIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" TransitGatewayVpcAttachment where
  type PropertyType "SubnetIds" TransitGatewayVpcAttachment = ValueList Prelude.Text
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