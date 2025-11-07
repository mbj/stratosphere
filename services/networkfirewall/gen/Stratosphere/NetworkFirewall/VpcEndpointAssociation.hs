module Stratosphere.NetworkFirewall.VpcEndpointAssociation (
        module Exports, VpcEndpointAssociation(..),
        mkVpcEndpointAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.VpcEndpointAssociation.SubnetMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VpcEndpointAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-vpcendpointassociation.html>
    VpcEndpointAssociation {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-vpcendpointassociation.html#cfn-networkfirewall-vpcendpointassociation-description>
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-vpcendpointassociation.html#cfn-networkfirewall-vpcendpointassociation-firewallarn>
                            firewallArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-vpcendpointassociation.html#cfn-networkfirewall-vpcendpointassociation-subnetmapping>
                            subnetMapping :: SubnetMappingProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-vpcendpointassociation.html#cfn-networkfirewall-vpcendpointassociation-tags>
                            tags :: (Prelude.Maybe [Tag]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-vpcendpointassociation.html#cfn-networkfirewall-vpcendpointassociation-vpcid>
                            vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcEndpointAssociation ::
  Value Prelude.Text
  -> SubnetMappingProperty
     -> Value Prelude.Text -> VpcEndpointAssociation
mkVpcEndpointAssociation firewallArn subnetMapping vpcId
  = VpcEndpointAssociation
      {haddock_workaround_ = (), firewallArn = firewallArn,
       subnetMapping = subnetMapping, vpcId = vpcId,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VpcEndpointAssociation where
  toResourceProperties VpcEndpointAssociation {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::VpcEndpointAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirewallArn" JSON..= firewallArn,
                            "SubnetMapping" JSON..= subnetMapping, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VpcEndpointAssociation where
  toJSON VpcEndpointAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirewallArn" JSON..= firewallArn,
               "SubnetMapping" JSON..= subnetMapping, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" VpcEndpointAssociation where
  type PropertyType "Description" VpcEndpointAssociation = Value Prelude.Text
  set newValue VpcEndpointAssociation {..}
    = VpcEndpointAssociation {description = Prelude.pure newValue, ..}
instance Property "FirewallArn" VpcEndpointAssociation where
  type PropertyType "FirewallArn" VpcEndpointAssociation = Value Prelude.Text
  set newValue VpcEndpointAssociation {..}
    = VpcEndpointAssociation {firewallArn = newValue, ..}
instance Property "SubnetMapping" VpcEndpointAssociation where
  type PropertyType "SubnetMapping" VpcEndpointAssociation = SubnetMappingProperty
  set newValue VpcEndpointAssociation {..}
    = VpcEndpointAssociation {subnetMapping = newValue, ..}
instance Property "Tags" VpcEndpointAssociation where
  type PropertyType "Tags" VpcEndpointAssociation = [Tag]
  set newValue VpcEndpointAssociation {..}
    = VpcEndpointAssociation {tags = Prelude.pure newValue, ..}
instance Property "VpcId" VpcEndpointAssociation where
  type PropertyType "VpcId" VpcEndpointAssociation = Value Prelude.Text
  set newValue VpcEndpointAssociation {..}
    = VpcEndpointAssociation {vpcId = newValue, ..}