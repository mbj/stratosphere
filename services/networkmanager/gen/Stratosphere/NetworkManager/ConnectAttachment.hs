module Stratosphere.NetworkManager.ConnectAttachment (
        module Exports, ConnectAttachment(..), mkConnectAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectAttachment.ConnectAttachmentOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.ConnectAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConnectAttachment
  = ConnectAttachment {coreNetworkId :: (Value Prelude.Text),
                       edgeLocation :: (Value Prelude.Text),
                       options :: ConnectAttachmentOptionsProperty,
                       proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                       tags :: (Prelude.Maybe [Tag]),
                       transportAttachmentId :: (Value Prelude.Text)}
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
      {coreNetworkId = coreNetworkId, edgeLocation = edgeLocation,
       options = options, transportAttachmentId = transportAttachmentId,
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
                              [(JSON..=) "ProposedSegmentChange"
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
                 [(JSON..=) "ProposedSegmentChange"
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
instance Property "Options" ConnectAttachment where
  type PropertyType "Options" ConnectAttachment = ConnectAttachmentOptionsProperty
  set newValue ConnectAttachment {..}
    = ConnectAttachment {options = newValue, ..}
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