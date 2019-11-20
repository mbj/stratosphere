{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html

module Stratosphere.ResourceProperties.EventsRuleBatchArrayProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleBatchArrayProperties. See
-- 'eventsRuleBatchArrayProperties' for a more convenient constructor.
data EventsRuleBatchArrayProperties =
  EventsRuleBatchArrayProperties
  { _eventsRuleBatchArrayPropertiesSize :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EventsRuleBatchArrayProperties where
  toJSON EventsRuleBatchArrayProperties{..} =
    object $
    catMaybes
    [ fmap (("Size",) . toJSON) _eventsRuleBatchArrayPropertiesSize
    ]

-- | Constructor for 'EventsRuleBatchArrayProperties' containing required
-- fields as arguments.
eventsRuleBatchArrayProperties
  :: EventsRuleBatchArrayProperties
eventsRuleBatchArrayProperties  =
  EventsRuleBatchArrayProperties
  { _eventsRuleBatchArrayPropertiesSize = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html#cfn-events-rule-batcharrayproperties-size
erbapSize :: Lens' EventsRuleBatchArrayProperties (Maybe (Val Integer))
erbapSize = lens _eventsRuleBatchArrayPropertiesSize (\s a -> s { _eventsRuleBatchArrayPropertiesSize = a })
