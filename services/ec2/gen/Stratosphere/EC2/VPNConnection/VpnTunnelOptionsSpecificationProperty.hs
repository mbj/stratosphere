module Stratosphere.EC2.VPNConnection.VpnTunnelOptionsSpecificationProperty (
        VpnTunnelOptionsSpecificationProperty(..),
        mkVpnTunnelOptionsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpnTunnelOptionsSpecificationProperty
  = VpnTunnelOptionsSpecificationProperty {preSharedKey :: (Prelude.Maybe (Value Prelude.Text)),
                                           tunnelInsideCidr :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpnTunnelOptionsSpecificationProperty ::
  VpnTunnelOptionsSpecificationProperty
mkVpnTunnelOptionsSpecificationProperty
  = VpnTunnelOptionsSpecificationProperty
      {preSharedKey = Prelude.Nothing,
       tunnelInsideCidr = Prelude.Nothing}
instance ToResourceProperties VpnTunnelOptionsSpecificationProperty where
  toResourceProperties VpnTunnelOptionsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PreSharedKey" Prelude.<$> preSharedKey,
                            (JSON..=) "TunnelInsideCidr" Prelude.<$> tunnelInsideCidr])}
instance JSON.ToJSON VpnTunnelOptionsSpecificationProperty where
  toJSON VpnTunnelOptionsSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PreSharedKey" Prelude.<$> preSharedKey,
               (JSON..=) "TunnelInsideCidr" Prelude.<$> tunnelInsideCidr]))
instance Property "PreSharedKey" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "PreSharedKey" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {preSharedKey = Prelude.pure newValue, ..}
instance Property "TunnelInsideCidr" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "TunnelInsideCidr" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {tunnelInsideCidr = Prelude.pure newValue, ..}