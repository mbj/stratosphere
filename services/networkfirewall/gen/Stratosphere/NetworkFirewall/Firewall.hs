module Stratosphere.NetworkFirewall.Firewall (
        module Exports, Firewall(..), mkFirewall
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.Firewall.AvailabilityZoneMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.Firewall.SubnetMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Firewall
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html>
    Firewall {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-availabilityzonechangeprotection>
              availabilityZoneChangeProtection :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-availabilityzonemappings>
              availabilityZoneMappings :: (Prelude.Maybe [AvailabilityZoneMappingProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-deleteprotection>
              deleteProtection :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-enabledanalysistypes>
              enabledAnalysisTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-firewallname>
              firewallName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-firewallpolicyarn>
              firewallPolicyArn :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-firewallpolicychangeprotection>
              firewallPolicyChangeProtection :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-subnetchangeprotection>
              subnetChangeProtection :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-subnetmappings>
              subnetMappings :: (Prelude.Maybe [SubnetMappingProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-transitgatewayid>
              transitGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewall.html#cfn-networkfirewall-firewall-vpcid>
              vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewall :: Value Prelude.Text -> Value Prelude.Text -> Firewall
mkFirewall firewallName firewallPolicyArn
  = Firewall
      {haddock_workaround_ = (), firewallName = firewallName,
       firewallPolicyArn = firewallPolicyArn,
       availabilityZoneChangeProtection = Prelude.Nothing,
       availabilityZoneMappings = Prelude.Nothing,
       deleteProtection = Prelude.Nothing, description = Prelude.Nothing,
       enabledAnalysisTypes = Prelude.Nothing,
       firewallPolicyChangeProtection = Prelude.Nothing,
       subnetChangeProtection = Prelude.Nothing,
       subnetMappings = Prelude.Nothing, tags = Prelude.Nothing,
       transitGatewayId = Prelude.Nothing, vpcId = Prelude.Nothing}
instance ToResourceProperties Firewall where
  toResourceProperties Firewall {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::Firewall",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirewallName" JSON..= firewallName,
                            "FirewallPolicyArn" JSON..= firewallPolicyArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZoneChangeProtection"
                                 Prelude.<$> availabilityZoneChangeProtection,
                               (JSON..=) "AvailabilityZoneMappings"
                                 Prelude.<$> availabilityZoneMappings,
                               (JSON..=) "DeleteProtection" Prelude.<$> deleteProtection,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnabledAnalysisTypes" Prelude.<$> enabledAnalysisTypes,
                               (JSON..=) "FirewallPolicyChangeProtection"
                                 Prelude.<$> firewallPolicyChangeProtection,
                               (JSON..=) "SubnetChangeProtection"
                                 Prelude.<$> subnetChangeProtection,
                               (JSON..=) "SubnetMappings" Prelude.<$> subnetMappings,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON Firewall where
  toJSON Firewall {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirewallName" JSON..= firewallName,
               "FirewallPolicyArn" JSON..= firewallPolicyArn]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZoneChangeProtection"
                    Prelude.<$> availabilityZoneChangeProtection,
                  (JSON..=) "AvailabilityZoneMappings"
                    Prelude.<$> availabilityZoneMappings,
                  (JSON..=) "DeleteProtection" Prelude.<$> deleteProtection,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnabledAnalysisTypes" Prelude.<$> enabledAnalysisTypes,
                  (JSON..=) "FirewallPolicyChangeProtection"
                    Prelude.<$> firewallPolicyChangeProtection,
                  (JSON..=) "SubnetChangeProtection"
                    Prelude.<$> subnetChangeProtection,
                  (JSON..=) "SubnetMappings" Prelude.<$> subnetMappings,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "AvailabilityZoneChangeProtection" Firewall where
  type PropertyType "AvailabilityZoneChangeProtection" Firewall = Value Prelude.Bool
  set newValue Firewall {..}
    = Firewall
        {availabilityZoneChangeProtection = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneMappings" Firewall where
  type PropertyType "AvailabilityZoneMappings" Firewall = [AvailabilityZoneMappingProperty]
  set newValue Firewall {..}
    = Firewall {availabilityZoneMappings = Prelude.pure newValue, ..}
instance Property "DeleteProtection" Firewall where
  type PropertyType "DeleteProtection" Firewall = Value Prelude.Bool
  set newValue Firewall {..}
    = Firewall {deleteProtection = Prelude.pure newValue, ..}
instance Property "Description" Firewall where
  type PropertyType "Description" Firewall = Value Prelude.Text
  set newValue Firewall {..}
    = Firewall {description = Prelude.pure newValue, ..}
instance Property "EnabledAnalysisTypes" Firewall where
  type PropertyType "EnabledAnalysisTypes" Firewall = ValueList Prelude.Text
  set newValue Firewall {..}
    = Firewall {enabledAnalysisTypes = Prelude.pure newValue, ..}
instance Property "FirewallName" Firewall where
  type PropertyType "FirewallName" Firewall = Value Prelude.Text
  set newValue Firewall {..} = Firewall {firewallName = newValue, ..}
instance Property "FirewallPolicyArn" Firewall where
  type PropertyType "FirewallPolicyArn" Firewall = Value Prelude.Text
  set newValue Firewall {..}
    = Firewall {firewallPolicyArn = newValue, ..}
instance Property "FirewallPolicyChangeProtection" Firewall where
  type PropertyType "FirewallPolicyChangeProtection" Firewall = Value Prelude.Bool
  set newValue Firewall {..}
    = Firewall
        {firewallPolicyChangeProtection = Prelude.pure newValue, ..}
instance Property "SubnetChangeProtection" Firewall where
  type PropertyType "SubnetChangeProtection" Firewall = Value Prelude.Bool
  set newValue Firewall {..}
    = Firewall {subnetChangeProtection = Prelude.pure newValue, ..}
instance Property "SubnetMappings" Firewall where
  type PropertyType "SubnetMappings" Firewall = [SubnetMappingProperty]
  set newValue Firewall {..}
    = Firewall {subnetMappings = Prelude.pure newValue, ..}
instance Property "Tags" Firewall where
  type PropertyType "Tags" Firewall = [Tag]
  set newValue Firewall {..}
    = Firewall {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" Firewall where
  type PropertyType "TransitGatewayId" Firewall = Value Prelude.Text
  set newValue Firewall {..}
    = Firewall {transitGatewayId = Prelude.pure newValue, ..}
instance Property "VpcId" Firewall where
  type PropertyType "VpcId" Firewall = Value Prelude.Text
  set newValue Firewall {..}
    = Firewall {vpcId = Prelude.pure newValue, ..}