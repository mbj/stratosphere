module Stratosphere.NetworkManager.ConnectPeer.BgpOptionsProperty (
        BgpOptionsProperty(..), mkBgpOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BgpOptionsProperty
  = BgpOptionsProperty {peerAsn :: (Prelude.Maybe (Value Prelude.Double))}
mkBgpOptionsProperty :: BgpOptionsProperty
mkBgpOptionsProperty
  = BgpOptionsProperty {peerAsn = Prelude.Nothing}
instance ToResourceProperties BgpOptionsProperty where
  toResourceProperties BgpOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectPeer.BgpOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "PeerAsn" Prelude.<$> peerAsn])}
instance JSON.ToJSON BgpOptionsProperty where
  toJSON BgpOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "PeerAsn" Prelude.<$> peerAsn]))
instance Property "PeerAsn" BgpOptionsProperty where
  type PropertyType "PeerAsn" BgpOptionsProperty = Value Prelude.Double
  set newValue BgpOptionsProperty {}
    = BgpOptionsProperty {peerAsn = Prelude.pure newValue, ..}