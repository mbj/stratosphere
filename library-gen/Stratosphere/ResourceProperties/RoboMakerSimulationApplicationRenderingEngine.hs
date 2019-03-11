{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html

module Stratosphere.ResourceProperties.RoboMakerSimulationApplicationRenderingEngine where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- RoboMakerSimulationApplicationRenderingEngine. See
-- 'roboMakerSimulationApplicationRenderingEngine' for a more convenient
-- constructor.
data RoboMakerSimulationApplicationRenderingEngine =
  RoboMakerSimulationApplicationRenderingEngine
  { _roboMakerSimulationApplicationRenderingEngineName :: Val Text
  , _roboMakerSimulationApplicationRenderingEngineVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON RoboMakerSimulationApplicationRenderingEngine where
  toJSON RoboMakerSimulationApplicationRenderingEngine{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _roboMakerSimulationApplicationRenderingEngineName
    , (Just . ("Version",) . toJSON) _roboMakerSimulationApplicationRenderingEngineVersion
    ]

instance FromJSON RoboMakerSimulationApplicationRenderingEngine where
  parseJSON (Object obj) =
    RoboMakerSimulationApplicationRenderingEngine <$>
      (obj .: "Name") <*>
      (obj .: "Version")
  parseJSON _ = mempty

-- | Constructor for 'RoboMakerSimulationApplicationRenderingEngine'
-- containing required fields as arguments.
roboMakerSimulationApplicationRenderingEngine
  :: Val Text -- ^ 'rmsareName'
  -> Val Text -- ^ 'rmsareVersion'
  -> RoboMakerSimulationApplicationRenderingEngine
roboMakerSimulationApplicationRenderingEngine namearg versionarg =
  RoboMakerSimulationApplicationRenderingEngine
  { _roboMakerSimulationApplicationRenderingEngineName = namearg
  , _roboMakerSimulationApplicationRenderingEngineVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html#cfn-robomaker-simulationapplication-renderingengine-name
rmsareName :: Lens' RoboMakerSimulationApplicationRenderingEngine (Val Text)
rmsareName = lens _roboMakerSimulationApplicationRenderingEngineName (\s a -> s { _roboMakerSimulationApplicationRenderingEngineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html#cfn-robomaker-simulationapplication-renderingengine-version
rmsareVersion :: Lens' RoboMakerSimulationApplicationRenderingEngine (Val Text)
rmsareVersion = lens _roboMakerSimulationApplicationRenderingEngineVersion (\s a -> s { _roboMakerSimulationApplicationRenderingEngineVersion = a })
