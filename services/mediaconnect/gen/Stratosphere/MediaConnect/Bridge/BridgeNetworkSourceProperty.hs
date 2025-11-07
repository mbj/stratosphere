module Stratosphere.MediaConnect.Bridge.BridgeNetworkSourceProperty (
        module Exports, BridgeNetworkSourceProperty(..),
        mkBridgeNetworkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.MulticastSourceSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeNetworkSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html>
    BridgeNetworkSourceProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html#cfn-mediaconnect-bridge-bridgenetworksource-multicastip>
                                 multicastIp :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html#cfn-mediaconnect-bridge-bridgenetworksource-multicastsourcesettings>
                                 multicastSourceSettings :: (Prelude.Maybe MulticastSourceSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html#cfn-mediaconnect-bridge-bridgenetworksource-name>
                                 name :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html#cfn-mediaconnect-bridge-bridgenetworksource-networkname>
                                 networkName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html#cfn-mediaconnect-bridge-bridgenetworksource-port>
                                 port :: (Value Prelude.Integer),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-bridgenetworksource.html#cfn-mediaconnect-bridge-bridgenetworksource-protocol>
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
      {haddock_workaround_ = (), multicastIp = multicastIp, name = name,
       networkName = networkName, port = port, protocol = protocol,
       multicastSourceSettings = Prelude.Nothing}
instance ToResourceProperties BridgeNetworkSourceProperty where
  toResourceProperties BridgeNetworkSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.BridgeNetworkSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MulticastIp" JSON..= multicastIp, "Name" JSON..= name,
                            "NetworkName" JSON..= networkName, "Port" JSON..= port,
                            "Protocol" JSON..= protocol]
                           (Prelude.catMaybes
                              [(JSON..=) "MulticastSourceSettings"
                                 Prelude.<$> multicastSourceSettings]))}
instance JSON.ToJSON BridgeNetworkSourceProperty where
  toJSON BridgeNetworkSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MulticastIp" JSON..= multicastIp, "Name" JSON..= name,
               "NetworkName" JSON..= networkName, "Port" JSON..= port,
               "Protocol" JSON..= protocol]
              (Prelude.catMaybes
                 [(JSON..=) "MulticastSourceSettings"
                    Prelude.<$> multicastSourceSettings])))
instance Property "MulticastIp" BridgeNetworkSourceProperty where
  type PropertyType "MulticastIp" BridgeNetworkSourceProperty = Value Prelude.Text
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty {multicastIp = newValue, ..}
instance Property "MulticastSourceSettings" BridgeNetworkSourceProperty where
  type PropertyType "MulticastSourceSettings" BridgeNetworkSourceProperty = MulticastSourceSettingsProperty
  set newValue BridgeNetworkSourceProperty {..}
    = BridgeNetworkSourceProperty
        {multicastSourceSettings = Prelude.pure newValue, ..}
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