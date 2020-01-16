{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html

module Stratosphere.ResourceProperties.GameLiftScriptS3Location where

import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftScriptS3Location. See
-- 'gameLiftScriptS3Location' for a more convenient constructor.
data GameLiftScriptS3Location =
  GameLiftScriptS3Location
  { _gameLiftScriptS3LocationBucket :: Val Text
  , _gameLiftScriptS3LocationKey :: Val Text
  , _gameLiftScriptS3LocationObjectVersion :: Maybe (Val Text)
  , _gameLiftScriptS3LocationRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GameLiftScriptS3Location where
  toJSON GameLiftScriptS3Location{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _gameLiftScriptS3LocationBucket
    , (Just . ("Key",) . toJSON) _gameLiftScriptS3LocationKey
    , fmap (("ObjectVersion",) . toJSON) _gameLiftScriptS3LocationObjectVersion
    , (Just . ("RoleArn",) . toJSON) _gameLiftScriptS3LocationRoleArn
    ]

-- | Constructor for 'GameLiftScriptS3Location' containing required fields as
-- arguments.
gameLiftScriptS3Location
  :: Val Text -- ^ 'glsslBucket'
  -> Val Text -- ^ 'glsslKey'
  -> Val Text -- ^ 'glsslRoleArn'
  -> GameLiftScriptS3Location
gameLiftScriptS3Location bucketarg keyarg roleArnarg =
  GameLiftScriptS3Location
  { _gameLiftScriptS3LocationBucket = bucketarg
  , _gameLiftScriptS3LocationKey = keyarg
  , _gameLiftScriptS3LocationObjectVersion = Nothing
  , _gameLiftScriptS3LocationRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-bucket
glsslBucket :: Lens' GameLiftScriptS3Location (Val Text)
glsslBucket = lens _gameLiftScriptS3LocationBucket (\s a -> s { _gameLiftScriptS3LocationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-key
glsslKey :: Lens' GameLiftScriptS3Location (Val Text)
glsslKey = lens _gameLiftScriptS3LocationKey (\s a -> s { _gameLiftScriptS3LocationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-objectversion
glsslObjectVersion :: Lens' GameLiftScriptS3Location (Maybe (Val Text))
glsslObjectVersion = lens _gameLiftScriptS3LocationObjectVersion (\s a -> s { _gameLiftScriptS3LocationObjectVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-rolearn
glsslRoleArn :: Lens' GameLiftScriptS3Location (Val Text)
glsslRoleArn = lens _gameLiftScriptS3LocationRoleArn (\s a -> s { _gameLiftScriptS3LocationRoleArn = a })
