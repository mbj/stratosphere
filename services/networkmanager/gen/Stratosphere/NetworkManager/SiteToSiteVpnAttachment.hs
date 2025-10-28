module Stratosphere.NetworkManager.SiteToSiteVpnAttachment (
        module Exports, SiteToSiteVpnAttachment(..),
        mkSiteToSiteVpnAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.SiteToSiteVpnAttachment.ProposedNetworkFunctionGroupChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.SiteToSiteVpnAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SiteToSiteVpnAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html>
    SiteToSiteVpnAttachment {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html#cfn-networkmanager-sitetositevpnattachment-corenetworkid>
                             coreNetworkId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html#cfn-networkmanager-sitetositevpnattachment-networkfunctiongroupname>
                             networkFunctionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html#cfn-networkmanager-sitetositevpnattachment-proposednetworkfunctiongroupchange>
                             proposedNetworkFunctionGroupChange :: (Prelude.Maybe ProposedNetworkFunctionGroupChangeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html#cfn-networkmanager-sitetositevpnattachment-proposedsegmentchange>
                             proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html#cfn-networkmanager-sitetositevpnattachment-tags>
                             tags :: (Prelude.Maybe [Tag]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-sitetositevpnattachment.html#cfn-networkmanager-sitetositevpnattachment-vpnconnectionarn>
                             vpnConnectionArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSiteToSiteVpnAttachment ::
  Value Prelude.Text -> Value Prelude.Text -> SiteToSiteVpnAttachment
mkSiteToSiteVpnAttachment coreNetworkId vpnConnectionArn
  = SiteToSiteVpnAttachment
      {haddock_workaround_ = (), coreNetworkId = coreNetworkId,
       vpnConnectionArn = vpnConnectionArn,
       networkFunctionGroupName = Prelude.Nothing,
       proposedNetworkFunctionGroupChange = Prelude.Nothing,
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
                              [(JSON..=) "NetworkFunctionGroupName"
                                 Prelude.<$> networkFunctionGroupName,
                               (JSON..=) "ProposedNetworkFunctionGroupChange"
                                 Prelude.<$> proposedNetworkFunctionGroupChange,
                               (JSON..=) "ProposedSegmentChange"
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
                 [(JSON..=) "NetworkFunctionGroupName"
                    Prelude.<$> networkFunctionGroupName,
                  (JSON..=) "ProposedNetworkFunctionGroupChange"
                    Prelude.<$> proposedNetworkFunctionGroupChange,
                  (JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" SiteToSiteVpnAttachment where
  type PropertyType "CoreNetworkId" SiteToSiteVpnAttachment = Value Prelude.Text
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment {coreNetworkId = newValue, ..}
instance Property "NetworkFunctionGroupName" SiteToSiteVpnAttachment where
  type PropertyType "NetworkFunctionGroupName" SiteToSiteVpnAttachment = Value Prelude.Text
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment
        {networkFunctionGroupName = Prelude.pure newValue, ..}
instance Property "ProposedNetworkFunctionGroupChange" SiteToSiteVpnAttachment where
  type PropertyType "ProposedNetworkFunctionGroupChange" SiteToSiteVpnAttachment = ProposedNetworkFunctionGroupChangeProperty
  set newValue SiteToSiteVpnAttachment {..}
    = SiteToSiteVpnAttachment
        {proposedNetworkFunctionGroupChange = Prelude.pure newValue, ..}
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