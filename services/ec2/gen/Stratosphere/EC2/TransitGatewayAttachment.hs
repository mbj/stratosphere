module Stratosphere.EC2.TransitGatewayAttachment (
        module Exports, TransitGatewayAttachment(..),
        mkTransitGatewayAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TransitGatewayAttachment.OptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html>
    TransitGatewayAttachment {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-options>
                              options :: (Prelude.Maybe OptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-subnetids>
                              subnetIds :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-tags>
                              tags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-transitgatewayid>
                              transitGatewayId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-vpcid>
                              vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayAttachment ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayAttachment
mkTransitGatewayAttachment subnetIds transitGatewayId vpcId
  = TransitGatewayAttachment
      {haddock_workaround_ = (), subnetIds = subnetIds,
       transitGatewayId = transitGatewayId, vpcId = vpcId,
       options = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayAttachment where
  toResourceProperties TransitGatewayAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetIds" JSON..= subnetIds,
                            "TransitGatewayId" JSON..= transitGatewayId, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayAttachment where
  toJSON TransitGatewayAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetIds" JSON..= subnetIds,
               "TransitGatewayId" JSON..= transitGatewayId, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Options" TransitGatewayAttachment where
  type PropertyType "Options" TransitGatewayAttachment = OptionsProperty
  set newValue TransitGatewayAttachment {..}
    = TransitGatewayAttachment {options = Prelude.pure newValue, ..}
instance Property "SubnetIds" TransitGatewayAttachment where
  type PropertyType "SubnetIds" TransitGatewayAttachment = ValueList Prelude.Text
  set newValue TransitGatewayAttachment {..}
    = TransitGatewayAttachment {subnetIds = newValue, ..}
instance Property "Tags" TransitGatewayAttachment where
  type PropertyType "Tags" TransitGatewayAttachment = [Tag]
  set newValue TransitGatewayAttachment {..}
    = TransitGatewayAttachment {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" TransitGatewayAttachment where
  type PropertyType "TransitGatewayId" TransitGatewayAttachment = Value Prelude.Text
  set newValue TransitGatewayAttachment {..}
    = TransitGatewayAttachment {transitGatewayId = newValue, ..}
instance Property "VpcId" TransitGatewayAttachment where
  type PropertyType "VpcId" TransitGatewayAttachment = Value Prelude.Text
  set newValue TransitGatewayAttachment {..}
    = TransitGatewayAttachment {vpcId = newValue, ..}