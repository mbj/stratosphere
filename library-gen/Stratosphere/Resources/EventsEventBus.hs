{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html

module Stratosphere.Resources.EventsEventBus where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsEventBus. See 'eventsEventBus' for a
-- more convenient constructor.
data EventsEventBus =
  EventsEventBus
  { _eventsEventBusEventSourceName :: Maybe (Val Text)
  , _eventsEventBusName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EventsEventBus where
  toResourceProperties EventsEventBus{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Events::EventBus"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("EventSourceName",) . toJSON) _eventsEventBusEventSourceName
        , (Just . ("Name",) . toJSON) _eventsEventBusName
        ]
    }

-- | Constructor for 'EventsEventBus' containing required fields as arguments.
eventsEventBus
  :: Val Text -- ^ 'eebName'
  -> EventsEventBus
eventsEventBus namearg =
  EventsEventBus
  { _eventsEventBusEventSourceName = Nothing
  , _eventsEventBusName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-eventsourcename
eebEventSourceName :: Lens' EventsEventBus (Maybe (Val Text))
eebEventSourceName = lens _eventsEventBusEventSourceName (\s a -> s { _eventsEventBusEventSourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-name
eebName :: Lens' EventsEventBus (Val Text)
eebName = lens _eventsEventBusName (\s a -> s { _eventsEventBusName = a })
