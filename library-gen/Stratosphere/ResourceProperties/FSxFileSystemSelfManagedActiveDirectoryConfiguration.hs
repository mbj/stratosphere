
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html

module Stratosphere.ResourceProperties.FSxFileSystemSelfManagedActiveDirectoryConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- FSxFileSystemSelfManagedActiveDirectoryConfiguration. See
-- 'fSxFileSystemSelfManagedActiveDirectoryConfiguration' for a more
-- convenient constructor.
data FSxFileSystemSelfManagedActiveDirectoryConfiguration =
  FSxFileSystemSelfManagedActiveDirectoryConfiguration
  { _fSxFileSystemSelfManagedActiveDirectoryConfigurationDnsIps :: Maybe (ValList Text)
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationDomainName :: Maybe (Val Text)
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationFileSystemAdministratorsGroup :: Maybe (Val Text)
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationOrganizationalUnitDistinguishedName :: Maybe (Val Text)
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationPassword :: Maybe (Val Text)
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationUserName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON FSxFileSystemSelfManagedActiveDirectoryConfiguration where
  toJSON FSxFileSystemSelfManagedActiveDirectoryConfiguration{..} =
    object $
    catMaybes
    [ fmap (("DnsIps",) . toJSON) _fSxFileSystemSelfManagedActiveDirectoryConfigurationDnsIps
    , fmap (("DomainName",) . toJSON) _fSxFileSystemSelfManagedActiveDirectoryConfigurationDomainName
    , fmap (("FileSystemAdministratorsGroup",) . toJSON) _fSxFileSystemSelfManagedActiveDirectoryConfigurationFileSystemAdministratorsGroup
    , fmap (("OrganizationalUnitDistinguishedName",) . toJSON) _fSxFileSystemSelfManagedActiveDirectoryConfigurationOrganizationalUnitDistinguishedName
    , fmap (("Password",) . toJSON) _fSxFileSystemSelfManagedActiveDirectoryConfigurationPassword
    , fmap (("UserName",) . toJSON) _fSxFileSystemSelfManagedActiveDirectoryConfigurationUserName
    ]

-- | Constructor for 'FSxFileSystemSelfManagedActiveDirectoryConfiguration'
-- containing required fields as arguments.
fSxFileSystemSelfManagedActiveDirectoryConfiguration
  :: FSxFileSystemSelfManagedActiveDirectoryConfiguration
fSxFileSystemSelfManagedActiveDirectoryConfiguration  =
  FSxFileSystemSelfManagedActiveDirectoryConfiguration
  { _fSxFileSystemSelfManagedActiveDirectoryConfigurationDnsIps = Nothing
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationDomainName = Nothing
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationFileSystemAdministratorsGroup = Nothing
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationOrganizationalUnitDistinguishedName = Nothing
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationPassword = Nothing
  , _fSxFileSystemSelfManagedActiveDirectoryConfigurationUserName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-dnsips
fsfssmadcDnsIps :: Lens' FSxFileSystemSelfManagedActiveDirectoryConfiguration (Maybe (ValList Text))
fsfssmadcDnsIps = lens _fSxFileSystemSelfManagedActiveDirectoryConfigurationDnsIps (\s a -> s { _fSxFileSystemSelfManagedActiveDirectoryConfigurationDnsIps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-domainname
fsfssmadcDomainName :: Lens' FSxFileSystemSelfManagedActiveDirectoryConfiguration (Maybe (Val Text))
fsfssmadcDomainName = lens _fSxFileSystemSelfManagedActiveDirectoryConfigurationDomainName (\s a -> s { _fSxFileSystemSelfManagedActiveDirectoryConfigurationDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-filesystemadministratorsgroup
fsfssmadcFileSystemAdministratorsGroup :: Lens' FSxFileSystemSelfManagedActiveDirectoryConfiguration (Maybe (Val Text))
fsfssmadcFileSystemAdministratorsGroup = lens _fSxFileSystemSelfManagedActiveDirectoryConfigurationFileSystemAdministratorsGroup (\s a -> s { _fSxFileSystemSelfManagedActiveDirectoryConfigurationFileSystemAdministratorsGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-organizationalunitdistinguishedname
fsfssmadcOrganizationalUnitDistinguishedName :: Lens' FSxFileSystemSelfManagedActiveDirectoryConfiguration (Maybe (Val Text))
fsfssmadcOrganizationalUnitDistinguishedName = lens _fSxFileSystemSelfManagedActiveDirectoryConfigurationOrganizationalUnitDistinguishedName (\s a -> s { _fSxFileSystemSelfManagedActiveDirectoryConfigurationOrganizationalUnitDistinguishedName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-password
fsfssmadcPassword :: Lens' FSxFileSystemSelfManagedActiveDirectoryConfiguration (Maybe (Val Text))
fsfssmadcPassword = lens _fSxFileSystemSelfManagedActiveDirectoryConfigurationPassword (\s a -> s { _fSxFileSystemSelfManagedActiveDirectoryConfigurationPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-username
fsfssmadcUserName :: Lens' FSxFileSystemSelfManagedActiveDirectoryConfiguration (Maybe (Val Text))
fsfssmadcUserName = lens _fSxFileSystemSelfManagedActiveDirectoryConfigurationUserName (\s a -> s { _fSxFileSystemSelfManagedActiveDirectoryConfigurationUserName = a })
