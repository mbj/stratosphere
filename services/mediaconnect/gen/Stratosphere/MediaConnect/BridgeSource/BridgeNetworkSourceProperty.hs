module Stratosphere.MediaConnect.BridgeSource.BridgeNetworkSourceProperty (
        BridgeNetworkSourceProperty(..), mkBridgeNetworkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeNetworkSourceProperty
  = BridgeNetworkSourceProperty {multicastIp :: (Value Prelude.Text),
                                 networkName :: (Value Prelude.Text),
                                 port :: (Value Prelude.Integer),
                                 protocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeNetworkSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text -> BridgeNetworkSourceProperty
mkBridgeNetworkSourceProperty multicastIp networkName port protocol
  = BridgeNetworkSourceProperty
      {multicastIp = multicastIp, networkName = networkName, port = port,
       protocol = protocol}
instance ToResourceProperties BridgeNetworkSourceProperty where
  toResourceProperties BridgeNetworkSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::BridgeSource.BridgeNetworkSource",
         supportsTags = Prelude.False,
         properties = ["MulticastIp" JSON..= multicastIp,
                       "NetworkName" JSON..= networkName, "Port" JSON..= port,
                       "Protocol" JSON..= protocol]}
instance JSON.ToJSON BridgeNetworkSourceProperty where
  toJSON BridgeNetworkSourceProperty {..}
    = JSON.object
        ["MulticastIp" JSON..= multicastIp,
         "NetworkName" JSON..= networkName, "Port" JSON..= port,
         "Protocol" JSON..= protocol]
instance Property "MulticastIp" BridgeNetworkSourceProperty where
  type PropertyType "MulticastIp" BridgeNetworkSourceProperty = Value Prelude.Text
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {multicastIp = newValue, ..}
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