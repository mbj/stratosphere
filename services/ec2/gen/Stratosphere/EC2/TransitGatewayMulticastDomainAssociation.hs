module Stratosphere.EC2.TransitGatewayMulticastDomainAssociation (
        TransitGatewayMulticastDomainAssociation(..),
        mkTransitGatewayMulticastDomainAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayMulticastDomainAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastdomainassociation.html>
    TransitGatewayMulticastDomainAssociation {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastdomainassociation.html#cfn-ec2-transitgatewaymulticastdomainassociation-subnetid>
                                              subnetId :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastdomainassociation.html#cfn-ec2-transitgatewaymulticastdomainassociation-transitgatewayattachmentid>
                                              transitGatewayAttachmentId :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastdomainassociation.html#cfn-ec2-transitgatewaymulticastdomainassociation-transitgatewaymulticastdomainid>
                                              transitGatewayMulticastDomainId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayMulticastDomainAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayMulticastDomainAssociation
mkTransitGatewayMulticastDomainAssociation
  subnetId
  transitGatewayAttachmentId
  transitGatewayMulticastDomainId
  = TransitGatewayMulticastDomainAssociation
      {haddock_workaround_ = (), subnetId = subnetId,
       transitGatewayAttachmentId = transitGatewayAttachmentId,
       transitGatewayMulticastDomainId = transitGatewayMulticastDomainId}
instance ToResourceProperties TransitGatewayMulticastDomainAssociation where
  toResourceProperties TransitGatewayMulticastDomainAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastDomainAssociation",
         supportsTags = Prelude.False,
         properties = ["SubnetId" JSON..= subnetId,
                       "TransitGatewayAttachmentId" JSON..= transitGatewayAttachmentId,
                       "TransitGatewayMulticastDomainId"
                         JSON..= transitGatewayMulticastDomainId]}
instance JSON.ToJSON TransitGatewayMulticastDomainAssociation where
  toJSON TransitGatewayMulticastDomainAssociation {..}
    = JSON.object
        ["SubnetId" JSON..= subnetId,
         "TransitGatewayAttachmentId" JSON..= transitGatewayAttachmentId,
         "TransitGatewayMulticastDomainId"
           JSON..= transitGatewayMulticastDomainId]
instance Property "SubnetId" TransitGatewayMulticastDomainAssociation where
  type PropertyType "SubnetId" TransitGatewayMulticastDomainAssociation = Value Prelude.Text
  set newValue TransitGatewayMulticastDomainAssociation {..}
    = TransitGatewayMulticastDomainAssociation
        {subnetId = newValue, ..}
instance Property "TransitGatewayAttachmentId" TransitGatewayMulticastDomainAssociation where
  type PropertyType "TransitGatewayAttachmentId" TransitGatewayMulticastDomainAssociation = Value Prelude.Text
  set newValue TransitGatewayMulticastDomainAssociation {..}
    = TransitGatewayMulticastDomainAssociation
        {transitGatewayAttachmentId = newValue, ..}
instance Property "TransitGatewayMulticastDomainId" TransitGatewayMulticastDomainAssociation where
  type PropertyType "TransitGatewayMulticastDomainId" TransitGatewayMulticastDomainAssociation = Value Prelude.Text
  set newValue TransitGatewayMulticastDomainAssociation {..}
    = TransitGatewayMulticastDomainAssociation
        {transitGatewayMulticastDomainId = newValue, ..}