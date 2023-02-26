module Stratosphere.FSx.StorageVirtualMachine.SelfManagedActiveDirectoryConfigurationProperty (
        SelfManagedActiveDirectoryConfigurationProperty(..),
        mkSelfManagedActiveDirectoryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedActiveDirectoryConfigurationProperty
  = SelfManagedActiveDirectoryConfigurationProperty {dnsIps :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                     domainName :: (Prelude.Maybe (Value Prelude.Text)),
                                                     fileSystemAdministratorsGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                                     organizationalUnitDistinguishedName :: (Prelude.Maybe (Value Prelude.Text)),
                                                     password :: (Prelude.Maybe (Value Prelude.Text)),
                                                     userName :: (Prelude.Maybe (Value Prelude.Text))}
mkSelfManagedActiveDirectoryConfigurationProperty ::
  SelfManagedActiveDirectoryConfigurationProperty
mkSelfManagedActiveDirectoryConfigurationProperty
  = SelfManagedActiveDirectoryConfigurationProperty
      {dnsIps = Prelude.Nothing, domainName = Prelude.Nothing,
       fileSystemAdministratorsGroup = Prelude.Nothing,
       organizationalUnitDistinguishedName = Prelude.Nothing,
       password = Prelude.Nothing, userName = Prelude.Nothing}
instance ToResourceProperties SelfManagedActiveDirectoryConfigurationProperty where
  toResourceProperties
    SelfManagedActiveDirectoryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::StorageVirtualMachine.SelfManagedActiveDirectoryConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DnsIps" Prelude.<$> dnsIps,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "FileSystemAdministratorsGroup"
                              Prelude.<$> fileSystemAdministratorsGroup,
                            (JSON..=) "OrganizationalUnitDistinguishedName"
                              Prelude.<$> organizationalUnitDistinguishedName,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "UserName" Prelude.<$> userName])}
instance JSON.ToJSON SelfManagedActiveDirectoryConfigurationProperty where
  toJSON SelfManagedActiveDirectoryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DnsIps" Prelude.<$> dnsIps,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "FileSystemAdministratorsGroup"
                 Prelude.<$> fileSystemAdministratorsGroup,
               (JSON..=) "OrganizationalUnitDistinguishedName"
                 Prelude.<$> organizationalUnitDistinguishedName,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "UserName" Prelude.<$> userName]))
instance Property "DnsIps" SelfManagedActiveDirectoryConfigurationProperty where
  type PropertyType "DnsIps" SelfManagedActiveDirectoryConfigurationProperty = ValueList Prelude.Text
  set newValue SelfManagedActiveDirectoryConfigurationProperty {..}
    = SelfManagedActiveDirectoryConfigurationProperty
        {dnsIps = Prelude.pure newValue, ..}
instance Property "DomainName" SelfManagedActiveDirectoryConfigurationProperty where
  type PropertyType "DomainName" SelfManagedActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue SelfManagedActiveDirectoryConfigurationProperty {..}
    = SelfManagedActiveDirectoryConfigurationProperty
        {domainName = Prelude.pure newValue, ..}
instance Property "FileSystemAdministratorsGroup" SelfManagedActiveDirectoryConfigurationProperty where
  type PropertyType "FileSystemAdministratorsGroup" SelfManagedActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue SelfManagedActiveDirectoryConfigurationProperty {..}
    = SelfManagedActiveDirectoryConfigurationProperty
        {fileSystemAdministratorsGroup = Prelude.pure newValue, ..}
instance Property "OrganizationalUnitDistinguishedName" SelfManagedActiveDirectoryConfigurationProperty where
  type PropertyType "OrganizationalUnitDistinguishedName" SelfManagedActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue SelfManagedActiveDirectoryConfigurationProperty {..}
    = SelfManagedActiveDirectoryConfigurationProperty
        {organizationalUnitDistinguishedName = Prelude.pure newValue, ..}
instance Property "Password" SelfManagedActiveDirectoryConfigurationProperty where
  type PropertyType "Password" SelfManagedActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue SelfManagedActiveDirectoryConfigurationProperty {..}
    = SelfManagedActiveDirectoryConfigurationProperty
        {password = Prelude.pure newValue, ..}
instance Property "UserName" SelfManagedActiveDirectoryConfigurationProperty where
  type PropertyType "UserName" SelfManagedActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue SelfManagedActiveDirectoryConfigurationProperty {..}
    = SelfManagedActiveDirectoryConfigurationProperty
        {userName = Prelude.pure newValue, ..}