{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html

module Stratosphere.ResourceProperties.RoboMakerRobotApplicationSourceConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for RoboMakerRobotApplicationSourceConfig. See
-- 'roboMakerRobotApplicationSourceConfig' for a more convenient
-- constructor.
data RoboMakerRobotApplicationSourceConfig =
  RoboMakerRobotApplicationSourceConfig
  { _roboMakerRobotApplicationSourceConfigArchitecture :: Val Text
  , _roboMakerRobotApplicationSourceConfigS3Bucket :: Val Text
  , _roboMakerRobotApplicationSourceConfigS3Key :: Val Text
  } deriving (Show, Eq)

instance ToJSON RoboMakerRobotApplicationSourceConfig where
  toJSON RoboMakerRobotApplicationSourceConfig{..} =
    object $
    catMaybes
    [ (Just . ("Architecture",) . toJSON) _roboMakerRobotApplicationSourceConfigArchitecture
    , (Just . ("S3Bucket",) . toJSON) _roboMakerRobotApplicationSourceConfigS3Bucket
    , (Just . ("S3Key",) . toJSON) _roboMakerRobotApplicationSourceConfigS3Key
    ]

instance FromJSON RoboMakerRobotApplicationSourceConfig where
  parseJSON (Object obj) =
    RoboMakerRobotApplicationSourceConfig <$>
      (obj .: "Architecture") <*>
      (obj .: "S3Bucket") <*>
      (obj .: "S3Key")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerRobotApplicationSourceConfig' containing
-- required fields as arguments.
roboMakerRobotApplicationSourceConfig
  :: Val Text -- ^ 'rmrascArchitecture'
  -> Val Text -- ^ 'rmrascS3Bucket'
  -> Val Text -- ^ 'rmrascS3Key'
  -> RoboMakerRobotApplicationSourceConfig
roboMakerRobotApplicationSourceConfig architecturearg s3Bucketarg s3Keyarg =
  RoboMakerRobotApplicationSourceConfig
  { _roboMakerRobotApplicationSourceConfigArchitecture = architecturearg
  , _roboMakerRobotApplicationSourceConfigS3Bucket = s3Bucketarg
  , _roboMakerRobotApplicationSourceConfigS3Key = s3Keyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html#cfn-robomaker-robotapplication-sourceconfig-architecture
rmrascArchitecture :: Lens' RoboMakerRobotApplicationSourceConfig (Val Text)
rmrascArchitecture = lens _roboMakerRobotApplicationSourceConfigArchitecture (\s a -> s { _roboMakerRobotApplicationSourceConfigArchitecture = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html#cfn-robomaker-robotapplication-sourceconfig-s3bucket
rmrascS3Bucket :: Lens' RoboMakerRobotApplicationSourceConfig (Val Text)
rmrascS3Bucket = lens _roboMakerRobotApplicationSourceConfigS3Bucket (\s a -> s { _roboMakerRobotApplicationSourceConfigS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html#cfn-robomaker-robotapplication-sourceconfig-s3key
rmrascS3Key :: Lens' RoboMakerRobotApplicationSourceConfig (Val Text)
rmrascS3Key = lens _roboMakerRobotApplicationSourceConfigS3Key (\s a -> s { _roboMakerRobotApplicationSourceConfigS3Key = a })
