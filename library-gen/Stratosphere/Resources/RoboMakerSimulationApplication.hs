{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html

module Stratosphere.Resources.RoboMakerSimulationApplication where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RoboMakerSimulationApplicationRenderingEngine
import Stratosphere.ResourceProperties.RoboMakerSimulationApplicationRobotSoftwareSuite
import Stratosphere.ResourceProperties.RoboMakerSimulationApplicationSimulationSoftwareSuite
import Stratosphere.ResourceProperties.RoboMakerSimulationApplicationSourceConfig

-- | Full data type definition for RoboMakerSimulationApplication. See
-- 'roboMakerSimulationApplication' for a more convenient constructor.
data RoboMakerSimulationApplication =
  RoboMakerSimulationApplication
  { _roboMakerSimulationApplicationCurrentRevisionId :: Maybe (Val Text)
  , _roboMakerSimulationApplicationName :: Maybe (Val Text)
  , _roboMakerSimulationApplicationRenderingEngine :: RoboMakerSimulationApplicationRenderingEngine
  , _roboMakerSimulationApplicationRobotSoftwareSuite :: RoboMakerSimulationApplicationRobotSoftwareSuite
  , _roboMakerSimulationApplicationSimulationSoftwareSuite :: RoboMakerSimulationApplicationSimulationSoftwareSuite
  , _roboMakerSimulationApplicationSources :: [RoboMakerSimulationApplicationSourceConfig]
  , _roboMakerSimulationApplicationTags :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON RoboMakerSimulationApplication where
  toJSON RoboMakerSimulationApplication{..} =
    object $
    catMaybes
    [ fmap (("CurrentRevisionId",) . toJSON) _roboMakerSimulationApplicationCurrentRevisionId
    , fmap (("Name",) . toJSON) _roboMakerSimulationApplicationName
    , (Just . ("RenderingEngine",) . toJSON) _roboMakerSimulationApplicationRenderingEngine
    , (Just . ("RobotSoftwareSuite",) . toJSON) _roboMakerSimulationApplicationRobotSoftwareSuite
    , (Just . ("SimulationSoftwareSuite",) . toJSON) _roboMakerSimulationApplicationSimulationSoftwareSuite
    , (Just . ("Sources",) . toJSON) _roboMakerSimulationApplicationSources
    , fmap (("Tags",) . toJSON) _roboMakerSimulationApplicationTags
    ]

instance FromJSON RoboMakerSimulationApplication where
  parseJSON (Object obj) =
    RoboMakerSimulationApplication <$>
      (obj .:? "CurrentRevisionId") <*>
      (obj .:? "Name") <*>
      (obj .: "RenderingEngine") <*>
      (obj .: "RobotSoftwareSuite") <*>
      (obj .: "SimulationSoftwareSuite") <*>
      (obj .: "Sources") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerSimulationApplication' containing required
-- fields as arguments.
roboMakerSimulationApplication
  :: RoboMakerSimulationApplicationRenderingEngine -- ^ 'rmsaRenderingEngine'
  -> RoboMakerSimulationApplicationRobotSoftwareSuite -- ^ 'rmsaRobotSoftwareSuite'
  -> RoboMakerSimulationApplicationSimulationSoftwareSuite -- ^ 'rmsaSimulationSoftwareSuite'
  -> [RoboMakerSimulationApplicationSourceConfig] -- ^ 'rmsaSources'
  -> RoboMakerSimulationApplication
roboMakerSimulationApplication renderingEnginearg robotSoftwareSuitearg simulationSoftwareSuitearg sourcesarg =
  RoboMakerSimulationApplication
  { _roboMakerSimulationApplicationCurrentRevisionId = Nothing
  , _roboMakerSimulationApplicationName = Nothing
  , _roboMakerSimulationApplicationRenderingEngine = renderingEnginearg
  , _roboMakerSimulationApplicationRobotSoftwareSuite = robotSoftwareSuitearg
  , _roboMakerSimulationApplicationSimulationSoftwareSuite = simulationSoftwareSuitearg
  , _roboMakerSimulationApplicationSources = sourcesarg
  , _roboMakerSimulationApplicationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-currentrevisionid
rmsaCurrentRevisionId :: Lens' RoboMakerSimulationApplication (Maybe (Val Text))
rmsaCurrentRevisionId = lens _roboMakerSimulationApplicationCurrentRevisionId (\s a -> s { _roboMakerSimulationApplicationCurrentRevisionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-name
rmsaName :: Lens' RoboMakerSimulationApplication (Maybe (Val Text))
rmsaName = lens _roboMakerSimulationApplicationName (\s a -> s { _roboMakerSimulationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-renderingengine
rmsaRenderingEngine :: Lens' RoboMakerSimulationApplication RoboMakerSimulationApplicationRenderingEngine
rmsaRenderingEngine = lens _roboMakerSimulationApplicationRenderingEngine (\s a -> s { _roboMakerSimulationApplicationRenderingEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-robotsoftwaresuite
rmsaRobotSoftwareSuite :: Lens' RoboMakerSimulationApplication RoboMakerSimulationApplicationRobotSoftwareSuite
rmsaRobotSoftwareSuite = lens _roboMakerSimulationApplicationRobotSoftwareSuite (\s a -> s { _roboMakerSimulationApplicationRobotSoftwareSuite = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite
rmsaSimulationSoftwareSuite :: Lens' RoboMakerSimulationApplication RoboMakerSimulationApplicationSimulationSoftwareSuite
rmsaSimulationSoftwareSuite = lens _roboMakerSimulationApplicationSimulationSoftwareSuite (\s a -> s { _roboMakerSimulationApplicationSimulationSoftwareSuite = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-sources
rmsaSources :: Lens' RoboMakerSimulationApplication [RoboMakerSimulationApplicationSourceConfig]
rmsaSources = lens _roboMakerSimulationApplicationSources (\s a -> s { _roboMakerSimulationApplicationSources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-tags
rmsaTags :: Lens' RoboMakerSimulationApplication (Maybe Object)
rmsaTags = lens _roboMakerSimulationApplicationTags (\s a -> s { _roboMakerSimulationApplicationTags = a })
