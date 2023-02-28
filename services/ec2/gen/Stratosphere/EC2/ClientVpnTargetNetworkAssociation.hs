module Stratosphere.EC2.ClientVpnTargetNetworkAssociation (
        ClientVpnTargetNetworkAssociation(..),
        mkClientVpnTargetNetworkAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientVpnTargetNetworkAssociation
  = ClientVpnTargetNetworkAssociation {clientVpnEndpointId :: (Value Prelude.Text),
                                       subnetId :: (Value Prelude.Text)}
mkClientVpnTargetNetworkAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> ClientVpnTargetNetworkAssociation
mkClientVpnTargetNetworkAssociation clientVpnEndpointId subnetId
  = ClientVpnTargetNetworkAssociation
      {clientVpnEndpointId = clientVpnEndpointId, subnetId = subnetId}
instance ToResourceProperties ClientVpnTargetNetworkAssociation where
  toResourceProperties ClientVpnTargetNetworkAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnTargetNetworkAssociation",
         supportsTags = Prelude.False,
         properties = ["ClientVpnEndpointId" JSON..= clientVpnEndpointId,
                       "SubnetId" JSON..= subnetId]}
instance JSON.ToJSON ClientVpnTargetNetworkAssociation where
  toJSON ClientVpnTargetNetworkAssociation {..}
    = JSON.object
        ["ClientVpnEndpointId" JSON..= clientVpnEndpointId,
         "SubnetId" JSON..= subnetId]
instance Property "ClientVpnEndpointId" ClientVpnTargetNetworkAssociation where
  type PropertyType "ClientVpnEndpointId" ClientVpnTargetNetworkAssociation = Value Prelude.Text
  set newValue ClientVpnTargetNetworkAssociation {..}
    = ClientVpnTargetNetworkAssociation
        {clientVpnEndpointId = newValue, ..}
instance Property "SubnetId" ClientVpnTargetNetworkAssociation where
  type PropertyType "SubnetId" ClientVpnTargetNetworkAssociation = Value Prelude.Text
  set newValue ClientVpnTargetNetworkAssociation {..}
    = ClientVpnTargetNetworkAssociation {subnetId = newValue, ..}