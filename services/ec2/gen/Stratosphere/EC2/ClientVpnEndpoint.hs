module Stratosphere.EC2.ClientVpnEndpoint (
        module Exports, ClientVpnEndpoint(..), mkClientVpnEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.ClientAuthenticationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.ClientConnectOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.ClientLoginBannerOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.ConnectionLogOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientVpnEndpoint
  = ClientVpnEndpoint {authenticationOptions :: [ClientAuthenticationRequestProperty],
                       clientCidrBlock :: (Value Prelude.Text),
                       clientConnectOptions :: (Prelude.Maybe ClientConnectOptionsProperty),
                       clientLoginBannerOptions :: (Prelude.Maybe ClientLoginBannerOptionsProperty),
                       connectionLogOptions :: ConnectionLogOptionsProperty,
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       dnsServers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       selfServicePortal :: (Prelude.Maybe (Value Prelude.Text)),
                       serverCertificateArn :: (Value Prelude.Text),
                       sessionTimeoutHours :: (Prelude.Maybe (Value Prelude.Integer)),
                       splitTunnel :: (Prelude.Maybe (Value Prelude.Bool)),
                       tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                       transportProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                       vpcId :: (Prelude.Maybe (Value Prelude.Text)),
                       vpnPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkClientVpnEndpoint ::
  [ClientAuthenticationRequestProperty]
  -> Value Prelude.Text
     -> ConnectionLogOptionsProperty
        -> Value Prelude.Text -> ClientVpnEndpoint
mkClientVpnEndpoint
  authenticationOptions
  clientCidrBlock
  connectionLogOptions
  serverCertificateArn
  = ClientVpnEndpoint
      {authenticationOptions = authenticationOptions,
       clientCidrBlock = clientCidrBlock,
       connectionLogOptions = connectionLogOptions,
       serverCertificateArn = serverCertificateArn,
       clientConnectOptions = Prelude.Nothing,
       clientLoginBannerOptions = Prelude.Nothing,
       description = Prelude.Nothing, dnsServers = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       selfServicePortal = Prelude.Nothing,
       sessionTimeoutHours = Prelude.Nothing,
       splitTunnel = Prelude.Nothing, tagSpecifications = Prelude.Nothing,
       transportProtocol = Prelude.Nothing, vpcId = Prelude.Nothing,
       vpnPort = Prelude.Nothing}
instance ToResourceProperties ClientVpnEndpoint where
  toResourceProperties ClientVpnEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationOptions" JSON..= authenticationOptions,
                            "ClientCidrBlock" JSON..= clientCidrBlock,
                            "ConnectionLogOptions" JSON..= connectionLogOptions,
                            "ServerCertificateArn" JSON..= serverCertificateArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientConnectOptions" Prelude.<$> clientConnectOptions,
                               (JSON..=) "ClientLoginBannerOptions"
                                 Prelude.<$> clientLoginBannerOptions,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DnsServers" Prelude.<$> dnsServers,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SelfServicePortal" Prelude.<$> selfServicePortal,
                               (JSON..=) "SessionTimeoutHours" Prelude.<$> sessionTimeoutHours,
                               (JSON..=) "SplitTunnel" Prelude.<$> splitTunnel,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "TransportProtocol" Prelude.<$> transportProtocol,
                               (JSON..=) "VpcId" Prelude.<$> vpcId,
                               (JSON..=) "VpnPort" Prelude.<$> vpnPort]))}
