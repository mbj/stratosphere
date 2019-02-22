{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html

module Stratosphere.ResourceProperties.RoboMakerSimulationApplicationSimulationSoftwareSuite where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- RoboMakerSimulationApplicationSimulationSoftwareSuite. See
-- 'roboMakerSimulationApplicationSimulationSoftwareSuite' for a more
-- convenient constructor.
data RoboMakerSimulationApplicationSimulationSoftwareSuite =
  RoboMakerSimulationApplicationSimulationSoftwareSuite
  { _roboMakerSimulationApplicationSimulationSoftwareSuiteName :: Val Text
  , _roboMakerSimulationApplicationSimulationSoftwareSuiteVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON RoboMakerSimulationApplicationSimulationSoftwareSuite where
  toJSON RoboMakerSimulationApplicationSimulationSoftwareSuite{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _roboMakerSimulationApplicationSimulationSoftwareSuiteName
    , (Just . ("Version",) . toJSON) _roboMakerSimulationApplicationSimulationSoftwareSuiteVersion
    ]

instance FromJSON RoboMakerSimulationApplicationSimulationSoftwareSuite where
  parseJSON (Object obj) =
    RoboMakerSimulationApplicationSimulationSoftwareSuite <$>
      (obj .: "Name") <*>
      (obj .: "Version")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerSimulationApplicationSimulationSoftwareSuite'
-- containing required fields as arguments.
roboMakerSimulationApplicationSimulationSoftwareSuite
  :: Val Text -- ^ 'rmsasssName'
  -> Val Text -- ^ 'rmsasssVersion'
  -> RoboMakerSimulationApplicationSimulationSoftwareSuite
roboMakerSimulationApplicationSimulationSoftwareSuite namearg versionarg =
  RoboMakerSimulationApplicationSimulationSoftwareSuite
  { _roboMakerSimulationApplicationSimulationSoftwareSuiteName = namearg
  , _roboMakerSimulationApplicationSimulationSoftwareSuiteVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite-name
rmsasssName :: Lens' RoboMakerSimulationApplicationSimulationSoftwareSuite (Val Text)
rmsasssName = lens _roboMakerSimulationApplicationSimulationSoftwareSuiteName (\s a -> s { _roboMakerSimulationApplicationSimulationSoftwareSuiteName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite-version
rmsasssVersion :: Lens' RoboMakerSimulationApplicationSimulationSoftwareSuite (Val Text)
rmsasssVersion = lens _roboMakerSimulationApplicationSimulationSoftwareSuiteVersion (\s a -> s { _roboMakerSimulationApplicationSimulationSoftwareSuiteVersion = a })
