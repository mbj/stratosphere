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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html>
    ClientVpnEndpoint {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-authenticationoptions>
                       authenticationOptions :: [ClientAuthenticationRequestProperty],
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-clientcidrblock>
                       clientCidrBlock :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-clientconnectoptions>
                       clientConnectOptions :: (Prelude.Maybe ClientConnectOptionsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-clientloginbanneroptions>
                       clientLoginBannerOptions :: (Prelude.Maybe ClientLoginBannerOptionsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-connectionlogoptions>
                       connectionLogOptions :: ConnectionLogOptionsProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-dnsservers>
                       dnsServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-securitygroupids>
                       securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-selfserviceportal>
                       selfServicePortal :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-servercertificatearn>
                       serverCertificateArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-sessiontimeouthours>
                       sessionTimeoutHours :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-splittunnel>
                       splitTunnel :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-tagspecifications>
                       tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-transportprotocol>
                       transportProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-vpcid>
                       vpcId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-vpnport>
                       vpnPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (),
       authenticationOptions = authenticationOptions,
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
         supportsTags = Prelude.False,
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
  type PropertyType "DnsServers" ClientVpnEndpoint = ValueList Prelude.Text
  set newValue ClientVpnEndpoint {..}
    = ClientVpnEndpoint {dnsServers = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ClientVpnEndpoint where
  type PropertyType "SecurityGroupIds" ClientVpnEndpoint = ValueList Prelude.Text
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