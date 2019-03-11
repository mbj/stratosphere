{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html

module Stratosphere.Resources.RoboMakerRobotApplicationVersion where

import Stratosphere.ResourceImports


-- | Full data type definition for RoboMakerRobotApplicationVersion. See
-- 'roboMakerRobotApplicationVersion' for a more convenient constructor.
data RoboMakerRobotApplicationVersion =
  RoboMakerRobotApplicationVersion
  { _roboMakerRobotApplicationVersionApplication :: Val Text
  , _roboMakerRobotApplicationVersionCurrentRevisionId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RoboMakerRobotApplicationVersion where
  toJSON RoboMakerRobotApplicationVersion{..} =
    object $
    catMaybes
    [ (Just . ("Application",) . toJSON) _roboMakerRobotApplicationVersionApplication
    , fmap (("CurrentRevisionId",) . toJSON) _roboMakerRobotApplicationVersionCurrentRevisionId
    ]

instance FromJSON RoboMakerRobotApplicationVersion where
  parseJSON (Object obj) =
    RoboMakerRobotApplicationVersion <$>
      (obj .: "Application") <*>
      (obj .:? "CurrentRevisionId")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerRobotApplicationVersion' containing required
-- fields as arguments.
roboMakerRobotApplicationVersion
  :: Val Text -- ^ 'rmravApplication'
  -> RoboMakerRobotApplicationVersion
roboMakerRobotApplicationVersion applicationarg =
  RoboMakerRobotApplicationVersion
  { _roboMakerRobotApplicationVersionApplication = applicationarg
  , _roboMakerRobotApplicationVersionCurrentRevisionId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-application
rmravApplication :: Lens' RoboMakerRobotApplicationVersion (Val Text)
rmravApplication = lens _roboMakerRobotApplicationVersionApplication (\s a -> s { _roboMakerRobotApplicationVersionApplication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-currentrevisionid
rmravCurrentRevisionId :: Lens' RoboMakerRobotApplicationVersion (Maybe (Val Text))
rmravCurrentRevisionId = lens _roboMakerRobotApplicationVersionCurrentRevisionId (\s a -> s { _roboMakerRobotApplicationVersionCurrentRevisionId = a })
