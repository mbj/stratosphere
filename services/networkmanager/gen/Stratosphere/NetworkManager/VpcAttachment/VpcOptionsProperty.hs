module Stratosphere.NetworkManager.VpcAttachment.VpcOptionsProperty (
        VpcOptionsProperty(..), mkVpcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html>
    VpcOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html#cfn-networkmanager-vpcattachment-vpcoptions-appliancemodesupport>
                        applianceModeSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html#cfn-networkmanager-vpcattachment-vpcoptions-dnssupport>
                        dnsSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html#cfn-networkmanager-vpcattachment-vpcoptions-ipv6support>
                        ipv6Support :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html#cfn-networkmanager-vpcattachment-vpcoptions-securitygroupreferencingsupport>
                        securityGroupReferencingSupport :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOptionsProperty :: VpcOptionsProperty
mkVpcOptionsProperty
  = VpcOptionsProperty
      {haddock_workaround_ = (), applianceModeSupport = Prelude.Nothing,
       dnsSupport = Prelude.Nothing, ipv6Support = Prelude.Nothing,
       securityGroupReferencingSupport = Prelude.Nothing}
instance ToResourceProperties VpcOptionsProperty where
  toResourceProperties VpcOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::VpcAttachment.VpcOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
                            (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
                            (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support,
                            (JSON..=) "SecurityGroupReferencingSupport"
                              Prelude.<$> securityGroupReferencingSupport])}
instance JSON.ToJSON VpcOptionsProperty where
  toJSON VpcOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
               (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
               (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support,
               (JSON..=) "SecurityGroupReferencingSupport"
                 Prelude.<$> securityGroupReferencingSupport]))
instance Property "ApplianceModeSupport" VpcOptionsProperty where
  type PropertyType "ApplianceModeSupport" VpcOptionsProperty = Value Prelude.Bool
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty
        {applianceModeSupport = Prelude.pure newValue, ..}
instance Property "DnsSupport" VpcOptionsProperty where
  type PropertyType "DnsSupport" VpcOptionsProperty = Value Prelude.Bool
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty {dnsSupport = Prelude.pure newValue, ..}
instance Property "Ipv6Support" VpcOptionsProperty where
  type PropertyType "Ipv6Support" VpcOptionsProperty = Value Prelude.Bool
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty {ipv6Support = Prelude.pure newValue, ..}
instance Property "SecurityGroupReferencingSupport" VpcOptionsProperty where
  type PropertyType "SecurityGroupReferencingSupport" VpcOptionsProperty = Value Prelude.Bool
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty
        {securityGroupReferencingSupport = Prelude.pure newValue, ..}