module Stratosphere.EC2.VPCEndpointServicePermissions (
        VPCEndpointServicePermissions(..), mkVPCEndpointServicePermissions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCEndpointServicePermissions
  = VPCEndpointServicePermissions {allowedPrincipals :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   serviceId :: (Value Prelude.Text)}
mkVPCEndpointServicePermissions ::
  Value Prelude.Text -> VPCEndpointServicePermissions
mkVPCEndpointServicePermissions serviceId
  = VPCEndpointServicePermissions
      {serviceId = serviceId, allowedPrincipals = Prelude.Nothing}
instance ToResourceProperties VPCEndpointServicePermissions where
  toResourceProperties VPCEndpointServicePermissions {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpointServicePermissions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ServiceId" JSON..= serviceId]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedPrincipals" Prelude.<$> allowedPrincipals]))}
instance JSON.ToJSON VPCEndpointServicePermissions where
  toJSON VPCEndpointServicePermissions {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ServiceId" JSON..= serviceId]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedPrincipals" Prelude.<$> allowedPrincipals])))
instance Property "AllowedPrincipals" VPCEndpointServicePermissions where
  type PropertyType "AllowedPrincipals" VPCEndpointServicePermissions = ValueList Prelude.Text
  set newValue VPCEndpointServicePermissions {..}
    = VPCEndpointServicePermissions
        {allowedPrincipals = Prelude.pure newValue, ..}
instance Property "ServiceId" VPCEndpointServicePermissions where
  type PropertyType "ServiceId" VPCEndpointServicePermissions = Value Prelude.Text
  set newValue VPCEndpointServicePermissions {..}
    = VPCEndpointServicePermissions {serviceId = newValue, ..}