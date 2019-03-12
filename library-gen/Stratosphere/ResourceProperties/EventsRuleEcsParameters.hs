{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html

module Stratosphere.ResourceProperties.EventsRuleEcsParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleEcsParameters. See
-- 'eventsRuleEcsParameters' for a more convenient constructor.
data EventsRuleEcsParameters =
  EventsRuleEcsParameters
  { _eventsRuleEcsParametersTaskCount :: Maybe (Val Integer)
  , _eventsRuleEcsParametersTaskDefinitionArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleEcsParameters where
  toJSON EventsRuleEcsParameters{..} =
    object $
    catMaybes
    [ fmap (("TaskCount",) . toJSON . fmap Integer') _eventsRuleEcsParametersTaskCount
    , (Just . ("TaskDefinitionArn",) . toJSON) _eventsRuleEcsParametersTaskDefinitionArn
    ]

-- | Constructor for 'EventsRuleEcsParameters' containing required fields as
-- arguments.
eventsRuleEcsParameters
  :: Val Text -- ^ 'erepTaskDefinitionArn'
  -> EventsRuleEcsParameters
eventsRuleEcsParameters taskDefinitionArnarg =
  EventsRuleEcsParameters
  { _eventsRuleEcsParametersTaskCount = Nothing
  , _eventsRuleEcsParametersTaskDefinitionArn = taskDefinitionArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskcount
erepTaskCount :: Lens' EventsRuleEcsParameters (Maybe (Val Integer))
erepTaskCount = lens _eventsRuleEcsParametersTaskCount (\s a -> s { _eventsRuleEcsParametersTaskCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskdefinitionarn
erepTaskDefinitionArn :: Lens' EventsRuleEcsParameters (Val Text)
erepTaskDefinitionArn = lens _eventsRuleEcsParametersTaskDefinitionArn (\s a -> s { _eventsRuleEcsParametersTaskDefinitionArn = a })
