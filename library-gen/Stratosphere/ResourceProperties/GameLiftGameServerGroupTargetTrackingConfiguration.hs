
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-targettrackingconfiguration.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupTargetTrackingConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- GameLiftGameServerGroupTargetTrackingConfiguration. See
-- 'gameLiftGameServerGroupTargetTrackingConfiguration' for a more
-- convenient constructor.
data GameLiftGameServerGroupTargetTrackingConfiguration =
  GameLiftGameServerGroupTargetTrackingConfiguration
  { _gameLiftGameServerGroupTargetTrackingConfigurationTargetValue :: Val Double
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupTargetTrackingConfiguration where
  toJSON GameLiftGameServerGroupTargetTrackingConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("TargetValue",) . toJSON) _gameLiftGameServerGroupTargetTrackingConfigurationTargetValue
    ]

-- | Constructor for 'GameLiftGameServerGroupTargetTrackingConfiguration'
-- containing required fields as arguments.
gameLiftGameServerGroupTargetTrackingConfiguration
  :: Val Double -- ^ 'glgsgttcTargetValue'
  -> GameLiftGameServerGroupTargetTrackingConfiguration
gameLiftGameServerGroupTargetTrackingConfiguration targetValuearg =
  GameLiftGameServerGroupTargetTrackingConfiguration
  { _gameLiftGameServerGroupTargetTrackingConfigurationTargetValue = targetValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-targettrackingconfiguration.html#cfn-gamelift-gameservergroup-targettrackingconfiguration-targetvalue
glgsgttcTargetValue :: Lens' GameLiftGameServerGroupTargetTrackingConfiguration (Val Double)
glgsgttcTargetValue = lens _gameLiftGameServerGroupTargetTrackingConfigurationTargetValue (\s a -> s { _gameLiftGameServerGroupTargetTrackingConfigurationTargetValue = a })
