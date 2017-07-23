{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html

module Stratosphere.ResourceProperties.CognitoIdentityPoolPushSync where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoIdentityPoolPushSync. See
-- 'cognitoIdentityPoolPushSync' for a more convenient constructor.
data CognitoIdentityPoolPushSync =
  CognitoIdentityPoolPushSync
  { _cognitoIdentityPoolPushSyncApplicationArns :: Maybe (ValList Text)
  , _cognitoIdentityPoolPushSyncRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolPushSync where
  toJSON CognitoIdentityPoolPushSync{..} =
    object $
    catMaybes
    [ fmap (("ApplicationArns",) . toJSON) _cognitoIdentityPoolPushSyncApplicationArns
    , fmap (("RoleArn",) . toJSON) _cognitoIdentityPoolPushSyncRoleArn
    ]

instance FromJSON CognitoIdentityPoolPushSync where
  parseJSON (Object obj) =
    CognitoIdentityPoolPushSync <$>
      (obj .:? "ApplicationArns") <*>
      (obj .:? "RoleArn")
  parseJSON _ = mempty

-- | Constructor for 'CognitoIdentityPoolPushSync' containing required fields
-- as arguments.
cognitoIdentityPoolPushSync
  :: CognitoIdentityPoolPushSync
cognitoIdentityPoolPushSync  =
  CognitoIdentityPoolPushSync
  { _cognitoIdentityPoolPushSyncApplicationArns = Nothing
  , _cognitoIdentityPoolPushSyncRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html#cfn-cognito-identitypool-pushsync-applicationarns
cippsApplicationArns :: Lens' CognitoIdentityPoolPushSync (Maybe (ValList Text))
cippsApplicationArns = lens _cognitoIdentityPoolPushSyncApplicationArns (\s a -> s { _cognitoIdentityPoolPushSyncApplicationArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html#cfn-cognito-identitypool-pushsync-rolearn
cippsRoleArn :: Lens' CognitoIdentityPoolPushSync (Maybe (Val Text))
cippsRoleArn = lens _cognitoIdentityPoolPushSyncRoleArn (\s a -> s { _cognitoIdentityPoolPushSyncRoleArn = a })
