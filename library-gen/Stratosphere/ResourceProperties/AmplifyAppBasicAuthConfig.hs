
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html

module Stratosphere.ResourceProperties.AmplifyAppBasicAuthConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyAppBasicAuthConfig. See
-- 'amplifyAppBasicAuthConfig' for a more convenient constructor.
data AmplifyAppBasicAuthConfig =
  AmplifyAppBasicAuthConfig
  { _amplifyAppBasicAuthConfigEnableBasicAuth :: Maybe (Val Bool)
  , _amplifyAppBasicAuthConfigPassword :: Maybe (Val Text)
  , _amplifyAppBasicAuthConfigUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AmplifyAppBasicAuthConfig where
  toJSON AmplifyAppBasicAuthConfig{..} =
    object $
    catMaybes
    [ fmap (("EnableBasicAuth",) . toJSON) _amplifyAppBasicAuthConfigEnableBasicAuth
    , fmap (("Password",) . toJSON) _amplifyAppBasicAuthConfigPassword
    , fmap (("Username",) . toJSON) _amplifyAppBasicAuthConfigUsername
    ]

-- | Constructor for 'AmplifyAppBasicAuthConfig' containing required fields as
-- arguments.
amplifyAppBasicAuthConfig
  :: AmplifyAppBasicAuthConfig
amplifyAppBasicAuthConfig  =
  AmplifyAppBasicAuthConfig
  { _amplifyAppBasicAuthConfigEnableBasicAuth = Nothing
  , _amplifyAppBasicAuthConfigPassword = Nothing
  , _amplifyAppBasicAuthConfigUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-enablebasicauth
aabacEnableBasicAuth :: Lens' AmplifyAppBasicAuthConfig (Maybe (Val Bool))
aabacEnableBasicAuth = lens _amplifyAppBasicAuthConfigEnableBasicAuth (\s a -> s { _amplifyAppBasicAuthConfigEnableBasicAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-password
aabacPassword :: Lens' AmplifyAppBasicAuthConfig (Maybe (Val Text))
aabacPassword = lens _amplifyAppBasicAuthConfigPassword (\s a -> s { _amplifyAppBasicAuthConfigPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-username
aabacUsername :: Lens' AmplifyAppBasicAuthConfig (Maybe (Val Text))
aabacUsername = lens _amplifyAppBasicAuthConfigUsername (\s a -> s { _amplifyAppBasicAuthConfigUsername = a })
