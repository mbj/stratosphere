
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html

module Stratosphere.ResourceProperties.EventsRuleKinesisParameters where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleKinesisParameters. See
-- 'eventsRuleKinesisParameters' for a more convenient constructor.
data EventsRuleKinesisParameters =
  EventsRuleKinesisParameters
  { _eventsRuleKinesisParametersPartitionKeyPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleKinesisParameters where
  toJSON EventsRuleKinesisParameters{..} =
    object $
    catMaybes
    [ (Just . ("PartitionKeyPath",) . toJSON) _eventsRuleKinesisParametersPartitionKeyPath
    ]

-- | Constructor for 'EventsRuleKinesisParameters' containing required fields
-- as arguments.
eventsRuleKinesisParameters
  :: Val Text -- ^ 'erkpPartitionKeyPath'
  -> EventsRuleKinesisParameters
eventsRuleKinesisParameters partitionKeyPatharg =
  EventsRuleKinesisParameters
  { _eventsRuleKinesisParametersPartitionKeyPath = partitionKeyPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html#cfn-events-rule-kinesisparameters-partitionkeypath
erkpPartitionKeyPath :: Lens' EventsRuleKinesisParameters (Val Text)
erkpPartitionKeyPath = lens _eventsRuleKinesisParametersPartitionKeyPath (\s a -> s { _eventsRuleKinesisParametersPartitionKeyPath = a })
