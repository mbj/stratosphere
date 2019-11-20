{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html

module Stratosphere.ResourceProperties.GameLiftFleetRuntimeConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftFleetServerProcess

-- | Full data type definition for GameLiftFleetRuntimeConfiguration. See
-- 'gameLiftFleetRuntimeConfiguration' for a more convenient constructor.
data GameLiftFleetRuntimeConfiguration =
  GameLiftFleetRuntimeConfiguration
  { _gameLiftFleetRuntimeConfigurationGameSessionActivationTimeoutSeconds :: Maybe (Val Integer)
  , _gameLiftFleetRuntimeConfigurationMaxConcurrentGameSessionActivations :: Maybe (Val Integer)
  , _gameLiftFleetRuntimeConfigurationServerProcesses :: Maybe [GameLiftFleetServerProcess]
  } deriving (Show, Eq)

instance ToJSON GameLiftFleetRuntimeConfiguration where
  toJSON GameLiftFleetRuntimeConfiguration{..} =
    object $
    catMaybes
    [ fmap (("GameSessionActivationTimeoutSeconds",) . toJSON) _gameLiftFleetRuntimeConfigurationGameSessionActivationTimeoutSeconds
    , fmap (("MaxConcurrentGameSessionActivations",) . toJSON) _gameLiftFleetRuntimeConfigurationMaxConcurrentGameSessionActivations
    , fmap (("ServerProcesses",) . toJSON) _gameLiftFleetRuntimeConfigurationServerProcesses
    ]

-- | Constructor for 'GameLiftFleetRuntimeConfiguration' containing required
-- fields as arguments.
gameLiftFleetRuntimeConfiguration
  :: GameLiftFleetRuntimeConfiguration
gameLiftFleetRuntimeConfiguration  =
  GameLiftFleetRuntimeConfiguration
  { _gameLiftFleetRuntimeConfigurationGameSessionActivationTimeoutSeconds = Nothing
  , _gameLiftFleetRuntimeConfigurationMaxConcurrentGameSessionActivations = Nothing
  , _gameLiftFleetRuntimeConfigurationServerProcesses = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-gamesessionactivationtimeoutseconds
glfrcGameSessionActivationTimeoutSeconds :: Lens' GameLiftFleetRuntimeConfiguration (Maybe (Val Integer))
glfrcGameSessionActivationTimeoutSeconds = lens _gameLiftFleetRuntimeConfigurationGameSessionActivationTimeoutSeconds (\s a -> s { _gameLiftFleetRuntimeConfigurationGameSessionActivationTimeoutSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-maxconcurrentgamesessionactivations
glfrcMaxConcurrentGameSessionActivations :: Lens' GameLiftFleetRuntimeConfiguration (Maybe (Val Integer))
glfrcMaxConcurrentGameSessionActivations = lens _gameLiftFleetRuntimeConfigurationMaxConcurrentGameSessionActivations (\s a -> s { _gameLiftFleetRuntimeConfigurationMaxConcurrentGameSessionActivations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-serverprocesses
glfrcServerProcesses :: Lens' GameLiftFleetRuntimeConfiguration (Maybe [GameLiftFleetServerProcess])
glfrcServerProcesses = lens _gameLiftFleetRuntimeConfigurationServerProcesses (\s a -> s { _gameLiftFleetRuntimeConfigurationServerProcesses = a })
