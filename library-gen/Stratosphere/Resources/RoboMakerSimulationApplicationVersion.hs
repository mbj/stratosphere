{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html

module Stratosphere.Resources.RoboMakerSimulationApplicationVersion where

import Stratosphere.ResourceImports


-- | Full data type definition for RoboMakerSimulationApplicationVersion. See
-- 'roboMakerSimulationApplicationVersion' for a more convenient
-- constructor.
data RoboMakerSimulationApplicationVersion =
  RoboMakerSimulationApplicationVersion
  { _roboMakerSimulationApplicationVersionApplication :: Val Text
  , _roboMakerSimulationApplicationVersionCurrentRevisionId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RoboMakerSimulationApplicationVersion where
  toJSON RoboMakerSimulationApplicationVersion{..} =
    object $
    catMaybes
    [ (Just . ("Application",) . toJSON) _roboMakerSimulationApplicationVersionApplication
    , fmap (("CurrentRevisionId",) . toJSON) _roboMakerSimulationApplicationVersionCurrentRevisionId
    ]

instance FromJSON RoboMakerSimulationApplicationVersion where
  parseJSON (Object obj) =
    RoboMakerSimulationApplicationVersion <$>
      (obj .: "Application") <*>
      (obj .:? "CurrentRevisionId")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerSimulationApplicationVersion' containing
-- required fields as arguments.
roboMakerSimulationApplicationVersion
  :: Val Text -- ^ 'rmsavApplication'
  -> RoboMakerSimulationApplicationVersion
roboMakerSimulationApplicationVersion applicationarg =
  RoboMakerSimulationApplicationVersion
  { _roboMakerSimulationApplicationVersionApplication = applicationarg
  , _roboMakerSimulationApplicationVersionCurrentRevisionId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-application
rmsavApplication :: Lens' RoboMakerSimulationApplicationVersion (Val Text)
rmsavApplication = lens _roboMakerSimulationApplicationVersionApplication (\s a -> s { _roboMakerSimulationApplicationVersionApplication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-currentrevisionid
rmsavCurrentRevisionId :: Lens' RoboMakerSimulationApplicationVersion (Maybe (Val Text))
rmsavCurrentRevisionId = lens _roboMakerSimulationApplicationVersionCurrentRevisionId (\s a -> s { _roboMakerSimulationApplicationVersionCurrentRevisionId = a })
