module Stratosphere.MediaConnect.Bridge.BridgeNetworkOutputProperty (
        BridgeNetworkOutputProperty(..), mkBridgeNetworkOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeNetworkOutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html>
    BridgeNetworkOutputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html#cfn-mediaconnect-bridge-bridgenetworkoutput-ipaddress>
                                 ipAddress :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html#cfn-mediaconnect-bridge-bridgenetworkoutput-name>
                                 name :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html#cfn-mediaconnect-bridge-bridgenetworkoutput-networkname>
                                 networkName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html#cfn-mediaconnect-bridge-bridgenetworkoutput-port>
                                 port :: (Value Prelude.Integer),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html#cfn-mediaconnect-bridge-bridgenetworkoutput-protocol>
                                 protocol :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworkoutput.html#cfn-mediaconnect-bridge-bridgenetworkoutput-ttl>
                                 ttl :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeNetworkOutputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Text
              -> Value Prelude.Integer -> BridgeNetworkOutputProperty
mkBridgeNetworkOutputProperty
  ipAddress
  name
  networkName
  port
  protocol
  ttl
  = BridgeNetworkOutputProperty
      {haddock_workaround_ = (), ipAddress = ipAddress, name = name,
       networkName = networkName, port = port, protocol = protocol,
       ttl = ttl}
instance ToResourceProperties BridgeNetworkOutputProperty where
  toResourceProperties BridgeNetworkOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.BridgeNetworkOutput",
         supportsTags = Prelude.False,
         properties = ["IpAddress" JSON..= ipAddress, "Name" JSON..= name,
                       "NetworkName" JSON..= networkName, "Port" JSON..= port,
                       "Protocol" JSON..= protocol, "Ttl" JSON..= ttl]}
instance JSON.ToJSON BridgeNetworkOutputProperty where
  toJSON BridgeNetworkOutputProperty {..}
    = JSON.object
        ["IpAddress" JSON..= ipAddress, "Name" JSON..= name,
         "NetworkName" JSON..= networkName, "Port" JSON..= port,
         "Protocol" JSON..= protocol, "Ttl" JSON..= ttl]
instance Property "IpAddress" BridgeNetworkOutputProperty where
  type PropertyType "IpAddress" BridgeNetworkOutputProperty = Value Prelude.Text
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {ipAddress = newValue, ..}
instance Property "Name" BridgeNetworkOutputProperty where
  type PropertyType "Name" BridgeNetworkOutputProperty = Value Prelude.Text
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {name = newValue, ..}
instance Property "NetworkName" BridgeNetworkOutputProperty where
  type PropertyType "NetworkName" BridgeNetworkOutputProperty = Value Prelude.Text
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {networkName = newValue, ..}
instance Property "Port" BridgeNetworkOutputProperty where
  type PropertyType "Port" BridgeNetworkOutputProperty = Value Prelude.Integer
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {port = newValue, ..}
instance Property "Protocol" BridgeNetworkOutputProperty where
  type PropertyType "Protocol" BridgeNetworkOutputProperty = Value Prelude.Text
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {protocol = newValue, ..}
instance Property "Ttl" BridgeNetworkOutputProperty where
  type PropertyType "Ttl" BridgeNetworkOutputProperty = Value Prelude.Integer
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {ttl = newValue, ..}