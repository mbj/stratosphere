module Stratosphere.NetworkManager.SiteToSiteVpnAttachment (
        SiteToSiteVpnAttachment(..), mkSiteToSiteVpnAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SiteToSiteVpnAttachment
  = SiteToSiteVpnAttachment {coreNetworkId :: (Value Prelude.Text),
                             tags :: (Prelude.Maybe [Tag]),
                             vpnConnectionArn :: (Value Prelude.Text)}
mkSiteToSiteVpnAttachment ::
  Value Prelude.Text -> Value Prelude.Text -> SiteToSiteVpnAttachment
mkSiteToSiteVpnAttachment coreNetworkId vpnConnectionArn
  = SiteToSiteVpnAttachment
      {coreNetworkId = coreNetworkId,
       vpnConnectionArn = vpnConnectionArn, tags = Prelude.Nothing}
instance ToResourceProperties SiteToSiteVpnAttachment where
  toResourceProperties SiteToSiteVpnAttachment {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::SiteToSiteVpnAttachment",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CoreNetworkId" JSON..= coreNetworkId,
                            "VpnConnectionArn" JSON..= vpnConnectionArn]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SiteToSiteVpnAttachment where
  toJSON SiteToSiteVpnAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CoreNetworkId" JSON..= coreNetworkId,
               "VpnConnectionArn" JSON..= vpnConnectionArn]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" SiteToSiteVpnAttachment where
  type PropertyType "CoreNetworkId" SiteToSiteVpnAttachment = Value Prelude.Text
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {coreNetworkId = newValue, ..}
instance Property "Tags" SiteToSiteVpnAttachment where
  type PropertyType "Tags" SiteToSiteVpnAttachment = [Tag]
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {tags = Prelude.pure newValue, ..}
instance Property "VpnConnectionArn" SiteToSiteVpnAttachment where
  type PropertyType "VpnConnectionArn" SiteToSiteVpnAttachment = Value Prelude.Text
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {vpnConnectionArn = newValue, ..}