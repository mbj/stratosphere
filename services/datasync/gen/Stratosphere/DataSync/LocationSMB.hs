module Stratosphere.DataSync.LocationSMB (
        module Exports, LocationSMB(..), mkLocationSMB
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationSMB.CmkSecretConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.LocationSMB.CustomSecretConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.LocationSMB.MountOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationSMB
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html>
    LocationSMB {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-agentarns>
                 agentArns :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-authenticationtype>
                 authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-cmksecretconfig>
                 cmkSecretConfig :: (Prelude.Maybe CmkSecretConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-customsecretconfig>
                 customSecretConfig :: (Prelude.Maybe CustomSecretConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-dnsipaddresses>
                 dnsIpAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-domain>
                 domain :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-kerberoskeytab>
                 kerberosKeytab :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-kerberoskrb5conf>
                 kerberosKrb5Conf :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-kerberosprincipal>
                 kerberosPrincipal :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-mountoptions>
                 mountOptions :: (Prelude.Maybe MountOptionsProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-password>
                 password :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-serverhostname>
                 serverHostname :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-subdirectory>
                 subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-user>
                 user :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationSMB :: ValueList Prelude.Text -> LocationSMB
mkLocationSMB agentArns
  = LocationSMB
      {haddock_workaround_ = (), agentArns = agentArns,
       authenticationType = Prelude.Nothing,
       cmkSecretConfig = Prelude.Nothing,
       customSecretConfig = Prelude.Nothing,
       dnsIpAddresses = Prelude.Nothing, domain = Prelude.Nothing,
       kerberosKeytab = Prelude.Nothing,
       kerberosKrb5Conf = Prelude.Nothing,
       kerberosPrincipal = Prelude.Nothing,
       mountOptions = Prelude.Nothing, password = Prelude.Nothing,
       serverHostname = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing, user = Prelude.Nothing}
instance ToResourceProperties LocationSMB where
  toResourceProperties LocationSMB {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationSMB",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentArns" JSON..= agentArns]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                               (JSON..=) "CmkSecretConfig" Prelude.<$> cmkSecretConfig,
                               (JSON..=) "CustomSecretConfig" Prelude.<$> customSecretConfig,
                               (JSON..=) "DnsIpAddresses" Prelude.<$> dnsIpAddresses,
                               (JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "KerberosKeytab" Prelude.<$> kerberosKeytab,
                               (JSON..=) "KerberosKrb5Conf" Prelude.<$> kerberosKrb5Conf,
                               (JSON..=) "KerberosPrincipal" Prelude.<$> kerberosPrincipal,
                               (JSON..=) "MountOptions" Prelude.<$> mountOptions,
                               (JSON..=) "Password" Prelude.<$> password,
                               (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "User" Prelude.<$> user]))}
instance JSON.ToJSON LocationSMB where
  toJSON LocationSMB {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentArns" JSON..= agentArns]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                  (JSON..=) "CmkSecretConfig" Prelude.<$> cmkSecretConfig,
                  (JSON..=) "CustomSecretConfig" Prelude.<$> customSecretConfig,
                  (JSON..=) "DnsIpAddresses" Prelude.<$> dnsIpAddresses,
                  (JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "KerberosKeytab" Prelude.<$> kerberosKeytab,
                  (JSON..=) "KerberosKrb5Conf" Prelude.<$> kerberosKrb5Conf,
                  (JSON..=) "KerberosPrincipal" Prelude.<$> kerberosPrincipal,
                  (JSON..=) "MountOptions" Prelude.<$> mountOptions,
                  (JSON..=) "Password" Prelude.<$> password,
                  (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "User" Prelude.<$> user])))
instance Property "AgentArns" LocationSMB where
  type PropertyType "AgentArns" LocationSMB = ValueList Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {agentArns = newValue, ..}
instance Property "AuthenticationType" LocationSMB where
  type PropertyType "AuthenticationType" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {authenticationType = Prelude.pure newValue, ..}
instance Property "CmkSecretConfig" LocationSMB where
  type PropertyType "CmkSecretConfig" LocationSMB = CmkSecretConfigProperty
  set newValue LocationSMB {..}
    = LocationSMB {cmkSecretConfig = Prelude.pure newValue, ..}
instance Property "CustomSecretConfig" LocationSMB where
  type PropertyType "CustomSecretConfig" LocationSMB = CustomSecretConfigProperty
  set newValue LocationSMB {..}
    = LocationSMB {customSecretConfig = Prelude.pure newValue, ..}
instance Property "DnsIpAddresses" LocationSMB where
  type PropertyType "DnsIpAddresses" LocationSMB = ValueList Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {dnsIpAddresses = Prelude.pure newValue, ..}
instance Property "Domain" LocationSMB where
  type PropertyType "Domain" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {domain = Prelude.pure newValue, ..}
instance Property "KerberosKeytab" LocationSMB where
  type PropertyType "KerberosKeytab" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {kerberosKeytab = Prelude.pure newValue, ..}
instance Property "KerberosKrb5Conf" LocationSMB where
  type PropertyType "KerberosKrb5Conf" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {kerberosKrb5Conf = Prelude.pure newValue, ..}
instance Property "KerberosPrincipal" LocationSMB where
  type PropertyType "KerberosPrincipal" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {kerberosPrincipal = Prelude.pure newValue, ..}
instance Property "MountOptions" LocationSMB where
  type PropertyType "MountOptions" LocationSMB = MountOptionsProperty
  set newValue LocationSMB {..}
    = LocationSMB {mountOptions = Prelude.pure newValue, ..}
instance Property "Password" LocationSMB where
  type PropertyType "Password" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {password = Prelude.pure newValue, ..}
instance Property "ServerHostname" LocationSMB where
  type PropertyType "ServerHostname" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {serverHostname = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationSMB where
  type PropertyType "Subdirectory" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationSMB where
  type PropertyType "Tags" LocationSMB = [Tag]
  set newValue LocationSMB {..}
    = LocationSMB {tags = Prelude.pure newValue, ..}
instance Property "User" LocationSMB where
  type PropertyType "User" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {user = Prelude.pure newValue, ..}