module Stratosphere.EC2.TransitGatewayConnectPeer.TransitGatewayAttachmentBgpConfigurationProperty (
        TransitGatewayAttachmentBgpConfigurationProperty(..),
        mkTransitGatewayAttachmentBgpConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayAttachmentBgpConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration.html>
    TransitGatewayAttachmentBgpConfigurationProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration-bgpstatus>
                                                      bgpStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration-peeraddress>
                                                      peerAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration-peerasn>
                                                      peerAsn :: (Prelude.Maybe (Value Prelude.Double)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration-transitgatewayaddress>
                                                      transitGatewayAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayattachmentbgpconfiguration-transitgatewayasn>
                                                      transitGatewayAsn :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayAttachmentBgpConfigurationProperty ::
  TransitGatewayAttachmentBgpConfigurationProperty
mkTransitGatewayAttachmentBgpConfigurationProperty
  = TransitGatewayAttachmentBgpConfigurationProperty
      {haddock_workaround_ = (), bgpStatus = Prelude.Nothing,
       peerAddress = Prelude.Nothing, peerAsn = Prelude.Nothing,
       transitGatewayAddress = Prelude.Nothing,
       transitGatewayAsn = Prelude.Nothing}
instance ToResourceProperties TransitGatewayAttachmentBgpConfigurationProperty where
  toResourceProperties
    TransitGatewayAttachmentBgpConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayConnectPeer.TransitGatewayAttachmentBgpConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BgpStatus" Prelude.<$> bgpStatus,
                            (JSON..=) "PeerAddress" Prelude.<$> peerAddress,
                            (JSON..=) "PeerAsn" Prelude.<$> peerAsn,
                            (JSON..=) "TransitGatewayAddress"
                              Prelude.<$> transitGatewayAddress,
                            (JSON..=) "TransitGatewayAsn" Prelude.<$> transitGatewayAsn])}
instance JSON.ToJSON TransitGatewayAttachmentBgpConfigurationProperty where
  toJSON TransitGatewayAttachmentBgpConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BgpStatus" Prelude.<$> bgpStatus,
               (JSON..=) "PeerAddress" Prelude.<$> peerAddress,
               (JSON..=) "PeerAsn" Prelude.<$> peerAsn,
               (JSON..=) "TransitGatewayAddress"
                 Prelude.<$> transitGatewayAddress,
               (JSON..=) "TransitGatewayAsn" Prelude.<$> transitGatewayAsn]))
instance Property "BgpStatus" TransitGatewayAttachmentBgpConfigurationProperty where
  type PropertyType "BgpStatus" TransitGatewayAttachmentBgpConfigurationProperty = Value Prelude.Text
  set newValue TransitGatewayAttachmentBgpConfigurationProperty {..}
    = TransitGatewayAttachmentBgpConfigurationProperty
        {bgpStatus = Prelude.pure newValue, ..}
instance Property "PeerAddress" TransitGatewayAttachmentBgpConfigurationProperty where
  type PropertyType "PeerAddress" TransitGatewayAttachmentBgpConfigurationProperty = Value Prelude.Text
  set newValue TransitGatewayAttachmentBgpConfigurationProperty {..}
    = TransitGatewayAttachmentBgpConfigurationProperty
        {peerAddress = Prelude.pure newValue, ..}
instance Property "PeerAsn" TransitGatewayAttachmentBgpConfigurationProperty where
  type PropertyType "PeerAsn" TransitGatewayAttachmentBgpConfigurationProperty = Value Prelude.Double
  set newValue TransitGatewayAttachmentBgpConfigurationProperty {..}
    = TransitGatewayAttachmentBgpConfigurationProperty
        {peerAsn = Prelude.pure newValue, ..}
instance Property "TransitGatewayAddress" TransitGatewayAttachmentBgpConfigurationProperty where
  type PropertyType "TransitGatewayAddress" TransitGatewayAttachmentBgpConfigurationProperty = Value Prelude.Text
  set newValue TransitGatewayAttachmentBgpConfigurationProperty {..}
    = TransitGatewayAttachmentBgpConfigurationProperty
        {transitGatewayAddress = Prelude.pure newValue, ..}
instance Property "TransitGatewayAsn" TransitGatewayAttachmentBgpConfigurationProperty where
  type PropertyType "TransitGatewayAsn" TransitGatewayAttachmentBgpConfigurationProperty = Value Prelude.Double
  set newValue TransitGatewayAttachmentBgpConfigurationProperty {..}
    = TransitGatewayAttachmentBgpConfigurationProperty
        {transitGatewayAsn = Prelude.pure newValue, ..}