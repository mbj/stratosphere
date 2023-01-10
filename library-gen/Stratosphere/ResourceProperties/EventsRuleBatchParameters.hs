
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html

module Stratosphere.ResourceProperties.EventsRuleBatchParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventsRuleBatchArrayProperties
import Stratosphere.ResourceProperties.EventsRuleBatchRetryStrategy

-- | Full data type definition for EventsRuleBatchParameters. See
-- 'eventsRuleBatchParameters' for a more convenient constructor.
data EventsRuleBatchParameters =
  EventsRuleBatchParameters
  { _eventsRuleBatchParametersArrayProperties :: Maybe EventsRuleBatchArrayProperties
  , _eventsRuleBatchParametersJobDefinition :: Val Text
  , _eventsRuleBatchParametersJobName :: Val Text
  , _eventsRuleBatchParametersRetryStrategy :: Maybe EventsRuleBatchRetryStrategy
  } deriving (Show, Eq)

instance ToJSON EventsRuleBatchParameters where
  toJSON EventsRuleBatchParameters{..} =
    object $
    catMaybes
    [ fmap (("ArrayProperties",) . toJSON) _eventsRuleBatchParametersArrayProperties
    , (Just . ("JobDefinition",) . toJSON) _eventsRuleBatchParametersJobDefinition
    , (Just . ("JobName",) . toJSON) _eventsRuleBatchParametersJobName
    , fmap (("RetryStrategy",) . toJSON) _eventsRuleBatchParametersRetryStrategy
    ]

-- | Constructor for 'EventsRuleBatchParameters' containing required fields as
-- arguments.
eventsRuleBatchParameters
  :: Val Text -- ^ 'erbpJobDefinition'
  -> Val Text -- ^ 'erbpJobName'
  -> EventsRuleBatchParameters
eventsRuleBatchParameters jobDefinitionarg jobNamearg =
  EventsRuleBatchParameters
  { _eventsRuleBatchParametersArrayProperties = Nothing
  , _eventsRuleBatchParametersJobDefinition = jobDefinitionarg
  , _eventsRuleBatchParametersJobName = jobNamearg
  , _eventsRuleBatchParametersRetryStrategy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-arrayproperties
erbpArrayProperties :: Lens' EventsRuleBatchParameters (Maybe EventsRuleBatchArrayProperties)
erbpArrayProperties = lens _eventsRuleBatchParametersArrayProperties (\s a -> s { _eventsRuleBatchParametersArrayProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-jobdefinition
erbpJobDefinition :: Lens' EventsRuleBatchParameters (Val Text)
erbpJobDefinition = lens _eventsRuleBatchParametersJobDefinition (\s a -> s { _eventsRuleBatchParametersJobDefinition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-jobname
erbpJobName :: Lens' EventsRuleBatchParameters (Val Text)
erbpJobName = lens _eventsRuleBatchParametersJobName (\s a -> s { _eventsRuleBatchParametersJobName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-retrystrategy
erbpRetryStrategy :: Lens' EventsRuleBatchParameters (Maybe EventsRuleBatchRetryStrategy)
erbpRetryStrategy = lens _eventsRuleBatchParametersRetryStrategy (\s a -> s { _eventsRuleBatchParametersRetryStrategy = a })
