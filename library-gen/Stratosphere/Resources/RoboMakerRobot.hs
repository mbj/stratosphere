{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html

module Stratosphere.Resources.RoboMakerRobot where

import Stratosphere.ResourceImports


-- | Full data type definition for RoboMakerRobot. See 'roboMakerRobot' for a
-- more convenient constructor.
data RoboMakerRobot =
  RoboMakerRobot
  { _roboMakerRobotArchitecture :: Val Text
  , _roboMakerRobotFleet :: Maybe (Val Text)
  , _roboMakerRobotGreengrassGroupId :: Val Text
  , _roboMakerRobotName :: Maybe (Val Text)
  , _roboMakerRobotTags :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON RoboMakerRobot where
  toJSON RoboMakerRobot{..} =
    object $
    catMaybes
    [ (Just . ("Architecture",) . toJSON) _roboMakerRobotArchitecture
    , fmap (("Fleet",) . toJSON) _roboMakerRobotFleet
    , (Just . ("GreengrassGroupId",) . toJSON) _roboMakerRobotGreengrassGroupId
    , fmap (("Name",) . toJSON) _roboMakerRobotName
    , fmap (("Tags",) . toJSON) _roboMakerRobotTags
    ]

instance FromJSON RoboMakerRobot where
  parseJSON (Object obj) =
    RoboMakerRobot <$>
      (obj .: "Architecture") <*>
      (obj .:? "Fleet") <*>
      (obj .: "GreengrassGroupId") <*>
      (obj .:? "Name") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerRobot' containing required fields as arguments.
roboMakerRobot
  :: Val Text -- ^ 'rmrArchitecture'
  -> Val Text -- ^ 'rmrGreengrassGroupId'
  -> RoboMakerRobot
roboMakerRobot architecturearg greengrassGroupIdarg =
  RoboMakerRobot
  { _roboMakerRobotArchitecture = architecturearg
  , _roboMakerRobotFleet = Nothing
  , _roboMakerRobotGreengrassGroupId = greengrassGroupIdarg
  , _roboMakerRobotName = Nothing
  , _roboMakerRobotTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-architecture
rmrArchitecture :: Lens' RoboMakerRobot (Val Text)
rmrArchitecture = lens _roboMakerRobotArchitecture (\s a -> s { _roboMakerRobotArchitecture = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-fleet
rmrFleet :: Lens' RoboMakerRobot (Maybe (Val Text))
rmrFleet = lens _roboMakerRobotFleet (\s a -> s { _roboMakerRobotFleet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-greengrassgroupid
rmrGreengrassGroupId :: Lens' RoboMakerRobot (Val Text)
rmrGreengrassGroupId = lens _roboMakerRobotGreengrassGroupId (\s a -> s { _roboMakerRobotGreengrassGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-name
rmrName :: Lens' RoboMakerRobot (Maybe (Val Text))
rmrName = lens _roboMakerRobotName (\s a -> s { _roboMakerRobotName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-tags
rmrTags :: Lens' RoboMakerRobot (Maybe Object)
rmrTags = lens _roboMakerRobotTags (\s a -> s { _roboMakerRobotTags = a })
