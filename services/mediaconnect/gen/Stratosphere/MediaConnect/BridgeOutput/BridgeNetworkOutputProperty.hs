module Stratosphere.MediaConnect.BridgeOutput.BridgeNetworkOutputProperty (
        BridgeNetworkOutputProperty(..), mkBridgeNetworkOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeNetworkOutputProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgeoutput-bridgenetworkoutput.html>
    BridgeNetworkOutputProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgeoutput-bridgenetworkoutput.html#cfn-mediaconnect-bridgeoutput-bridgenetworkoutput-ipaddress>
                                 ipAddress :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgeoutput-bridgenetworkoutput.html#cfn-mediaconnect-bridgeoutput-bridgenetworkoutput-networkname>
                                 networkName :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgeoutput-bridgenetworkoutput.html#cfn-mediaconnect-bridgeoutput-bridgenetworkoutput-port>
                                 port :: (Value Prelude.Integer),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgeoutput-bridgenetworkoutput.html#cfn-mediaconnect-bridgeoutput-bridgenetworkoutput-protocol>
                                 protocol :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgeoutput-bridgenetworkoutput.html#cfn-mediaconnect-bridgeoutput-bridgenetworkoutput-ttl>
                                 ttl :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeNetworkOutputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text
           -> Value Prelude.Integer -> BridgeNetworkOutputProperty
mkBridgeNetworkOutputProperty
  ipAddress
  networkName
  port
  protocol
  ttl
  = BridgeNetworkOutputProperty
      {ipAddress = ipAddress, networkName = networkName, port = port,
       protocol = protocol, ttl = ttl}
instance ToResourceProperties BridgeNetworkOutputProperty where
  toResourceProperties BridgeNetworkOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::BridgeOutput.BridgeNetworkOutput",
         supportsTags = Prelude.False,
         properties = ["IpAddress" JSON..= ipAddress,
                       "NetworkName" JSON..= networkName, "Port" JSON..= port,
                       "Protocol" JSON..= protocol, "Ttl" JSON..= ttl]}
instance JSON.ToJSON BridgeNetworkOutputProperty where
  toJSON BridgeNetworkOutputProperty {..}
    = JSON.object
        ["IpAddress" JSON..= ipAddress, "NetworkName" JSON..= networkName,
         "Port" JSON..= port, "Protocol" JSON..= protocol,
         "Ttl" JSON..= ttl]
instance Property "IpAddress" BridgeNetworkOutputProperty where
  type PropertyType "IpAddress" BridgeNetworkOutputProperty = Value Prelude.Text
  set newValue BridgeNetworkOutputProperty {..}
    = BridgeNetworkOutputProperty {ipAddress = newValue, ..}
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