module Stratosphere.EC2.TransitGateway (
        TransitGateway(..), mkTransitGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html>
    TransitGateway {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-amazonsideasn>
                    amazonSideAsn :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-associationdefaultroutetableid>
                    associationDefaultRouteTableId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-autoacceptsharedattachments>
                    autoAcceptSharedAttachments :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-defaultroutetableassociation>
                    defaultRouteTableAssociation :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-defaultroutetablepropagation>
                    defaultRouteTablePropagation :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-dnssupport>
                    dnsSupport :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-multicastsupport>
                    multicastSupport :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-propagationdefaultroutetableid>
                    propagationDefaultRouteTableId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-securitygroupreferencingsupport>
                    securityGroupReferencingSupport :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-transitgatewaycidrblocks>
                    transitGatewayCidrBlocks :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-vpnecmpsupport>
                    vpnEcmpSupport :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGateway :: TransitGateway
mkTransitGateway
  = TransitGateway
      {haddock_workaround_ = (), amazonSideAsn = Prelude.Nothing,
       associationDefaultRouteTableId = Prelude.Nothing,
       autoAcceptSharedAttachments = Prelude.Nothing,
       defaultRouteTableAssociation = Prelude.Nothing,
       defaultRouteTablePropagation = Prelude.Nothing,
       description = Prelude.Nothing, dnsSupport = Prelude.Nothing,
       multicastSupport = Prelude.Nothing,
       propagationDefaultRouteTableId = Prelude.Nothing,
       securityGroupReferencingSupport = Prelude.Nothing,
       tags = Prelude.Nothing, transitGatewayCidrBlocks = Prelude.Nothing,
       vpnEcmpSupport = Prelude.Nothing}
instance ToResourceProperties TransitGateway where
  toResourceProperties TransitGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGateway", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AmazonSideAsn" Prelude.<$> amazonSideAsn,
                            (JSON..=) "AssociationDefaultRouteTableId"
                              Prelude.<$> associationDefaultRouteTableId,
                            (JSON..=) "AutoAcceptSharedAttachments"
                              Prelude.<$> autoAcceptSharedAttachments,
                            (JSON..=) "DefaultRouteTableAssociation"
                              Prelude.<$> defaultRouteTableAssociation,
                            (JSON..=) "DefaultRouteTablePropagation"
                              Prelude.<$> defaultRouteTablePropagation,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
                            (JSON..=) "MulticastSupport" Prelude.<$> multicastSupport,
                            (JSON..=) "PropagationDefaultRouteTableId"
                              Prelude.<$> propagationDefaultRouteTableId,
                            (JSON..=) "SecurityGroupReferencingSupport"
                              Prelude.<$> securityGroupReferencingSupport,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TransitGatewayCidrBlocks"
                              Prelude.<$> transitGatewayCidrBlocks,
                            (JSON..=) "VpnEcmpSupport" Prelude.<$> vpnEcmpSupport])}
instance JSON.ToJSON TransitGateway where
  toJSON TransitGateway {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AmazonSideAsn" Prelude.<$> amazonSideAsn,
               (JSON..=) "AssociationDefaultRouteTableId"
                 Prelude.<$> associationDefaultRouteTableId,
               (JSON..=) "AutoAcceptSharedAttachments"
                 Prelude.<$> autoAcceptSharedAttachments,
               (JSON..=) "DefaultRouteTableAssociation"
                 Prelude.<$> defaultRouteTableAssociation,
               (JSON..=) "DefaultRouteTablePropagation"
                 Prelude.<$> defaultRouteTablePropagation,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
               (JSON..=) "MulticastSupport" Prelude.<$> multicastSupport,
               (JSON..=) "PropagationDefaultRouteTableId"
                 Prelude.<$> propagationDefaultRouteTableId,
               (JSON..=) "SecurityGroupReferencingSupport"
                 Prelude.<$> securityGroupReferencingSupport,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TransitGatewayCidrBlocks"
                 Prelude.<$> transitGatewayCidrBlocks,
               (JSON..=) "VpnEcmpSupport" Prelude.<$> vpnEcmpSupport]))
instance Property "AmazonSideAsn" TransitGateway where
  type PropertyType "AmazonSideAsn" TransitGateway = Value Prelude.Integer
  set newValue TransitGateway {..}
    = TransitGateway {amazonSideAsn = Prelude.pure newValue, ..}
instance Property "AssociationDefaultRouteTableId" TransitGateway where
  type PropertyType "AssociationDefaultRouteTableId" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {associationDefaultRouteTableId = Prelude.pure newValue, ..}
instance Property "AutoAcceptSharedAttachments" TransitGateway where
  type PropertyType "AutoAcceptSharedAttachments" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {autoAcceptSharedAttachments = Prelude.pure newValue, ..}
instance Property "DefaultRouteTableAssociation" TransitGateway where
  type PropertyType "DefaultRouteTableAssociation" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {defaultRouteTableAssociation = Prelude.pure newValue, ..}
instance Property "DefaultRouteTablePropagation" TransitGateway where
  type PropertyType "DefaultRouteTablePropagation" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {defaultRouteTablePropagation = Prelude.pure newValue, ..}
instance Property "Description" TransitGateway where
  type PropertyType "Description" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway {description = Prelude.pure newValue, ..}
instance Property "DnsSupport" TransitGateway where
  type PropertyType "DnsSupport" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway {dnsSupport = Prelude.pure newValue, ..}
instance Property "MulticastSupport" TransitGateway where
  type PropertyType "MulticastSupport" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway {multicastSupport = Prelude.pure newValue, ..}
instance Property "PropagationDefaultRouteTableId" TransitGateway where
  type PropertyType "PropagationDefaultRouteTableId" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {propagationDefaultRouteTableId = Prelude.pure newValue, ..}
instance Property "SecurityGroupReferencingSupport" TransitGateway where
  type PropertyType "SecurityGroupReferencingSupport" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {securityGroupReferencingSupport = Prelude.pure newValue, ..}
instance Property "Tags" TransitGateway where
  type PropertyType "Tags" TransitGateway = [Tag]
  set newValue TransitGateway {..}
    = TransitGateway {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayCidrBlocks" TransitGateway where
  type PropertyType "TransitGatewayCidrBlocks" TransitGateway = ValueList Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway
        {transitGatewayCidrBlocks = Prelude.pure newValue, ..}
instance Property "VpnEcmpSupport" TransitGateway where
  type PropertyType "VpnEcmpSupport" TransitGateway = Value Prelude.Text
  set newValue TransitGateway {..}
    = TransitGateway {vpnEcmpSupport = Prelude.pure newValue, ..}