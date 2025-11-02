module Stratosphere.NetworkManager.CoreNetwork.CoreNetworkEdgeProperty (
        CoreNetworkEdgeProperty(..), mkCoreNetworkEdgeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreNetworkEdgeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworkedge.html>
    CoreNetworkEdgeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworkedge.html#cfn-networkmanager-corenetwork-corenetworkedge-asn>
                             asn :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworkedge.html#cfn-networkmanager-corenetwork-corenetworkedge-edgelocation>
                             edgeLocation :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworkedge.html#cfn-networkmanager-corenetwork-corenetworkedge-insidecidrblocks>
                             insideCidrBlocks :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreNetworkEdgeProperty :: CoreNetworkEdgeProperty
mkCoreNetworkEdgeProperty
  = CoreNetworkEdgeProperty
      {haddock_workaround_ = (), asn = Prelude.Nothing,
       edgeLocation = Prelude.Nothing, insideCidrBlocks = Prelude.Nothing}
instance ToResourceProperties CoreNetworkEdgeProperty where
  toResourceProperties CoreNetworkEdgeProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork.CoreNetworkEdge",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Asn" Prelude.<$> asn,
                            (JSON..=) "EdgeLocation" Prelude.<$> edgeLocation,
                            (JSON..=) "InsideCidrBlocks" Prelude.<$> insideCidrBlocks])}
instance JSON.ToJSON CoreNetworkEdgeProperty where
  toJSON CoreNetworkEdgeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Asn" Prelude.<$> asn,
               (JSON..=) "EdgeLocation" Prelude.<$> edgeLocation,
               (JSON..=) "InsideCidrBlocks" Prelude.<$> insideCidrBlocks]))
instance Property "Asn" CoreNetworkEdgeProperty where
  type PropertyType "Asn" CoreNetworkEdgeProperty = Value Prelude.Double
  set newValue CoreNetworkEdgeProperty {..}
    = CoreNetworkEdgeProperty {asn = Prelude.pure newValue, ..}
instance Property "EdgeLocation" CoreNetworkEdgeProperty where
  type PropertyType "EdgeLocation" CoreNetworkEdgeProperty = Value Prelude.Text
  set newValue CoreNetworkEdgeProperty {..}
    = CoreNetworkEdgeProperty
        {edgeLocation = Prelude.pure newValue, ..}
instance Property "InsideCidrBlocks" CoreNetworkEdgeProperty where
  type PropertyType "InsideCidrBlocks" CoreNetworkEdgeProperty = ValueList Prelude.Text
  set newValue CoreNetworkEdgeProperty {..}
    = CoreNetworkEdgeProperty
        {insideCidrBlocks = Prelude.pure newValue, ..}