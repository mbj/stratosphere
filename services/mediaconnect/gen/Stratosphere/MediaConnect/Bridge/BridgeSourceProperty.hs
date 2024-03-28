module Stratosphere.MediaConnect.Bridge.BridgeSourceProperty (
        module Exports, BridgeSourceProperty(..), mkBridgeSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.BridgeFlowSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.BridgeNetworkSourceProperty as Exports
import Stratosphere.ResourceProperties
data BridgeSourceProperty
  = BridgeSourceProperty {flowSource :: (Prelude.Maybe BridgeFlowSourceProperty),
                          networkSource :: (Prelude.Maybe BridgeNetworkSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeSourceProperty :: BridgeSourceProperty
mkBridgeSourceProperty
  = BridgeSourceProperty
      {flowSource = Prelude.Nothing, networkSource = Prelude.Nothing}
instance ToResourceProperties BridgeSourceProperty where
  toResourceProperties BridgeSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.BridgeSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FlowSource" Prelude.<$> flowSource,
                            (JSON..=) "NetworkSource" Prelude.<$> networkSource])}
instance JSON.ToJSON BridgeSourceProperty where
  toJSON BridgeSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FlowSource" Prelude.<$> flowSource,
               (JSON..=) "NetworkSource" Prelude.<$> networkSource]))
instance Property "FlowSource" BridgeSourceProperty where
  type PropertyType "FlowSource" BridgeSourceProperty = BridgeFlowSourceProperty
  set newValue BridgeSourceProperty {..}
    = BridgeSourceProperty {flowSource = Prelude.pure newValue, ..}
instance Property "NetworkSource" BridgeSourceProperty where
  type PropertyType "NetworkSource" BridgeSourceProperty = BridgeNetworkSourceProperty
  set newValue BridgeSourceProperty {..}
    = BridgeSourceProperty {networkSource = Prelude.pure newValue, ..}