instance JSON.ToJSON ClientVpnEndpoint where
  toJSON ClientVpnEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationOptions" JSON..= authenticationOptions,
               "ClientCidrBlock" JSON..= clientCidrBlock,
               "ConnectionLogOptions" JSON..= connectionLogOptions,
               "ServerCertificateArn" JSON..= serverCertificateArn]
              (Prelude.catMaybes
                 [(JSON..=) "ClientConnectOptions" Prelude.<$> clientConnectOptions,
                  (JSON..=) "ClientLoginBannerOptions"
                    Prelude.<$> clientLoginBannerOptions,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DnsServers" Prelude.<$> dnsServers,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SelfServicePortal" Prelude.<$> selfServicePortal,
                  (JSON..=) "SessionTimeoutHours" Prelude.<$> sessionTimeoutHours,
                  (JSON..=) "SplitTunnel" Prelude.<$> splitTunnel,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "TransportProtocol" Prelude.<$> transportProtocol,
                  (JSON..=) "VpcId" Prelude.<$> vpcId,
                  (JSON..=) "VpnPort" Prelude.<$> vpnPort])))
instance Property "AuthenticationOptions" ClientVpnEndpoint where
  type PropertyType "AuthenticationOptions" ClientVpnEndpoint = [ClientAuthenticationRequestProperty]
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {authenticationOptions = newValue, ..}
instance Property "ClientCidrBlock" ClientVpnEndpoint where
  type PropertyType "ClientCidrBlock" ClientVpnEndpoint = Value Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {clientCidrBlock = newValue, ..}
instance Property "ClientConnectOptions" ClientVpnEndpoint where
  type PropertyType "ClientConnectOptions" ClientVpnEndpoint = ClientConnectOptionsProperty
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint
        {clientConnectOptions = Prelude.pure newValue, ..}
instance Property "ClientLoginBannerOptions" ClientVpnEndpoint where
  type PropertyType "ClientLoginBannerOptions" ClientVpnEndpoint = ClientLoginBannerOptionsProperty
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint
        {clientLoginBannerOptions = Prelude.pure newValue, ..}
instance Property "ConnectionLogOptions" ClientVpnEndpoint where
  type PropertyType "ConnectionLogOptions" ClientVpnEndpoint = ConnectionLogOptionsProperty
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {connectionLogOptions = newValue, ..}
instance Property "Description" ClientVpnEndpoint where
  type PropertyType "Description" ClientVpnEndpoint = Value Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {description = Prelude.pure newValue, ..}
instance Property "DnsServers" ClientVpnEndpoint where
  type PropertyType "DnsServers" ClientVpnEndpoint = ValueList (Value Prelude.Text)
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {dnsServers = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ClientVpnEndpoint where
  type PropertyType "SecurityGroupIds" ClientVpnEndpoint = ValueList (Value Prelude.Text)
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SelfServicePortal" ClientVpnEndpoint where
  type PropertyType "SelfServicePortal" ClientVpnEndpoint = Value Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {selfServicePortal = Prelude.pure newValue, ..}
instance Property "ServerCertificateArn" ClientVpnEndpoint where
  type PropertyType "ServerCertificateArn" ClientVpnEndpoint = Value Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {serverCertificateArn = newValue, ..}
instance Property "SessionTimeoutHours" ClientVpnEndpoint where
  type PropertyType "SessionTimeoutHours" ClientVpnEndpoint = Value Prelude.Integer
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint
        {sessionTimeoutHours = Prelude.pure newValue, ..}
instance Property "SplitTunnel" ClientVpnEndpoint where
  type PropertyType "SplitTunnel" ClientVpnEndpoint = Value Prelude.Bool
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {splitTunnel = Prelude.pure newValue, ..}
instance Property "TagSpecifications" ClientVpnEndpoint where
  type PropertyType "TagSpecifications" ClientVpnEndpoint = [TagSpecificationProperty]
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {tagSpecifications = Prelude.pure newValue, ..}
instance Property "TransportProtocol" ClientVpnEndpoint where
  type PropertyType "TransportProtocol" ClientVpnEndpoint = Value Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {transportProtocol = Prelude.pure newValue, ..}
instance Property "VpcId" ClientVpnEndpoint where
  type PropertyType "VpcId" ClientVpnEndpoint = Value Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {vpcId = Prelude.pure newValue, ..}
instance Property "VpnPort" ClientVpnEndpoint where
  type PropertyType "VpnPort" ClientVpnEndpoint = Value Prelude.Integer
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {vpnPort = Prelude.pure newValue, ..}