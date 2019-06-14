{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-token.html

module Stratosphere.ResourceProperties.AmplifyAppToken where

import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyAppToken. See 'amplifyAppToken' for
-- a more convenient constructor.
data AmplifyAppToken =
  AmplifyAppToken
  { _amplifyAppTokenKey :: Val Text
  , _amplifyAppTokenValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyAppToken where
  toJSON AmplifyAppToken{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _amplifyAppTokenKey
    , (Just . ("Value",) . toJSON) _amplifyAppTokenValue
    ]

-- | Constructor for 'AmplifyAppToken' containing required fields as
-- arguments.
amplifyAppToken
  :: Val Text -- ^ 'aatKey'
  -> Val Text -- ^ 'aatValue'
  -> AmplifyAppToken
amplifyAppToken keyarg valuearg =
  AmplifyAppToken
  { _amplifyAppTokenKey = keyarg
  , _amplifyAppTokenValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-token.html#cfn-amplify-app-token-key
aatKey :: Lens' AmplifyAppToken (Val Text)
aatKey = lens _amplifyAppTokenKey (\s a -> s { _amplifyAppTokenKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-token.html#cfn-amplify-app-token-value
aatValue :: Lens' AmplifyAppToken (Val Text)
aatValue = lens _amplifyAppTokenValue (\s a -> s { _amplifyAppTokenValue = a })
