{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html

module Stratosphere.ResourceProperties.CognitoIdentityPoolCognitoStreams where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoIdentityPoolCognitoStreams. See
-- 'cognitoIdentityPoolCognitoStreams' for a more convenient constructor.
data CognitoIdentityPoolCognitoStreams =
  CognitoIdentityPoolCognitoStreams
  { _cognitoIdentityPoolCognitoStreamsRoleArn :: Maybe (Val Text)
  , _cognitoIdentityPoolCognitoStreamsStreamName :: Maybe (Val Text)
  , _cognitoIdentityPoolCognitoStreamsStreamingStatus :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolCognitoStreams where
  toJSON CognitoIdentityPoolCognitoStreams{..} =
    object $
    catMaybes
    [ ("RoleArn" .=) <$> _cognitoIdentityPoolCognitoStreamsRoleArn
    , ("StreamName" .=) <$> _cognitoIdentityPoolCognitoStreamsStreamName
    , ("StreamingStatus" .=) <$> _cognitoIdentityPoolCognitoStreamsStreamingStatus
    ]

instance FromJSON CognitoIdentityPoolCognitoStreams where
  parseJSON (Object obj) =
    CognitoIdentityPoolCognitoStreams <$>
      obj .:? "RoleArn" <*>
      obj .:? "StreamName" <*>
      obj .:? "StreamingStatus"
  parseJSON _ = mempty

-- | Constructor for 'CognitoIdentityPoolCognitoStreams' containing required
-- fields as arguments.
cognitoIdentityPoolCognitoStreams
  :: CognitoIdentityPoolCognitoStreams
cognitoIdentityPoolCognitoStreams  =
  CognitoIdentityPoolCognitoStreams
  { _cognitoIdentityPoolCognitoStreamsRoleArn = Nothing
  , _cognitoIdentityPoolCognitoStreamsStreamName = Nothing
  , _cognitoIdentityPoolCognitoStreamsStreamingStatus = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-rolearn
cipcsRoleArn :: Lens' CognitoIdentityPoolCognitoStreams (Maybe (Val Text))
cipcsRoleArn = lens _cognitoIdentityPoolCognitoStreamsRoleArn (\s a -> s { _cognitoIdentityPoolCognitoStreamsRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-streamname
cipcsStreamName :: Lens' CognitoIdentityPoolCognitoStreams (Maybe (Val Text))
cipcsStreamName = lens _cognitoIdentityPoolCognitoStreamsStreamName (\s a -> s { _cognitoIdentityPoolCognitoStreamsStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-streamingstatus
cipcsStreamingStatus :: Lens' CognitoIdentityPoolCognitoStreams (Maybe (Val Text))
cipcsStreamingStatus = lens _cognitoIdentityPoolCognitoStreamsStreamingStatus (\s a -> s { _cognitoIdentityPoolCognitoStreamsStreamingStatus = a })
