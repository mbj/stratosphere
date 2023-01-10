
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html

module Stratosphere.ResourceProperties.GameLiftGameSessionQueuePlayerLatencyPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GameLiftGameSessionQueuePlayerLatencyPolicy. See
-- 'gameLiftGameSessionQueuePlayerLatencyPolicy' for a more convenient
-- constructor.
data GameLiftGameSessionQueuePlayerLatencyPolicy =
  GameLiftGameSessionQueuePlayerLatencyPolicy
  { _gameLiftGameSessionQueuePlayerLatencyPolicyMaximumIndividualPlayerLatencyMilliseconds :: Maybe (Val Integer)
  , _gameLiftGameSessionQueuePlayerLatencyPolicyPolicyDurationSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GameLiftGameSessionQueuePlayerLatencyPolicy where
  toJSON GameLiftGameSessionQueuePlayerLatencyPolicy{..} =
    object $
    catMaybes
    [ fmap (("MaximumIndividualPlayerLatencyMilliseconds",) . toJSON) _gameLiftGameSessionQueuePlayerLatencyPolicyMaximumIndividualPlayerLatencyMilliseconds
    , fmap (("PolicyDurationSeconds",) . toJSON) _gameLiftGameSessionQueuePlayerLatencyPolicyPolicyDurationSeconds
    ]

-- | Constructor for 'GameLiftGameSessionQueuePlayerLatencyPolicy' containing
-- required fields as arguments.
gameLiftGameSessionQueuePlayerLatencyPolicy
  :: GameLiftGameSessionQueuePlayerLatencyPolicy
gameLiftGameSessionQueuePlayerLatencyPolicy  =
  GameLiftGameSessionQueuePlayerLatencyPolicy
  { _gameLiftGameSessionQueuePlayerLatencyPolicyMaximumIndividualPlayerLatencyMilliseconds = Nothing
  , _gameLiftGameSessionQueuePlayerLatencyPolicyPolicyDurationSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-maximumindividualplayerlatencymilliseconds
glgsqplpMaximumIndividualPlayerLatencyMilliseconds :: Lens' GameLiftGameSessionQueuePlayerLatencyPolicy (Maybe (Val Integer))
glgsqplpMaximumIndividualPlayerLatencyMilliseconds = lens _gameLiftGameSessionQueuePlayerLatencyPolicyMaximumIndividualPlayerLatencyMilliseconds (\s a -> s { _gameLiftGameSessionQueuePlayerLatencyPolicyMaximumIndividualPlayerLatencyMilliseconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-policydurationseconds
glgsqplpPolicyDurationSeconds :: Lens' GameLiftGameSessionQueuePlayerLatencyPolicy (Maybe (Val Integer))
glgsqplpPolicyDurationSeconds = lens _gameLiftGameSessionQueuePlayerLatencyPolicyPolicyDurationSeconds (\s a -> s { _gameLiftGameSessionQueuePlayerLatencyPolicyPolicyDurationSeconds = a })
