{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-robotsoftwaresuite.html

module Stratosphere.ResourceProperties.RoboMakerRobotApplicationRobotSoftwareSuite where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- RoboMakerRobotApplicationRobotSoftwareSuite. See
-- 'roboMakerRobotApplicationRobotSoftwareSuite' for a more convenient
-- constructor.
data RoboMakerRobotApplicationRobotSoftwareSuite =
  RoboMakerRobotApplicationRobotSoftwareSuite
  { _roboMakerRobotApplicationRobotSoftwareSuiteName :: Val Text
  , _roboMakerRobotApplicationRobotSoftwareSuiteVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON RoboMakerRobotApplicationRobotSoftwareSuite where
  toJSON RoboMakerRobotApplicationRobotSoftwareSuite{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _roboMakerRobotApplicationRobotSoftwareSuiteName
    , (Just . ("Version",) . toJSON) _roboMakerRobotApplicationRobotSoftwareSuiteVersion
    ]

instance FromJSON RoboMakerRobotApplicationRobotSoftwareSuite where
  parseJSON (Object obj) =
    RoboMakerRobotApplicationRobotSoftwareSuite <$>
      (obj .: "Name") <*>
      (obj .: "Version")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerRobotApplicationRobotSoftwareSuite' containing
-- required fields as arguments.
roboMakerRobotApplicationRobotSoftwareSuite
  :: Val Text -- ^ 'rmrarssName'
  -> Val Text -- ^ 'rmrarssVersion'
  -> RoboMakerRobotApplicationRobotSoftwareSuite
roboMakerRobotApplicationRobotSoftwareSuite namearg versionarg =
  RoboMakerRobotApplicationRobotSoftwareSuite
  { _roboMakerRobotApplicationRobotSoftwareSuiteName = namearg
  , _roboMakerRobotApplicationRobotSoftwareSuiteVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-robotsoftwaresuite.html#cfn-robomaker-robotapplication-robotsoftwaresuite-name
rmrarssName :: Lens' RoboMakerRobotApplicationRobotSoftwareSuite (Val Text)
rmrarssName = lens _roboMakerRobotApplicationRobotSoftwareSuiteName (\s a -> s { _roboMakerRobotApplicationRobotSoftwareSuiteName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-robotsoftwaresuite.html#cfn-robomaker-robotapplication-robotsoftwaresuite-version
rmrarssVersion :: Lens' RoboMakerRobotApplicationRobotSoftwareSuite (Val Text)
rmrarssVersion = lens _roboMakerRobotApplicationRobotSoftwareSuiteVersion (\s a -> s { _roboMakerRobotApplicationRobotSoftwareSuiteVersion = a })
