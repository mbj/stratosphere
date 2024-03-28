module Stratosphere.MediaConnect.Bridge.BridgeNetworkSourceProperty (
        BridgeNetworkSourceProperty(..), mkBridgeNetworkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeNetworkSourceProperty
  = BridgeNetworkSourceProperty {multicastIp :: (Value Prelude.Text),
                                 name :: (Value Prelude.Text),
                                 networkName :: (Value Prelude.Text),
                                 port :: (Value Prelude.Integer),
                                 protocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeNetworkSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Text -> BridgeNetworkSourceProperty
mkBridgeNetworkSourceProperty
  multicastIp
  name
  networkName
  port
  protocol
  = BridgeNetworkSourceProperty
      {multicastIp = multicastIp, name = name, networkName = networkName,
       port = port, protocol = protocol}
instance ToResourceProperties BridgeNetworkSourceProperty where
  toResourceProperties BridgeNetworkSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.BridgeNetworkSource",
         supportsTags = Prelude.False,
         properties = ["MulticastIp" JSON..= multicastIp,
                       "Name" JSON..= name, "NetworkName" JSON..= networkName,
                       "Port" JSON..= port, "Protocol" JSON..= protocol]}
instance JSON.ToJSON BridgeNetworkSourceProperty where
  toJSON BridgeNetworkSourceProperty {..}
    = JSON.object
        ["MulticastIp" JSON..= multicastIp, "Name" JSON..= name,
         "NetworkName" JSON..= networkName, "Port" JSON..= port,
         "Protocol" JSON..= protocol]
instance Property "MulticastIp" BridgeNetworkSourceProperty where
  type PropertyType "MulticastIp" BridgeNetworkSourceProperty = Value Prelude.Text
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {multicastIp = newValue, ..}
instance Property "Name" BridgeNetworkSourceProperty where
  type PropertyType "Name" BridgeNetworkSourceProperty = Value Prelude.Text
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {name = newValue, ..}
instance Property "NetworkName" BridgeNetworkSourceProperty where
  type PropertyType "NetworkName" BridgeNetworkSourceProperty = Value Prelude.Text
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {networkName = newValue, ..}
instance Property "Port" BridgeNetworkSourceProperty where
  type PropertyType "Port" BridgeNetworkSourceProperty = Value Prelude.Integer
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {port = newValue, ..}
instance Property "Protocol" BridgeNetworkSourceProperty where
  type PropertyType "Protocol" BridgeNetworkSourceProperty = Value Prelude.Text
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {protocol = newValue, ..}