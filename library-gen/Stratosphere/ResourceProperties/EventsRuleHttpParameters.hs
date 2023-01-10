
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html

module Stratosphere.ResourceProperties.EventsRuleHttpParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleHttpParameters. See
-- 'eventsRuleHttpParameters' for a more convenient constructor.
data EventsRuleHttpParameters =
  EventsRuleHttpParameters
  { _eventsRuleHttpParametersHeaderParameters :: Maybe Object
  , _eventsRuleHttpParametersPathParameterValues :: Maybe (ValList Text)
  , _eventsRuleHttpParametersQueryStringParameters :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON EventsRuleHttpParameters where
  toJSON EventsRuleHttpParameters{..} =
    object $
    catMaybes
    [ fmap (("HeaderParameters",) . toJSON) _eventsRuleHttpParametersHeaderParameters
    , fmap (("PathParameterValues",) . toJSON) _eventsRuleHttpParametersPathParameterValues
    , fmap (("QueryStringParameters",) . toJSON) _eventsRuleHttpParametersQueryStringParameters
    ]

-- | Constructor for 'EventsRuleHttpParameters' containing required fields as
-- arguments.
eventsRuleHttpParameters
  :: EventsRuleHttpParameters
eventsRuleHttpParameters  =
  EventsRuleHttpParameters
  { _eventsRuleHttpParametersHeaderParameters = Nothing
  , _eventsRuleHttpParametersPathParameterValues = Nothing
  , _eventsRuleHttpParametersQueryStringParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html#cfn-events-rule-httpparameters-headerparameters
erhpHeaderParameters :: Lens' EventsRuleHttpParameters (Maybe Object)
erhpHeaderParameters = lens _eventsRuleHttpParametersHeaderParameters (\s a -> s { _eventsRuleHttpParametersHeaderParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html#cfn-events-rule-httpparameters-pathparametervalues
erhpPathParameterValues :: Lens' EventsRuleHttpParameters (Maybe (ValList Text))
erhpPathParameterValues = lens _eventsRuleHttpParametersPathParameterValues (\s a -> s { _eventsRuleHttpParametersPathParameterValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html#cfn-events-rule-httpparameters-querystringparameters
erhpQueryStringParameters :: Lens' EventsRuleHttpParameters (Maybe Object)
erhpQueryStringParameters = lens _eventsRuleHttpParametersQueryStringParameters (\s a -> s { _eventsRuleHttpParametersQueryStringParameters = a })
