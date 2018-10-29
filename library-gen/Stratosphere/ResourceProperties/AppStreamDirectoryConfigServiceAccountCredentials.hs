{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html

module Stratosphere.ResourceProperties.AppStreamDirectoryConfigServiceAccountCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppStreamDirectoryConfigServiceAccountCredentials. See
-- 'appStreamDirectoryConfigServiceAccountCredentials' for a more convenient
-- constructor.
data AppStreamDirectoryConfigServiceAccountCredentials =
  AppStreamDirectoryConfigServiceAccountCredentials
  { _appStreamDirectoryConfigServiceAccountCredentialsAccountName :: Val Text
  , _appStreamDirectoryConfigServiceAccountCredentialsAccountPassword :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppStreamDirectoryConfigServiceAccountCredentials where
  toJSON AppStreamDirectoryConfigServiceAccountCredentials{..} =
    object $
    catMaybes
    [ (Just . ("AccountName",) . toJSON) _appStreamDirectoryConfigServiceAccountCredentialsAccountName
    , (Just . ("AccountPassword",) . toJSON) _appStreamDirectoryConfigServiceAccountCredentialsAccountPassword
    ]

instance FromJSON AppStreamDirectoryConfigServiceAccountCredentials where
  parseJSON (Object obj) =
    AppStreamDirectoryConfigServiceAccountCredentials <$>
      (obj .: "AccountName") <*>
      (obj .: "AccountPassword")
  parseJSON _ = mempty

-- | Constructor for 'AppStreamDirectoryConfigServiceAccountCredentials'
-- containing required fields as arguments.
appStreamDirectoryConfigServiceAccountCredentials
  :: Val Text -- ^ 'asdcsacAccountName'
  -> Val Text -- ^ 'asdcsacAccountPassword'
  -> AppStreamDirectoryConfigServiceAccountCredentials
appStreamDirectoryConfigServiceAccountCredentials accountNamearg accountPasswordarg =
  AppStreamDirectoryConfigServiceAccountCredentials
  { _appStreamDirectoryConfigServiceAccountCredentialsAccountName = accountNamearg
  , _appStreamDirectoryConfigServiceAccountCredentialsAccountPassword = accountPasswordarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html#cfn-appstream-directoryconfig-serviceaccountcredentials-accountname
asdcsacAccountName :: Lens' AppStreamDirectoryConfigServiceAccountCredentials (Val Text)
asdcsacAccountName = lens _appStreamDirectoryConfigServiceAccountCredentialsAccountName (\s a -> s { _appStreamDirectoryConfigServiceAccountCredentialsAccountName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html#cfn-appstream-directoryconfig-serviceaccountcredentials-accountpassword
asdcsacAccountPassword :: Lens' AppStreamDirectoryConfigServiceAccountCredentials (Val Text)
asdcsacAccountPassword = lens _appStreamDirectoryConfigServiceAccountCredentialsAccountPassword (\s a -> s { _appStreamDirectoryConfigServiceAccountCredentialsAccountPassword = a })
