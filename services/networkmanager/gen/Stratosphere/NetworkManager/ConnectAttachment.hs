module Stratosphere.NetworkManager.ConnectAttachment (
        module Exports, ConnectAttachment(..), mkConnectAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectAttachment.ConnectAttachmentOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectAttachment.ProposedNetworkFunctionGroupChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConnectAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html>
    ConnectAttachment {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-corenetworkid>
                       coreNetworkId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-edgelocation>
                       edgeLocation :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-networkfunctiongroupname>
                       networkFunctionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-options>
                       options :: ConnectAttachmentOptionsProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-proposednetworkfunctiongroupchange>
                       proposedNetworkFunctionGroupChange :: (Prelude.Maybe ProposedNetworkFunctionGroupChangeProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-proposedsegmentchange>
                       proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-tags>
                       tags :: (Prelude.Maybe [Tag]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-connectattachment.html#cfn-networkmanager-connectattachment-transportattachmentid>
                       transportAttachmentId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ConnectAttachmentOptionsProperty
        -> Value Prelude.Text -> ConnectAttachment
mkConnectAttachment
  coreNetworkId
  edgeLocation
  options
  transportAttachmentId
  = ConnectAttachment
      {haddock_workaround_ = (), coreNetworkId = coreNetworkId,
       edgeLocation = edgeLocation, options = options,
       transportAttachmentId = transportAttachmentId,
       networkFunctionGroupName = Prelude.Nothing,
       proposedNetworkFunctionGroupChange = Prelude.Nothing,
       proposedSegmentChange = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConnectAttachment where
  toResourceProperties ConnectAttachment {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CoreNetworkId" JSON..= coreNetworkId,
                            "EdgeLocation" JSON..= edgeLocation, "Options" JSON..= options,
                            "TransportAttachmentId" JSON..= transportAttachmentId]
                           (Prelude.catMaybes
                              [(JSON..=) "NetworkFunctionGroupName"
                                 Prelude.<$> networkFunctionGroupName,
                               (JSON..=) "ProposedNetworkFunctionGroupChange"
                                 Prelude.<$> proposedNetworkFunctionGroupChange,
                               (JSON..=) "ProposedSegmentChange"
                                 Prelude.<$> proposedSegmentChange,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConnectAttachment where
  toJSON ConnectAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CoreNetworkId" JSON..= coreNetworkId,
               "EdgeLocation" JSON..= edgeLocation, "Options" JSON..= options,
               "TransportAttachmentId" JSON..= transportAttachmentId]
              (Prelude.catMaybes
                 [(JSON..=) "NetworkFunctionGroupName"
                    Prelude.<$> networkFunctionGroupName,
                  (JSON..=) "ProposedNetworkFunctionGroupChange"
                    Prelude.<$> proposedNetworkFunctionGroupChange,
                  (JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" ConnectAttachment where
  type PropertyType "CoreNetworkId" ConnectAttachment = Value Prelude.Text
  set newValue ConnectAttachment {..}
    = ConnectAttachment {coreNetworkId = newValue, ..}
instance Property "EdgeLocation" ConnectAttachment where
  type PropertyType "EdgeLocation" ConnectAttachment = Value Prelude.Text
  set newValue ConnectAttachment {..}
    = ConnectAttachment {edgeLocation = newValue, ..}
instance Property "NetworkFunctionGroupName" ConnectAttachment where
  type PropertyType "NetworkFunctionGroupName" ConnectAttachment = Value Prelude.Text
  set newValue ConnectAttachment {..}
    = ConnectAttachment
        {networkFunctionGroupName = Prelude.pure newValue, ..}
instance Property "Options" ConnectAttachment where
  type PropertyType "Options" ConnectAttachment = ConnectAttachmentOptionsProperty
  set newValue ConnectAttachment {..}
    = ConnectAttachment {options = newValue, ..}
instance Property "ProposedNetworkFunctionGroupChange" ConnectAttachment where
  type PropertyType "ProposedNetworkFunctionGroupChange" ConnectAttachment = ProposedNetworkFunctionGroupChangeProperty
  set newValue ConnectAttachment {..}
    = ConnectAttachment
        {proposedNetworkFunctionGroupChange = Prelude.pure newValue, ..}
instance Property "ProposedSegmentChange" ConnectAttachment where
  type PropertyType "ProposedSegmentChange" ConnectAttachment = ProposedSegmentChangeProperty
  set newValue ConnectAttachment {..}
    = ConnectAttachment
        {proposedSegmentChange = Prelude.pure newValue, ..}
instance Property "Tags" ConnectAttachment where
  type PropertyType "Tags" ConnectAttachment = [Tag]
  set newValue ConnectAttachment {..}
    = ConnectAttachment {tags = Prelude.pure newValue, ..}
instance Property "TransportAttachmentId" ConnectAttachment where
  type PropertyType "TransportAttachmentId" ConnectAttachment = Value Prelude.Text
  set newValue ConnectAttachment {..}
    = ConnectAttachment {transportAttachmentId = newValue, ..}