{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html

module Stratosphere.ResourceProperties.EventsRuleRunCommandTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleRunCommandTarget. See
-- 'eventsRuleRunCommandTarget' for a more convenient constructor.
data EventsRuleRunCommandTarget =
  EventsRuleRunCommandTarget
  { _eventsRuleRunCommandTargetKey :: Val Text
  , _eventsRuleRunCommandTargetValues :: ValList Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleRunCommandTarget where
  toJSON EventsRuleRunCommandTarget{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eventsRuleRunCommandTargetKey
    , (Just . ("Values",) . toJSON) _eventsRuleRunCommandTargetValues
    ]

-- | Constructor for 'EventsRuleRunCommandTarget' containing required fields
-- as arguments.
eventsRuleRunCommandTarget
  :: Val Text -- ^ 'errctKey'
  -> ValList Text -- ^ 'errctValues'
  -> EventsRuleRunCommandTarget
eventsRuleRunCommandTarget keyarg valuesarg =
  EventsRuleRunCommandTarget
  { _eventsRuleRunCommandTargetKey = keyarg
  , _eventsRuleRunCommandTargetValues = valuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-key
errctKey :: Lens' EventsRuleRunCommandTarget (Val Text)
errctKey = lens _eventsRuleRunCommandTargetKey (\s a -> s { _eventsRuleRunCommandTargetKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-values
errctValues :: Lens' EventsRuleRunCommandTarget (ValList Text)
errctValues = lens _eventsRuleRunCommandTargetValues (\s a -> s { _eventsRuleRunCommandTargetValues = a })
