module Stratosphere.NetworkManager.CoreNetwork.CoreNetworkEdgeProperty (
        CoreNetworkEdgeProperty(..), mkCoreNetworkEdgeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreNetworkEdgeProperty
  = CoreNetworkEdgeProperty {asn :: (Prelude.Maybe (Value Prelude.Double)),
                             edgeLocation :: (Prelude.Maybe (Value Prelude.Text)),
                             insideCidrBlocks :: (Prelude.Maybe (ValueList Prelude.Text))}
mkCoreNetworkEdgeProperty :: CoreNetworkEdgeProperty
mkCoreNetworkEdgeProperty
  = CoreNetworkEdgeProperty
      {asn = Prelude.Nothing, edgeLocation = Prelude.Nothing,
       insideCidrBlocks = Prelude.Nothing}
instance ToResourceProperties CoreNetworkEdgeProperty where
  toResourceProperties CoreNetworkEdgeProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork.CoreNetworkEdge",
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