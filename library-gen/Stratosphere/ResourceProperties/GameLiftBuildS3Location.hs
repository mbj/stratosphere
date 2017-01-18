{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html

module Stratosphere.ResourceProperties.GameLiftBuildS3Location where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for GameLiftBuildS3Location. See
-- | 'gameLiftBuildS3Location' for a more convenient constructor.
data GameLiftBuildS3Location =
  GameLiftBuildS3Location
  { _gameLiftBuildS3LocationBucket :: Val Text
  , _gameLiftBuildS3LocationKey :: Val Text
  , _gameLiftBuildS3LocationRoleArn :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON GameLiftBuildS3Location where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON GameLiftBuildS3Location where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'GameLiftBuildS3Location' containing required fields as
-- | arguments.
gameLiftBuildS3Location
  :: Val Text -- ^ 'glbslBucket'
  -> Val Text -- ^ 'glbslKey'
  -> Val Text -- ^ 'glbslRoleArn'
  -> GameLiftBuildS3Location
gameLiftBuildS3Location bucketarg keyarg roleArnarg =
  GameLiftBuildS3Location
  { _gameLiftBuildS3LocationBucket = bucketarg
  , _gameLiftBuildS3LocationKey = keyarg
  , _gameLiftBuildS3LocationRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-bucket
glbslBucket :: Lens' GameLiftBuildS3Location (Val Text)
glbslBucket = lens _gameLiftBuildS3LocationBucket (\s a -> s { _gameLiftBuildS3LocationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-key
glbslKey :: Lens' GameLiftBuildS3Location (Val Text)
glbslKey = lens _gameLiftBuildS3LocationKey (\s a -> s { _gameLiftBuildS3LocationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-rolearn
glbslRoleArn :: Lens' GameLiftBuildS3Location (Val Text)
glbslRoleArn = lens _gameLiftBuildS3LocationRoleArn (\s a -> s { _gameLiftBuildS3LocationRoleArn = a })
