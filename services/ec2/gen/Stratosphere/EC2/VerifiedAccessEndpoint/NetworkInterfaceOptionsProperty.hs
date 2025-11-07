module Stratosphere.EC2.VerifiedAccessEndpoint.NetworkInterfaceOptionsProperty (
        module Exports, NetworkInterfaceOptionsProperty(..),
        mkNetworkInterfaceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessEndpoint.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-networkinterfaceoptions.html>
    NetworkInterfaceOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-networkinterfaceoptions.html#cfn-ec2-verifiedaccessendpoint-networkinterfaceoptions-networkinterfaceid>
                                     networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-networkinterfaceoptions.html#cfn-ec2-verifiedaccessendpoint-networkinterfaceoptions-port>
                                     port :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-networkinterfaceoptions.html#cfn-ec2-verifiedaccessendpoint-networkinterfaceoptions-portranges>
                                     portRanges :: (Prelude.Maybe [PortRangeProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-networkinterfaceoptions.html#cfn-ec2-verifiedaccessendpoint-networkinterfaceoptions-protocol>
                                     protocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceOptionsProperty ::
  NetworkInterfaceOptionsProperty
mkNetworkInterfaceOptionsProperty
  = NetworkInterfaceOptionsProperty
      {haddock_workaround_ = (), networkInterfaceId = Prelude.Nothing,
       port = Prelude.Nothing, portRanges = Prelude.Nothing,
       protocol = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceOptionsProperty where
  toResourceProperties NetworkInterfaceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.NetworkInterfaceOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "PortRanges" Prelude.<$> portRanges,
                            (JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON NetworkInterfaceOptionsProperty where
  toJSON NetworkInterfaceOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "PortRanges" Prelude.<$> portRanges,
               (JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "NetworkInterfaceId" NetworkInterfaceOptionsProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceOptionsProperty = Value Prelude.Text
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "Port" NetworkInterfaceOptionsProperty where
  type PropertyType "Port" NetworkInterfaceOptionsProperty = Value Prelude.Integer
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {port = Prelude.pure newValue, ..}
instance Property "PortRanges" NetworkInterfaceOptionsProperty where
  type PropertyType "PortRanges" NetworkInterfaceOptionsProperty = [PortRangeProperty]
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {portRanges = Prelude.pure newValue, ..}
instance Property "Protocol" NetworkInterfaceOptionsProperty where
  type PropertyType "Protocol" NetworkInterfaceOptionsProperty = Value Prelude.Text
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {protocol = Prelude.pure newValue, ..}