{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html

module Stratosphere.Resources.AppStreamDirectoryConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppStreamDirectoryConfigServiceAccountCredentials

-- | Full data type definition for AppStreamDirectoryConfig. See
-- 'appStreamDirectoryConfig' for a more convenient constructor.
data AppStreamDirectoryConfig =
  AppStreamDirectoryConfig
  { _appStreamDirectoryConfigDirectoryName :: Val Text
  , _appStreamDirectoryConfigOrganizationalUnitDistinguishedNames :: ValList Text
  , _appStreamDirectoryConfigServiceAccountCredentials :: AppStreamDirectoryConfigServiceAccountCredentials
  } deriving (Show, Eq)

instance ToResourceProperties AppStreamDirectoryConfig where
  toResourceProperties AppStreamDirectoryConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppStream::DirectoryConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DirectoryName",) . toJSON) _appStreamDirectoryConfigDirectoryName
        , (Just . ("OrganizationalUnitDistinguishedNames",) . toJSON) _appStreamDirectoryConfigOrganizationalUnitDistinguishedNames
        , (Just . ("ServiceAccountCredentials",) . toJSON) _appStreamDirectoryConfigServiceAccountCredentials
        ]
    }

-- | Constructor for 'AppStreamDirectoryConfig' containing required fields as
-- arguments.
appStreamDirectoryConfig
  :: Val Text -- ^ 'asdcDirectoryName'
  -> ValList Text -- ^ 'asdcOrganizationalUnitDistinguishedNames'
  -> AppStreamDirectoryConfigServiceAccountCredentials -- ^ 'asdcServiceAccountCredentials'
  -> AppStreamDirectoryConfig
appStreamDirectoryConfig directoryNamearg organizationalUnitDistinguishedNamesarg serviceAccountCredentialsarg =
  AppStreamDirectoryConfig
  { _appStreamDirectoryConfigDirectoryName = directoryNamearg
  , _appStreamDirectoryConfigOrganizationalUnitDistinguishedNames = organizationalUnitDistinguishedNamesarg
  , _appStreamDirectoryConfigServiceAccountCredentials = serviceAccountCredentialsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-directoryname
asdcDirectoryName :: Lens' AppStreamDirectoryConfig (Val Text)
asdcDirectoryName = lens _appStreamDirectoryConfigDirectoryName (\s a -> s { _appStreamDirectoryConfigDirectoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-organizationalunitdistinguishednames
asdcOrganizationalUnitDistinguishedNames :: Lens' AppStreamDirectoryConfig (ValList Text)
asdcOrganizationalUnitDistinguishedNames = lens _appStreamDirectoryConfigOrganizationalUnitDistinguishedNames (\s a -> s { _appStreamDirectoryConfigOrganizationalUnitDistinguishedNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-serviceaccountcredentials
asdcServiceAccountCredentials :: Lens' AppStreamDirectoryConfig AppStreamDirectoryConfigServiceAccountCredentials
asdcServiceAccountCredentials = lens _appStreamDirectoryConfigServiceAccountCredentials (\s a -> s { _appStreamDirectoryConfigServiceAccountCredentials = a })
