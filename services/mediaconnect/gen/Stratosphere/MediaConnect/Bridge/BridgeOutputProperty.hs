module Stratosphere.MediaConnect.Bridge.BridgeOutputProperty (
        module Exports, BridgeOutputProperty(..), mkBridgeOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.BridgeNetworkOutputProperty as Exports
import Stratosphere.ResourceProperties
data BridgeOutputProperty
  = BridgeOutputProperty {networkOutput :: (Prelude.Maybe BridgeNetworkOutputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeOutputProperty :: BridgeOutputProperty
mkBridgeOutputProperty
  = BridgeOutputProperty {networkOutput = Prelude.Nothing}
instance ToResourceProperties BridgeOutputProperty where
  toResourceProperties BridgeOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.BridgeOutput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkOutput" Prelude.<$> networkOutput])}
instance JSON.ToJSON BridgeOutputProperty where
  toJSON BridgeOutputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkOutput" Prelude.<$> networkOutput]))
instance Property "NetworkOutput" BridgeOutputProperty where
  type PropertyType "NetworkOutput" BridgeOutputProperty = BridgeNetworkOutputProperty
  set newValue BridgeOutputProperty {}
    = BridgeOutputProperty {networkOutput = Prelude.pure newValue, ..}