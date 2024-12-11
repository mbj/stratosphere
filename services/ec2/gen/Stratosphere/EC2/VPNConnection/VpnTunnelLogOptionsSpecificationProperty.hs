module Stratosphere.EC2.VPNConnection.VpnTunnelLogOptionsSpecificationProperty (
        module Exports, VpnTunnelLogOptionsSpecificationProperty(..),
        mkVpnTunnelLogOptionsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.CloudwatchLogOptionsSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data VpnTunnelLogOptionsSpecificationProperty
  = VpnTunnelLogOptionsSpecificationProperty {cloudwatchLogOptions :: (Prelude.Maybe CloudwatchLogOptionsSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpnTunnelLogOptionsSpecificationProperty ::
  VpnTunnelLogOptionsSpecificationProperty
mkVpnTunnelLogOptionsSpecificationProperty
  = VpnTunnelLogOptionsSpecificationProperty
      {cloudwatchLogOptions = Prelude.Nothing}
instance ToResourceProperties VpnTunnelLogOptionsSpecificationProperty where
  toResourceProperties VpnTunnelLogOptionsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.VpnTunnelLogOptionsSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudwatchLogOptions"
                              Prelude.<$> cloudwatchLogOptions])}
instance JSON.ToJSON VpnTunnelLogOptionsSpecificationProperty where
  toJSON VpnTunnelLogOptionsSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudwatchLogOptions"
                 Prelude.<$> cloudwatchLogOptions]))
instance Property "CloudwatchLogOptions" VpnTunnelLogOptionsSpecificationProperty where
  type PropertyType "CloudwatchLogOptions" VpnTunnelLogOptionsSpecificationProperty = CloudwatchLogOptionsSpecificationProperty
  set newValue VpnTunnelLogOptionsSpecificationProperty {}
    = VpnTunnelLogOptionsSpecificationProperty
        {cloudwatchLogOptions = Prelude.pure newValue, ..}