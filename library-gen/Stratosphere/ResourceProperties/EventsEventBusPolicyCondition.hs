{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html

module Stratosphere.ResourceProperties.EventsEventBusPolicyCondition where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsEventBusPolicyCondition. See
-- 'eventsEventBusPolicyCondition' for a more convenient constructor.
data EventsEventBusPolicyCondition =
  EventsEventBusPolicyCondition
  { _eventsEventBusPolicyConditionKey :: Maybe (Val Text)
  , _eventsEventBusPolicyConditionType :: Maybe (Val Text)
  , _eventsEventBusPolicyConditionValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EventsEventBusPolicyCondition where
  toJSON EventsEventBusPolicyCondition{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _eventsEventBusPolicyConditionKey
    , fmap (("Type",) . toJSON) _eventsEventBusPolicyConditionType
    , fmap (("Value",) . toJSON) _eventsEventBusPolicyConditionValue
    ]

-- | Constructor for 'EventsEventBusPolicyCondition' containing required
-- fields as arguments.
eventsEventBusPolicyCondition
  :: EventsEventBusPolicyCondition
eventsEventBusPolicyCondition  =
  EventsEventBusPolicyCondition
  { _eventsEventBusPolicyConditionKey = Nothing
  , _eventsEventBusPolicyConditionType = Nothing
  , _eventsEventBusPolicyConditionValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-key
eebpcKey :: Lens' EventsEventBusPolicyCondition (Maybe (Val Text))
eebpcKey = lens _eventsEventBusPolicyConditionKey (\s a -> s { _eventsEventBusPolicyConditionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-type
eebpcType :: Lens' EventsEventBusPolicyCondition (Maybe (Val Text))
eebpcType = lens _eventsEventBusPolicyConditionType (\s a -> s { _eventsEventBusPolicyConditionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-value
eebpcValue :: Lens' EventsEventBusPolicyCondition (Maybe (Val Text))
eebpcValue = lens _eventsEventBusPolicyConditionValue (\s a -> s { _eventsEventBusPolicyConditionValue = a })
