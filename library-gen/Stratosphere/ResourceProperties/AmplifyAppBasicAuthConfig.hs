{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html

module Stratosphere.ResourceProperties.AmplifyAppBasicAuthConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyAppBasicAuthConfig. See
-- 'amplifyAppBasicAuthConfig' for a more convenient constructor.
data AmplifyAppBasicAuthConfig =
  AmplifyAppBasicAuthConfig
  { _amplifyAppBasicAuthConfigEnableBasicAuth :: Maybe (Val Bool)
  , _amplifyAppBasicAuthConfigPassword :: Val Text
  , _amplifyAppBasicAuthConfigUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyAppBasicAuthConfig where
  toJSON AmplifyAppBasicAuthConfig{..} =
    object $
    catMaybes
    [ fmap (("EnableBasicAuth",) . toJSON) _amplifyAppBasicAuthConfigEnableBasicAuth
    , (Just . ("Password",) . toJSON) _amplifyAppBasicAuthConfigPassword
    , (Just . ("Username",) . toJSON) _amplifyAppBasicAuthConfigUsername
    ]

-- | Constructor for 'AmplifyAppBasicAuthConfig' containing required fields as
-- arguments.
amplifyAppBasicAuthConfig
  :: Val Text -- ^ 'aabacPassword'
  -> Val Text -- ^ 'aabacUsername'
  -> AmplifyAppBasicAuthConfig
amplifyAppBasicAuthConfig passwordarg usernamearg =
  AmplifyAppBasicAuthConfig
  { _amplifyAppBasicAuthConfigEnableBasicAuth = Nothing
  , _amplifyAppBasicAuthConfigPassword = passwordarg
  , _amplifyAppBasicAuthConfigUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-enablebasicauth
aabacEnableBasicAuth :: Lens' AmplifyAppBasicAuthConfig (Maybe (Val Bool))
aabacEnableBasicAuth = lens _amplifyAppBasicAuthConfigEnableBasicAuth (\s a -> s { _amplifyAppBasicAuthConfigEnableBasicAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-password
aabacPassword :: Lens' AmplifyAppBasicAuthConfig (Val Text)
aabacPassword = lens _amplifyAppBasicAuthConfigPassword (\s a -> s { _amplifyAppBasicAuthConfigPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-username
aabacUsername :: Lens' AmplifyAppBasicAuthConfig (Val Text)
aabacUsername = lens _amplifyAppBasicAuthConfigUsername (\s a -> s { _amplifyAppBasicAuthConfigUsername = a })
