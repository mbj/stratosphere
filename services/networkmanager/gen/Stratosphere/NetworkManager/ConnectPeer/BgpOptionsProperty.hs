module Stratosphere.NetworkManager.ConnectPeer.BgpOptionsProperty (
        BgpOptionsProperty(..), mkBgpOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BgpOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-connectpeer-bgpoptions.html>
    BgpOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-connectpeer-bgpoptions.html#cfn-networkmanager-connectpeer-bgpoptions-peerasn>
                        peerAsn :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBgpOptionsProperty :: BgpOptionsProperty
mkBgpOptionsProperty
  = BgpOptionsProperty
      {haddock_workaround_ = (), peerAsn = Prelude.Nothing}
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
  set newValue BgpOptionsProperty {..}
    = BgpOptionsProperty {peerAsn = Prelude.pure newValue, ..}