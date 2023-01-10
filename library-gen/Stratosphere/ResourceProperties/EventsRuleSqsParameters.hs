
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html

module Stratosphere.ResourceProperties.EventsRuleSqsParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleSqsParameters. See
-- 'eventsRuleSqsParameters' for a more convenient constructor.
data EventsRuleSqsParameters =
  EventsRuleSqsParameters
  { _eventsRuleSqsParametersMessageGroupId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleSqsParameters where
  toJSON EventsRuleSqsParameters{..} =
    object $
    catMaybes
    [ (Just . ("MessageGroupId",) . toJSON) _eventsRuleSqsParametersMessageGroupId
    ]

-- | Constructor for 'EventsRuleSqsParameters' containing required fields as
-- arguments.
eventsRuleSqsParameters
  :: Val Text -- ^ 'erspMessageGroupId'
  -> EventsRuleSqsParameters
eventsRuleSqsParameters messageGroupIdarg =
  EventsRuleSqsParameters
  { _eventsRuleSqsParametersMessageGroupId = messageGroupIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html#cfn-events-rule-sqsparameters-messagegroupid
erspMessageGroupId :: Lens' EventsRuleSqsParameters (Val Text)
erspMessageGroupId = lens _eventsRuleSqsParametersMessageGroupId (\s a -> s { _eventsRuleSqsParametersMessageGroupId = a })
