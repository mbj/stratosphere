module Stratosphere.NetworkManager.SiteToSiteVpnAttachment (
        module Exports, SiteToSiteVpnAttachment(..),
        mkSiteToSiteVpnAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.SiteToSiteVpnAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SiteToSiteVpnAttachment
  = SiteToSiteVpnAttachment {coreNetworkId :: (Value Prelude.Text),
                             proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                             tags :: (Prelude.Maybe [Tag]),
                             vpnConnectionArn :: (Value Prelude.Text)}
mkSiteToSiteVpnAttachment ::
  Value Prelude.Text -> Value Prelude.Text -> SiteToSiteVpnAttachment
mkSiteToSiteVpnAttachment coreNetworkId vpnConnectionArn
  = SiteToSiteVpnAttachment
      {coreNetworkId = coreNetworkId,
       vpnConnectionArn = vpnConnectionArn,
       proposedSegmentChange = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SiteToSiteVpnAttachment where
  toResourceProperties SiteToSiteVpnAttachment {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::SiteToSiteVpnAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CoreNetworkId" JSON..= coreNetworkId,
                            "VpnConnectionArn" JSON..= vpnConnectionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ProposedSegmentChange"
                                 Prelude.<$> proposedSegmentChange,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SiteToSiteVpnAttachment where
  toJSON SiteToSiteVpnAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CoreNetworkId" JSON..= coreNetworkId,
               "VpnConnectionArn" JSON..= vpnConnectionArn]
              (Prelude.catMaybes
                 [(JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" SiteToSiteVpnAttachment where
  type PropertyType "CoreNetworkId" SiteToSiteVpnAttachment = Value Prelude.Text
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {coreNetworkId = newValue, ..}
instance Property "ProposedSegmentChange" SiteToSiteVpnAttachment where
  type PropertyType "ProposedSegmentChange" SiteToSiteVpnAttachment = ProposedSegmentChangeProperty
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment
        {proposedSegmentChange = Prelude.pure newValue, ..}
instance Property "Tags" SiteToSiteVpnAttachment where
  type PropertyType "Tags" SiteToSiteVpnAttachment = [Tag]
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {tags = Prelude.pure newValue, ..}
instance Property "VpnConnectionArn" SiteToSiteVpnAttachment where
  type PropertyType "VpnConnectionArn" SiteToSiteVpnAttachment = Value Prelude.Text
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {vpnConnectionArn = newValue, ..}