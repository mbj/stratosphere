module Stratosphere.EC2.TransitGatewayAttachment.OptionsProperty (
        OptionsProperty(..), mkOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayattachment-options.html>
    OptionsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayattachment-options.html#cfn-ec2-transitgatewayattachment-options-appliancemodesupport>
                     applianceModeSupport :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayattachment-options.html#cfn-ec2-transitgatewayattachment-options-dnssupport>
                     dnsSupport :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayattachment-options.html#cfn-ec2-transitgatewayattachment-options-ipv6support>
                     ipv6Support :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayattachment-options.html#cfn-ec2-transitgatewayattachment-options-securitygroupreferencingsupport>
                     securityGroupReferencingSupport :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionsProperty :: OptionsProperty
mkOptionsProperty
  = OptionsProperty
      {haddock_workaround_ = (), applianceModeSupport = Prelude.Nothing,
       dnsSupport = Prelude.Nothing, ipv6Support = Prelude.Nothing,
       securityGroupReferencingSupport = Prelude.Nothing}
instance ToResourceProperties OptionsProperty where
  toResourceProperties OptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayAttachment.Options",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
                            (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
                            (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support,
                            (JSON..=) "SecurityGroupReferencingSupport"
                              Prelude.<$> securityGroupReferencingSupport])}
instance JSON.ToJSON OptionsProperty where
  toJSON OptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
               (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
               (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support,
               (JSON..=) "SecurityGroupReferencingSupport"
                 Prelude.<$> securityGroupReferencingSupport]))
instance Property "ApplianceModeSupport" OptionsProperty where
  type PropertyType "ApplianceModeSupport" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty
        {applianceModeSupport = Prelude.pure newValue, ..}
instance Property "DnsSupport" OptionsProperty where
  type PropertyType "DnsSupport" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {dnsSupport = Prelude.pure newValue, ..}
instance Property "Ipv6Support" OptionsProperty where
  type PropertyType "Ipv6Support" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {ipv6Support = Prelude.pure newValue, ..}
instance Property "SecurityGroupReferencingSupport" OptionsProperty where
  type PropertyType "SecurityGroupReferencingSupport" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty
        {securityGroupReferencingSupport = Prelude.pure newValue, ..}