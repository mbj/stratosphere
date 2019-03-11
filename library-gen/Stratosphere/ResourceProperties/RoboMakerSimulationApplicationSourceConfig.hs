{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html

module Stratosphere.ResourceProperties.RoboMakerSimulationApplicationSourceConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for RoboMakerSimulationApplicationSourceConfig.
-- See 'roboMakerSimulationApplicationSourceConfig' for a more convenient
-- constructor.
data RoboMakerSimulationApplicationSourceConfig =
  RoboMakerSimulationApplicationSourceConfig
  { _roboMakerSimulationApplicationSourceConfigArchitecture :: Val Text
  , _roboMakerSimulationApplicationSourceConfigS3Bucket :: Val Text
  , _roboMakerSimulationApplicationSourceConfigS3Key :: Val Text
  } deriving (Show, Eq)

instance ToJSON RoboMakerSimulationApplicationSourceConfig where
  toJSON RoboMakerSimulationApplicationSourceConfig{..} =
    object $
    catMaybes
    [ (Just . ("Architecture",) . toJSON) _roboMakerSimulationApplicationSourceConfigArchitecture
    , (Just . ("S3Bucket",) . toJSON) _roboMakerSimulationApplicationSourceConfigS3Bucket
    , (Just . ("S3Key",) . toJSON) _roboMakerSimulationApplicationSourceConfigS3Key
    ]

instance FromJSON RoboMakerSimulationApplicationSourceConfig where
  parseJSON (Object obj) =
    RoboMakerSimulationApplicationSourceConfig <$>
      (obj .: "Architecture") <*>
      (obj .: "S3Bucket") <*>
      (obj .: "S3Key")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerSimulationApplicationSourceConfig' containing
-- required fields as arguments.
roboMakerSimulationApplicationSourceConfig
  :: Val Text -- ^ 'rmsascArchitecture'
  -> Val Text -- ^ 'rmsascS3Bucket'
  -> Val Text -- ^ 'rmsascS3Key'
  -> RoboMakerSimulationApplicationSourceConfig
roboMakerSimulationApplicationSourceConfig architecturearg s3Bucketarg s3Keyarg =
  RoboMakerSimulationApplicationSourceConfig
  { _roboMakerSimulationApplicationSourceConfigArchitecture = architecturearg
  , _roboMakerSimulationApplicationSourceConfigS3Bucket = s3Bucketarg
  , _roboMakerSimulationApplicationSourceConfigS3Key = s3Keyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-architecture
rmsascArchitecture :: Lens' RoboMakerSimulationApplicationSourceConfig (Val Text)
rmsascArchitecture = lens _roboMakerSimulationApplicationSourceConfigArchitecture (\s a -> s { _roboMakerSimulationApplicationSourceConfigArchitecture = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-s3bucket
rmsascS3Bucket :: Lens' RoboMakerSimulationApplicationSourceConfig (Val Text)
rmsascS3Bucket = lens _roboMakerSimulationApplicationSourceConfigS3Bucket (\s a -> s { _roboMakerSimulationApplicationSourceConfigS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-s3key
rmsascS3Key :: Lens' RoboMakerSimulationApplicationSourceConfig (Val Text)
rmsascS3Key = lens _roboMakerSimulationApplicationSourceConfigS3Key (\s a -> s { _roboMakerSimulationApplicationSourceConfigS3Key = a })
