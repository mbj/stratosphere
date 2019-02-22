{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html

module Stratosphere.ResourceProperties.RoboMakerSimulationApplicationRobotSoftwareSuite where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- RoboMakerSimulationApplicationRobotSoftwareSuite. See
-- 'roboMakerSimulationApplicationRobotSoftwareSuite' for a more convenient
-- constructor.
data RoboMakerSimulationApplicationRobotSoftwareSuite =
  RoboMakerSimulationApplicationRobotSoftwareSuite
  { _roboMakerSimulationApplicationRobotSoftwareSuiteName :: Val Text
  , _roboMakerSimulationApplicationRobotSoftwareSuiteVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON RoboMakerSimulationApplicationRobotSoftwareSuite where
  toJSON RoboMakerSimulationApplicationRobotSoftwareSuite{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _roboMakerSimulationApplicationRobotSoftwareSuiteName
    , (Just . ("Version",) . toJSON) _roboMakerSimulationApplicationRobotSoftwareSuiteVersion
    ]

instance FromJSON RoboMakerSimulationApplicationRobotSoftwareSuite where
  parseJSON (Object obj) =
    RoboMakerSimulationApplicationRobotSoftwareSuite <$>
      (obj .: "Name") <*>
      (obj .: "Version")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerSimulationApplicationRobotSoftwareSuite'
-- containing required fields as arguments.
roboMakerSimulationApplicationRobotSoftwareSuite
  :: Val Text -- ^ 'rmsarssName'
  -> Val Text -- ^ 'rmsarssVersion'
  -> RoboMakerSimulationApplicationRobotSoftwareSuite
roboMakerSimulationApplicationRobotSoftwareSuite namearg versionarg =
  RoboMakerSimulationApplicationRobotSoftwareSuite
  { _roboMakerSimulationApplicationRobotSoftwareSuiteName = namearg
  , _roboMakerSimulationApplicationRobotSoftwareSuiteVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html#cfn-robomaker-simulationapplication-robotsoftwaresuite-name
rmsarssName :: Lens' RoboMakerSimulationApplicationRobotSoftwareSuite (Val Text)
rmsarssName = lens _roboMakerSimulationApplicationRobotSoftwareSuiteName (\s a -> s { _roboMakerSimulationApplicationRobotSoftwareSuiteName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html#cfn-robomaker-simulationapplication-robotsoftwaresuite-version
rmsarssVersion :: Lens' RoboMakerSimulationApplicationRobotSoftwareSuite (Val Text)
rmsarssVersion = lens _roboMakerSimulationApplicationRobotSoftwareSuiteVersion (\s a -> s { _roboMakerSimulationApplicationRobotSoftwareSuiteVersion = a })
