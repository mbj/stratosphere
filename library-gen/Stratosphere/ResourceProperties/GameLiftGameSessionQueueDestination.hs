
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html

module Stratosphere.ResourceProperties.GameLiftGameSessionQueueDestination where

import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftGameSessionQueueDestination. See
-- 'gameLiftGameSessionQueueDestination' for a more convenient constructor.
data GameLiftGameSessionQueueDestination =
  GameLiftGameSessionQueueDestination
  { _gameLiftGameSessionQueueDestinationDestinationArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GameLiftGameSessionQueueDestination where
  toJSON GameLiftGameSessionQueueDestination{..} =
    object $
    catMaybes
    [ fmap (("DestinationArn",) . toJSON) _gameLiftGameSessionQueueDestinationDestinationArn
    ]

-- | Constructor for 'GameLiftGameSessionQueueDestination' containing required
-- fields as arguments.
gameLiftGameSessionQueueDestination
  :: GameLiftGameSessionQueueDestination
gameLiftGameSessionQueueDestination  =
  GameLiftGameSessionQueueDestination
  { _gameLiftGameSessionQueueDestinationDestinationArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html#cfn-gamelift-gamesessionqueue-destination-destinationarn
glgsqdDestinationArn :: Lens' GameLiftGameSessionQueueDestination (Maybe (Val Text))
glgsqdDestinationArn = lens _gameLiftGameSessionQueueDestinationDestinationArn (\s a -> s { _gameLiftGameSessionQueueDestinationDestinationArn = a })
