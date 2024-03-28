module Stratosphere.MediaConnect.Bridge (
        module Exports, Bridge(..), mkBridge
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.BridgeOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.BridgeSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.EgressGatewayBridgeProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.FailoverConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.IngressGatewayBridgeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Bridge
  = Bridge {egressGatewayBridge :: (Prelude.Maybe EgressGatewayBridgeProperty),
            ingressGatewayBridge :: (Prelude.Maybe IngressGatewayBridgeProperty),
            name :: (Value Prelude.Text),
            outputs :: (Prelude.Maybe [BridgeOutputProperty]),
            placementArn :: (Value Prelude.Text),
            sourceFailoverConfig :: (Prelude.Maybe FailoverConfigProperty),
            sources :: [BridgeSourceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridge ::
  Value Prelude.Text
  -> Value Prelude.Text -> [BridgeSourceProperty] -> Bridge
mkBridge name placementArn sources
  = Bridge
      {name = name, placementArn = placementArn, sources = sources,
       egressGatewayBridge = Prelude.Nothing,
       ingressGatewayBridge = Prelude.Nothing, outputs = Prelude.Nothing,
       sourceFailoverConfig = Prelude.Nothing}
instance ToResourceProperties Bridge where
  toResourceProperties Bridge {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "PlacementArn" JSON..= placementArn,
                            "Sources" JSON..= sources]
                           (Prelude.catMaybes
                              [(JSON..=) "EgressGatewayBridge" Prelude.<$> egressGatewayBridge,
                               (JSON..=) "IngressGatewayBridge" Prelude.<$> ingressGatewayBridge,
                               (JSON..=) "Outputs" Prelude.<$> outputs,
                               (JSON..=) "SourceFailoverConfig"
                                 Prelude.<$> sourceFailoverConfig]))}
instance JSON.ToJSON Bridge where
  toJSON Bridge {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "PlacementArn" JSON..= placementArn,
               "Sources" JSON..= sources]
              (Prelude.catMaybes
                 [(JSON..=) "EgressGatewayBridge" Prelude.<$> egressGatewayBridge,
                  (JSON..=) "IngressGatewayBridge" Prelude.<$> ingressGatewayBridge,
                  (JSON..=) "Outputs" Prelude.<$> outputs,
                  (JSON..=) "SourceFailoverConfig"
                    Prelude.<$> sourceFailoverConfig])))
instance Property "EgressGatewayBridge" Bridge where
  type PropertyType "EgressGatewayBridge" Bridge = EgressGatewayBridgeProperty
  set newValue Bridge {..}
    = Bridge {egressGatewayBridge = Prelude.pure newValue, ..}
instance Property "IngressGatewayBridge" Bridge where
  type PropertyType "IngressGatewayBridge" Bridge = IngressGatewayBridgeProperty
  set newValue Bridge {..}
    = Bridge {ingressGatewayBridge = Prelude.pure newValue, ..}
instance Property "Name" Bridge where
  type PropertyType "Name" Bridge = Value Prelude.Text
  set newValue Bridge {..} = Bridge {name = newValue, ..}
instance Property "Outputs" Bridge where
  type PropertyType "Outputs" Bridge = [BridgeOutputProperty]
  set newValue Bridge {..}
    = Bridge {outputs = Prelude.pure newValue, ..}
instance Property "PlacementArn" Bridge where
  type PropertyType "PlacementArn" Bridge = Value Prelude.Text
  set newValue Bridge {..} = Bridge {placementArn = newValue, ..}
instance Property "SourceFailoverConfig" Bridge where
  type PropertyType "SourceFailoverConfig" Bridge = FailoverConfigProperty
  set newValue Bridge {..}
    = Bridge {sourceFailoverConfig = Prelude.pure newValue, ..}
instance Property "Sources" Bridge where
  type PropertyType "Sources" Bridge = [BridgeSourceProperty]
  set newValue Bridge {..} = Bridge {sources = newValue, ..}