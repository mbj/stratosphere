module Stratosphere.EC2.TransitGatewayConnectPeer.TransitGatewayConnectPeerConfigurationProperty (
        module Exports, TransitGatewayConnectPeerConfigurationProperty(..),
        mkTransitGatewayConnectPeerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TransitGatewayConnectPeer.TransitGatewayAttachmentBgpConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayConnectPeerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html>
    TransitGatewayConnectPeerConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-bgpconfigurations>
                                                    bgpConfigurations :: (Prelude.Maybe [TransitGatewayAttachmentBgpConfigurationProperty]),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-insidecidrblocks>
                                                    insideCidrBlocks :: (ValueList Prelude.Text),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-peeraddress>
                                                    peerAddress :: (Value Prelude.Text),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-protocol>
                                                    protocol :: (Prelude.Maybe (Value Prelude.Text)),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-transitgatewayaddress>
                                                    transitGatewayAddress :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayConnectPeerConfigurationProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> TransitGatewayConnectPeerConfigurationProperty
mkTransitGatewayConnectPeerConfigurationProperty
  insideCidrBlocks
  peerAddress
  = TransitGatewayConnectPeerConfigurationProperty
      {haddock_workaround_ = (), insideCidrBlocks = insideCidrBlocks,
       peerAddress = peerAddress, bgpConfigurations = Prelude.Nothing,
       protocol = Prelude.Nothing,
       transitGatewayAddress = Prelude.Nothing}
instance ToResourceProperties TransitGatewayConnectPeerConfigurationProperty where
  toResourceProperties
    TransitGatewayConnectPeerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayConnectPeer.TransitGatewayConnectPeerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InsideCidrBlocks" JSON..= insideCidrBlocks,
                            "PeerAddress" JSON..= peerAddress]
                           (Prelude.catMaybes
                              [(JSON..=) "BgpConfigurations" Prelude.<$> bgpConfigurations,
                               (JSON..=) "Protocol" Prelude.<$> protocol,
                               (JSON..=) "TransitGatewayAddress"
                                 Prelude.<$> transitGatewayAddress]))}
instance JSON.ToJSON TransitGatewayConnectPeerConfigurationProperty where
  toJSON TransitGatewayConnectPeerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InsideCidrBlocks" JSON..= insideCidrBlocks,
               "PeerAddress" JSON..= peerAddress]
              (Prelude.catMaybes
                 [(JSON..=) "BgpConfigurations" Prelude.<$> bgpConfigurations,
                  (JSON..=) "Protocol" Prelude.<$> protocol,
                  (JSON..=) "TransitGatewayAddress"
                    Prelude.<$> transitGatewayAddress])))
instance Property "BgpConfigurations" TransitGatewayConnectPeerConfigurationProperty where
  type PropertyType "BgpConfigurations" TransitGatewayConnectPeerConfigurationProperty = [TransitGatewayAttachmentBgpConfigurationProperty]
  set newValue TransitGatewayConnectPeerConfigurationProperty {..}
    = TransitGatewayConnectPeerConfigurationProperty
        {bgpConfigurations = Prelude.pure newValue, ..}
instance Property "InsideCidrBlocks" TransitGatewayConnectPeerConfigurationProperty where
  type PropertyType "InsideCidrBlocks" TransitGatewayConnectPeerConfigurationProperty = ValueList Prelude.Text
  set newValue TransitGatewayConnectPeerConfigurationProperty {..}
    = TransitGatewayConnectPeerConfigurationProperty
        {insideCidrBlocks = newValue, ..}
instance Property "PeerAddress" TransitGatewayConnectPeerConfigurationProperty where
  type PropertyType "PeerAddress" TransitGatewayConnectPeerConfigurationProperty = Value Prelude.Text
  set newValue TransitGatewayConnectPeerConfigurationProperty {..}
    = TransitGatewayConnectPeerConfigurationProperty
        {peerAddress = newValue, ..}
instance Property "Protocol" TransitGatewayConnectPeerConfigurationProperty where
  type PropertyType "Protocol" TransitGatewayConnectPeerConfigurationProperty = Value Prelude.Text
  set newValue TransitGatewayConnectPeerConfigurationProperty {..}
    = TransitGatewayConnectPeerConfigurationProperty
        {protocol = Prelude.pure newValue, ..}
instance Property "TransitGatewayAddress" TransitGatewayConnectPeerConfigurationProperty where
  type PropertyType "TransitGatewayAddress" TransitGatewayConnectPeerConfigurationProperty = Value Prelude.Text
  set newValue TransitGatewayConnectPeerConfigurationProperty {..}
    = TransitGatewayConnectPeerConfigurationProperty
        {transitGatewayAddress = Prelude.pure newValue, ..}