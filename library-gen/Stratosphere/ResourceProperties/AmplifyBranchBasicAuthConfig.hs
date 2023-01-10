
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html

module Stratosphere.ResourceProperties.AmplifyBranchBasicAuthConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyBranchBasicAuthConfig. See
-- 'amplifyBranchBasicAuthConfig' for a more convenient constructor.
data AmplifyBranchBasicAuthConfig =
  AmplifyBranchBasicAuthConfig
  { _amplifyBranchBasicAuthConfigEnableBasicAuth :: Maybe (Val Bool)
  , _amplifyBranchBasicAuthConfigPassword :: Val Text
  , _amplifyBranchBasicAuthConfigUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyBranchBasicAuthConfig where
  toJSON AmplifyBranchBasicAuthConfig{..} =
    object $
    catMaybes
    [ fmap (("EnableBasicAuth",) . toJSON) _amplifyBranchBasicAuthConfigEnableBasicAuth
    , (Just . ("Password",) . toJSON) _amplifyBranchBasicAuthConfigPassword
    , (Just . ("Username",) . toJSON) _amplifyBranchBasicAuthConfigUsername
    ]

-- | Constructor for 'AmplifyBranchBasicAuthConfig' containing required fields
-- as arguments.
amplifyBranchBasicAuthConfig
  :: Val Text -- ^ 'abbacPassword'
  -> Val Text -- ^ 'abbacUsername'
  -> AmplifyBranchBasicAuthConfig
amplifyBranchBasicAuthConfig passwordarg usernamearg =
  AmplifyBranchBasicAuthConfig
  { _amplifyBranchBasicAuthConfigEnableBasicAuth = Nothing
  , _amplifyBranchBasicAuthConfigPassword = passwordarg
  , _amplifyBranchBasicAuthConfigUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-enablebasicauth
abbacEnableBasicAuth :: Lens' AmplifyBranchBasicAuthConfig (Maybe (Val Bool))
abbacEnableBasicAuth = lens _amplifyBranchBasicAuthConfigEnableBasicAuth (\s a -> s { _amplifyBranchBasicAuthConfigEnableBasicAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-password
abbacPassword :: Lens' AmplifyBranchBasicAuthConfig (Val Text)
abbacPassword = lens _amplifyBranchBasicAuthConfigPassword (\s a -> s { _amplifyBranchBasicAuthConfigPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-username
abbacUsername :: Lens' AmplifyBranchBasicAuthConfig (Val Text)
abbacUsername = lens _amplifyBranchBasicAuthConfigUsername (\s a -> s { _amplifyBranchBasicAuthConfigUsername = a })
