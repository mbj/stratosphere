{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html

module Stratosphere.Resources.EventsRule where

import Stratosphere.ResourceImports
import Stratosphere.Types
import Stratosphere.ResourceProperties.EventsRuleTarget

-- | Full data type definition for EventsRule. See 'eventsRule' for a more
-- convenient constructor.
data EventsRule =
  EventsRule
  { _eventsRuleDescription :: Maybe (Val Text)
  , _eventsRuleEventPattern :: Maybe Object
  , _eventsRuleName :: Maybe (Val Text)
  , _eventsRuleRoleArn :: Maybe (Val Text)
  , _eventsRuleScheduleExpression :: Maybe (Val Text)
  , _eventsRuleState :: Maybe (Val EnabledState)
  , _eventsRuleTargets :: Maybe [EventsRuleTarget]
  } deriving (Show, Eq)

instance ToJSON EventsRule where
  toJSON EventsRule{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _eventsRuleDescription
    , fmap (("EventPattern",) . toJSON) _eventsRuleEventPattern
    , fmap (("Name",) . toJSON) _eventsRuleName
    , fmap (("RoleArn",) . toJSON) _eventsRuleRoleArn
    , fmap (("ScheduleExpression",) . toJSON) _eventsRuleScheduleExpression
    , fmap (("State",) . toJSON) _eventsRuleState
    , fmap (("Targets",) . toJSON) _eventsRuleTargets
    ]

instance FromJSON EventsRule where
  parseJSON (Object obj) =
    EventsRule <$>
      (obj .:? "Description") <*>
      (obj .:? "EventPattern") <*>
      (obj .:? "Name") <*>
      (obj .:? "RoleArn") <*>
      (obj .:? "ScheduleExpression") <*>
      (obj .:? "State") <*>
      (obj .:? "Targets")
  parseJSON _ = mempty

-- | Constructor for 'EventsRule' containing required fields as arguments.
eventsRule
  :: EventsRule
eventsRule  =
  EventsRule
  { _eventsRuleDescription = Nothing
  , _eventsRuleEventPattern = Nothing
  , _eventsRuleName = Nothing
  , _eventsRuleRoleArn = Nothing
  , _eventsRuleScheduleExpression = Nothing
  , _eventsRuleState = Nothing
  , _eventsRuleTargets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-description
erDescription :: Lens' EventsRule (Maybe (Val Text))
erDescription = lens _eventsRuleDescription (\s a -> s { _eventsRuleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-eventpattern
erEventPattern :: Lens' EventsRule (Maybe Object)
erEventPattern = lens _eventsRuleEventPattern (\s a -> s { _eventsRuleEventPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-name
erName :: Lens' EventsRule (Maybe (Val Text))
erName = lens _eventsRuleName (\s a -> s { _eventsRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-rolearn
erRoleArn :: Lens' EventsRule (Maybe (Val Text))
erRoleArn = lens _eventsRuleRoleArn (\s a -> s { _eventsRuleRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-scheduleexpression
erScheduleExpression :: Lens' EventsRule (Maybe (Val Text))
erScheduleExpression = lens _eventsRuleScheduleExpression (\s a -> s { _eventsRuleScheduleExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-state
erState :: Lens' EventsRule (Maybe (Val EnabledState))
erState = lens _eventsRuleState (\s a -> s { _eventsRuleState = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-targets
erTargets :: Lens' EventsRule (Maybe [EventsRuleTarget])
erTargets = lens _eventsRuleTargets (\s a -> s { _eventsRuleTargets = a })
