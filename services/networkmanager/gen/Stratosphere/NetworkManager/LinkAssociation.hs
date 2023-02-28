module Stratosphere.NetworkManager.LinkAssociation (
        LinkAssociation(..), mkLinkAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LinkAssociation
  = LinkAssociation {deviceId :: (Value Prelude.Text),
                     globalNetworkId :: (Value Prelude.Text),
                     linkId :: (Value Prelude.Text)}
mkLinkAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> LinkAssociation
mkLinkAssociation deviceId globalNetworkId linkId
  = LinkAssociation
      {deviceId = deviceId, globalNetworkId = globalNetworkId,
       linkId = linkId}
instance ToResourceProperties LinkAssociation where
  toResourceProperties LinkAssociation {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::LinkAssociation",
         supportsTags = Prelude.False,
         properties = ["DeviceId" JSON..= deviceId,
                       "GlobalNetworkId" JSON..= globalNetworkId,
                       "LinkId" JSON..= linkId]}
instance JSON.ToJSON LinkAssociation where
  toJSON LinkAssociation {..}
    = JSON.object
        ["DeviceId" JSON..= deviceId,
         "GlobalNetworkId" JSON..= globalNetworkId, "LinkId" JSON..= linkId]
instance Property "DeviceId" LinkAssociation where
  type PropertyType "DeviceId" LinkAssociation = Value Prelude.Text
  set newValue LinkAssociation {..}
    = LinkAssociation {deviceId = newValue, ..}
instance Property "GlobalNetworkId" LinkAssociation where
  type PropertyType "GlobalNetworkId" LinkAssociation = Value Prelude.Text
  set newValue LinkAssociation {..}
    = LinkAssociation {globalNetworkId = newValue, ..}
instance Property "LinkId" LinkAssociation where
  type PropertyType "LinkId" LinkAssociation = Value Prelude.Text
  set newValue LinkAssociation {..}
    = LinkAssociation {linkId = newValue, ..}