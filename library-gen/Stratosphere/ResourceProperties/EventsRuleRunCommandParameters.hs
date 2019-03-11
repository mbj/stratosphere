{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html

module Stratosphere.ResourceProperties.EventsRuleRunCommandParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventsRuleRunCommandTarget

-- | Full data type definition for EventsRuleRunCommandParameters. See
-- 'eventsRuleRunCommandParameters' for a more convenient constructor.
data EventsRuleRunCommandParameters =
  EventsRuleRunCommandParameters
  { _eventsRuleRunCommandParametersRunCommandTargets :: [EventsRuleRunCommandTarget]
  } deriving (Show, Eq)

instance ToJSON EventsRuleRunCommandParameters where
  toJSON EventsRuleRunCommandParameters{..} =
    object $
    catMaybes
    [ (Just . ("RunCommandTargets",) . toJSON) _eventsRuleRunCommandParametersRunCommandTargets
    ]

-- | Constructor for 'EventsRuleRunCommandParameters' containing required
-- fields as arguments.
eventsRuleRunCommandParameters
  :: [EventsRuleRunCommandTarget] -- ^ 'errcpRunCommandTargets'
  -> EventsRuleRunCommandParameters
eventsRuleRunCommandParameters runCommandTargetsarg =
  EventsRuleRunCommandParameters
  { _eventsRuleRunCommandParametersRunCommandTargets = runCommandTargetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html#cfn-events-rule-runcommandparameters-runcommandtargets
errcpRunCommandTargets :: Lens' EventsRuleRunCommandParameters [EventsRuleRunCommandTarget]
errcpRunCommandTargets = lens _eventsRuleRunCommandParametersRunCommandTargets (\s a -> s { _eventsRuleRunCommandParametersRunCommandTargets = a })
