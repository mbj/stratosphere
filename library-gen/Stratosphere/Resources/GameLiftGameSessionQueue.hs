{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html

module Stratosphere.Resources.GameLiftGameSessionQueue where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftGameSessionQueueDestination
import Stratosphere.ResourceProperties.GameLiftGameSessionQueuePlayerLatencyPolicy

-- | Full data type definition for GameLiftGameSessionQueue. See
-- 'gameLiftGameSessionQueue' for a more convenient constructor.
data GameLiftGameSessionQueue =
  GameLiftGameSessionQueue
  { _gameLiftGameSessionQueueDestinations :: Maybe [GameLiftGameSessionQueueDestination]
  , _gameLiftGameSessionQueueName :: Val Text
  , _gameLiftGameSessionQueuePlayerLatencyPolicies :: Maybe [GameLiftGameSessionQueuePlayerLatencyPolicy]
  , _gameLiftGameSessionQueueTimeoutInSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftGameSessionQueue where
  toResourceProperties GameLiftGameSessionQueue{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::GameSessionQueue"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Destinations",) . toJSON) _gameLiftGameSessionQueueDestinations
        , (Just . ("Name",) . toJSON) _gameLiftGameSessionQueueName
        , fmap (("PlayerLatencyPolicies",) . toJSON) _gameLiftGameSessionQueuePlayerLatencyPolicies
        , fmap (("TimeoutInSeconds",) . toJSON) _gameLiftGameSessionQueueTimeoutInSeconds
        ]
    }

-- | Constructor for 'GameLiftGameSessionQueue' containing required fields as
-- arguments.
gameLiftGameSessionQueue
  :: Val Text -- ^ 'glgsqName'
  -> GameLiftGameSessionQueue
gameLiftGameSessionQueue namearg =
  GameLiftGameSessionQueue
  { _gameLiftGameSessionQueueDestinations = Nothing
  , _gameLiftGameSessionQueueName = namearg
  , _gameLiftGameSessionQueuePlayerLatencyPolicies = Nothing
  , _gameLiftGameSessionQueueTimeoutInSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-destinations
glgsqDestinations :: Lens' GameLiftGameSessionQueue (Maybe [GameLiftGameSessionQueueDestination])
glgsqDestinations = lens _gameLiftGameSessionQueueDestinations (\s a -> s { _gameLiftGameSessionQueueDestinations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-name
glgsqName :: Lens' GameLiftGameSessionQueue (Val Text)
glgsqName = lens _gameLiftGameSessionQueueName (\s a -> s { _gameLiftGameSessionQueueName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-playerlatencypolicies
glgsqPlayerLatencyPolicies :: Lens' GameLiftGameSessionQueue (Maybe [GameLiftGameSessionQueuePlayerLatencyPolicy])
glgsqPlayerLatencyPolicies = lens _gameLiftGameSessionQueuePlayerLatencyPolicies (\s a -> s { _gameLiftGameSessionQueuePlayerLatencyPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-timeoutinseconds
glgsqTimeoutInSeconds :: Lens' GameLiftGameSessionQueue (Maybe (Val Integer))
glgsqTimeoutInSeconds = lens _gameLiftGameSessionQueueTimeoutInSeconds (\s a -> s { _gameLiftGameSessionQueueTimeoutInSeconds = a })
