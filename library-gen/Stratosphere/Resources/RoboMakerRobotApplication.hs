{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html

module Stratosphere.Resources.RoboMakerRobotApplication where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RoboMakerRobotApplicationRobotSoftwareSuite
import Stratosphere.ResourceProperties.RoboMakerRobotApplicationSourceConfig

-- | Full data type definition for RoboMakerRobotApplication. See
-- 'roboMakerRobotApplication' for a more convenient constructor.
data RoboMakerRobotApplication =
  RoboMakerRobotApplication
  { _roboMakerRobotApplicationCurrentRevisionId :: Maybe (Val Text)
  , _roboMakerRobotApplicationName :: Maybe (Val Text)
  , _roboMakerRobotApplicationRobotSoftwareSuite :: RoboMakerRobotApplicationRobotSoftwareSuite
  , _roboMakerRobotApplicationSources :: [RoboMakerRobotApplicationSourceConfig]
  , _roboMakerRobotApplicationTags :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON RoboMakerRobotApplication where
  toJSON RoboMakerRobotApplication{..} =
    object $
    catMaybes
    [ fmap (("CurrentRevisionId",) . toJSON) _roboMakerRobotApplicationCurrentRevisionId
    , fmap (("Name",) . toJSON) _roboMakerRobotApplicationName
    , (Just . ("RobotSoftwareSuite",) . toJSON) _roboMakerRobotApplicationRobotSoftwareSuite
    , (Just . ("Sources",) . toJSON) _roboMakerRobotApplicationSources
    , fmap (("Tags",) . toJSON) _roboMakerRobotApplicationTags
    ]

instance FromJSON RoboMakerRobotApplication where
  parseJSON (Object obj) =
    RoboMakerRobotApplication <$>
      (obj .:? "CurrentRevisionId") <*>
      (obj .:? "Name") <*>
      (obj .: "RobotSoftwareSuite") <*>
      (obj .: "Sources") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerRobotApplication' containing required fields as
-- arguments.
roboMakerRobotApplication
  :: RoboMakerRobotApplicationRobotSoftwareSuite -- ^ 'rmraRobotSoftwareSuite'
  -> [RoboMakerRobotApplicationSourceConfig] -- ^ 'rmraSources'
  -> RoboMakerRobotApplication
roboMakerRobotApplication robotSoftwareSuitearg sourcesarg =
  RoboMakerRobotApplication
  { _roboMakerRobotApplicationCurrentRevisionId = Nothing
  , _roboMakerRobotApplicationName = Nothing
  , _roboMakerRobotApplicationRobotSoftwareSuite = robotSoftwareSuitearg
  , _roboMakerRobotApplicationSources = sourcesarg
  , _roboMakerRobotApplicationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-currentrevisionid
rmraCurrentRevisionId :: Lens' RoboMakerRobotApplication (Maybe (Val Text))
rmraCurrentRevisionId = lens _roboMakerRobotApplicationCurrentRevisionId (\s a -> s { _roboMakerRobotApplicationCurrentRevisionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-name
rmraName :: Lens' RoboMakerRobotApplication (Maybe (Val Text))
rmraName = lens _roboMakerRobotApplicationName (\s a -> s { _roboMakerRobotApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-robotsoftwaresuite
rmraRobotSoftwareSuite :: Lens' RoboMakerRobotApplication RoboMakerRobotApplicationRobotSoftwareSuite
rmraRobotSoftwareSuite = lens _roboMakerRobotApplicationRobotSoftwareSuite (\s a -> s { _roboMakerRobotApplicationRobotSoftwareSuite = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-sources
rmraSources :: Lens' RoboMakerRobotApplication [RoboMakerRobotApplicationSourceConfig]
rmraSources = lens _roboMakerRobotApplicationSources (\s a -> s { _roboMakerRobotApplicationSources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-tags
rmraTags :: Lens' RoboMakerRobotApplication (Maybe Object)
rmraTags = lens _roboMakerRobotApplicationTags (\s a -> s { _roboMakerRobotApplicationTags = a })
