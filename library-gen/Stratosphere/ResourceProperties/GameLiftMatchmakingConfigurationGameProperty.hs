
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html

module Stratosphere.ResourceProperties.GameLiftMatchmakingConfigurationGameProperty where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GameLiftMatchmakingConfigurationGameProperty. See
-- 'gameLiftMatchmakingConfigurationGameProperty' for a more convenient
-- constructor.
data GameLiftMatchmakingConfigurationGameProperty =
  GameLiftMatchmakingConfigurationGameProperty
  { _gameLiftMatchmakingConfigurationGamePropertyKey :: Val Text
  , _gameLiftMatchmakingConfigurationGamePropertyValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON GameLiftMatchmakingConfigurationGameProperty where
  toJSON GameLiftMatchmakingConfigurationGameProperty{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _gameLiftMatchmakingConfigurationGamePropertyKey
    , (Just . ("Value",) . toJSON) _gameLiftMatchmakingConfigurationGamePropertyValue
    ]

-- | Constructor for 'GameLiftMatchmakingConfigurationGameProperty' containing
-- required fields as arguments.
gameLiftMatchmakingConfigurationGameProperty
  :: Val Text -- ^ 'glmcgpKey'
  -> Val Text -- ^ 'glmcgpValue'
  -> GameLiftMatchmakingConfigurationGameProperty
gameLiftMatchmakingConfigurationGameProperty keyarg valuearg =
  GameLiftMatchmakingConfigurationGameProperty
  { _gameLiftMatchmakingConfigurationGamePropertyKey = keyarg
  , _gameLiftMatchmakingConfigurationGamePropertyValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-key
glmcgpKey :: Lens' GameLiftMatchmakingConfigurationGameProperty (Val Text)
glmcgpKey = lens _gameLiftMatchmakingConfigurationGamePropertyKey (\s a -> s { _gameLiftMatchmakingConfigurationGamePropertyKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-value
glmcgpValue :: Lens' GameLiftMatchmakingConfigurationGameProperty (Val Text)
glmcgpValue = lens _gameLiftMatchmakingConfigurationGamePropertyValue (\s a -> s { _gameLiftMatchmakingConfigurationGamePropertyValue = a })
