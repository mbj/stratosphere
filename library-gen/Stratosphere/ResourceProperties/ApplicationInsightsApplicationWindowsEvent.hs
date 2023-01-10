
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-windowsevent.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationWindowsEvent where

import Stratosphere.ResourceImports


-- | Full data type definition for ApplicationInsightsApplicationWindowsEvent.
-- See 'applicationInsightsApplicationWindowsEvent' for a more convenient
-- constructor.
data ApplicationInsightsApplicationWindowsEvent =
  ApplicationInsightsApplicationWindowsEvent
  { _applicationInsightsApplicationWindowsEventEventLevels :: ValList Text
  , _applicationInsightsApplicationWindowsEventEventName :: Val Text
  , _applicationInsightsApplicationWindowsEventLogGroupName :: Val Text
  , _applicationInsightsApplicationWindowsEventPatternSet :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationWindowsEvent where
  toJSON ApplicationInsightsApplicationWindowsEvent{..} =
    object $
    catMaybes
    [ (Just . ("EventLevels",) . toJSON) _applicationInsightsApplicationWindowsEventEventLevels
    , (Just . ("EventName",) . toJSON) _applicationInsightsApplicationWindowsEventEventName
    , (Just . ("LogGroupName",) . toJSON) _applicationInsightsApplicationWindowsEventLogGroupName
    , fmap (("PatternSet",) . toJSON) _applicationInsightsApplicationWindowsEventPatternSet
    ]

-- | Constructor for 'ApplicationInsightsApplicationWindowsEvent' containing
-- required fields as arguments.
applicationInsightsApplicationWindowsEvent
  :: ValList Text -- ^ 'aiaweEventLevels'
  -> Val Text -- ^ 'aiaweEventName'
  -> Val Text -- ^ 'aiaweLogGroupName'
  -> ApplicationInsightsApplicationWindowsEvent
applicationInsightsApplicationWindowsEvent eventLevelsarg eventNamearg logGroupNamearg =
  ApplicationInsightsApplicationWindowsEvent
  { _applicationInsightsApplicationWindowsEventEventLevels = eventLevelsarg
  , _applicationInsightsApplicationWindowsEventEventName = eventNamearg
  , _applicationInsightsApplicationWindowsEventLogGroupName = logGroupNamearg
  , _applicationInsightsApplicationWindowsEventPatternSet = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-windowsevent.html#cfn-applicationinsights-application-windowsevent-eventlevels
aiaweEventLevels :: Lens' ApplicationInsightsApplicationWindowsEvent (ValList Text)
aiaweEventLevels = lens _applicationInsightsApplicationWindowsEventEventLevels (\s a -> s { _applicationInsightsApplicationWindowsEventEventLevels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-windowsevent.html#cfn-applicationinsights-application-windowsevent-eventname
aiaweEventName :: Lens' ApplicationInsightsApplicationWindowsEvent (Val Text)
aiaweEventName = lens _applicationInsightsApplicationWindowsEventEventName (\s a -> s { _applicationInsightsApplicationWindowsEventEventName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-windowsevent.html#cfn-applicationinsights-application-windowsevent-loggroupname
aiaweLogGroupName :: Lens' ApplicationInsightsApplicationWindowsEvent (Val Text)
aiaweLogGroupName = lens _applicationInsightsApplicationWindowsEventLogGroupName (\s a -> s { _applicationInsightsApplicationWindowsEventLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-windowsevent.html#cfn-applicationinsights-application-windowsevent-patternset
aiawePatternSet :: Lens' ApplicationInsightsApplicationWindowsEvent (Maybe (Val Text))
aiawePatternSet = lens _applicationInsightsApplicationWindowsEventPatternSet (\s a -> s { _applicationInsightsApplicationWindowsEventPatternSet = a })
