module Stratosphere.EC2.TransitGatewayVpcAttachment.OptionsProperty (
        OptionsProperty(..), mkOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionsProperty
  = OptionsProperty {applianceModeSupport :: (Prelude.Maybe (Value Prelude.Text)),
                     dnsSupport :: (Prelude.Maybe (Value Prelude.Text)),
                     ipv6Support :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionsProperty :: OptionsProperty
mkOptionsProperty
  = OptionsProperty
      {applianceModeSupport = Prelude.Nothing,
       dnsSupport = Prelude.Nothing, ipv6Support = Prelude.Nothing}
instance ToResourceProperties OptionsProperty where
  toResourceProperties OptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayVpcAttachment.Options",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
                            (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
                            (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support])}
instance JSON.ToJSON OptionsProperty where
  toJSON OptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
               (JSON..=) "DnsSupport" Prelude.<$> dnsSupport,
               (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support]))
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