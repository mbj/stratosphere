
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchretrystrategy.html

module Stratosphere.ResourceProperties.EventsRuleBatchRetryStrategy where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleBatchRetryStrategy. See
-- 'eventsRuleBatchRetryStrategy' for a more convenient constructor.
data EventsRuleBatchRetryStrategy =
  EventsRuleBatchRetryStrategy
  { _eventsRuleBatchRetryStrategyAttempts :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EventsRuleBatchRetryStrategy where
  toJSON EventsRuleBatchRetryStrategy{..} =
    object $
    catMaybes
    [ fmap (("Attempts",) . toJSON) _eventsRuleBatchRetryStrategyAttempts
    ]

-- | Constructor for 'EventsRuleBatchRetryStrategy' containing required fields
-- as arguments.
eventsRuleBatchRetryStrategy
  :: EventsRuleBatchRetryStrategy
eventsRuleBatchRetryStrategy  =
  EventsRuleBatchRetryStrategy
  { _eventsRuleBatchRetryStrategyAttempts = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchretrystrategy.html#cfn-events-rule-batchretrystrategy-attempts
erbrsAttempts :: Lens' EventsRuleBatchRetryStrategy (Maybe (Val Integer))
erbrsAttempts = lens _eventsRuleBatchRetryStrategyAttempts (\s a -> s { _eventsRuleBatchRetryStrategyAttempts = a })
