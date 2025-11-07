module Stratosphere.EC2.RouteServerPeer.BgpOptionsProperty (
        BgpOptionsProperty(..), mkBgpOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BgpOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-routeserverpeer-bgpoptions.html>
    BgpOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-routeserverpeer-bgpoptions.html#cfn-ec2-routeserverpeer-bgpoptions-peerasn>
                        peerAsn :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-routeserverpeer-bgpoptions.html#cfn-ec2-routeserverpeer-bgpoptions-peerlivenessdetection>
                        peerLivenessDetection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBgpOptionsProperty :: BgpOptionsProperty
mkBgpOptionsProperty
  = BgpOptionsProperty
      {haddock_workaround_ = (), peerAsn = Prelude.Nothing,
       peerLivenessDetection = Prelude.Nothing}
instance ToResourceProperties BgpOptionsProperty where
  toResourceProperties BgpOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteServerPeer.BgpOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PeerAsn" Prelude.<$> peerAsn,
                            (JSON..=) "PeerLivenessDetection"
                              Prelude.<$> peerLivenessDetection])}
instance JSON.ToJSON BgpOptionsProperty where
  toJSON BgpOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PeerAsn" Prelude.<$> peerAsn,
               (JSON..=) "PeerLivenessDetection"
                 Prelude.<$> peerLivenessDetection]))
instance Property "PeerAsn" BgpOptionsProperty where
  type PropertyType "PeerAsn" BgpOptionsProperty = Value Prelude.Integer
  set newValue BgpOptionsProperty {..}
    = BgpOptionsProperty {peerAsn = Prelude.pure newValue, ..}
instance Property "PeerLivenessDetection" BgpOptionsProperty where
  type PropertyType "PeerLivenessDetection" BgpOptionsProperty = Value Prelude.Text
  set newValue BgpOptionsProperty {..}
    = BgpOptionsProperty
        {peerLivenessDetection = Prelude.pure newValue, ..}