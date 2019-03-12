{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html

module Stratosphere.Resources.EventsEventBusPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventsEventBusPolicyCondition

-- | Full data type definition for EventsEventBusPolicy. See
-- 'eventsEventBusPolicy' for a more convenient constructor.
data EventsEventBusPolicy =
  EventsEventBusPolicy
  { _eventsEventBusPolicyAction :: Val Text
  , _eventsEventBusPolicyCondition :: Maybe EventsEventBusPolicyCondition
  , _eventsEventBusPolicyPrincipal :: Val Text
  , _eventsEventBusPolicyStatementId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EventsEventBusPolicy where
  toResourceProperties EventsEventBusPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Events::EventBusPolicy"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("Action",) . toJSON) _eventsEventBusPolicyAction
        , fmap (("Condition",) . toJSON) _eventsEventBusPolicyCondition
        , (Just . ("Principal",) . toJSON) _eventsEventBusPolicyPrincipal
        , (Just . ("StatementId",) . toJSON) _eventsEventBusPolicyStatementId
        ]
    }

-- | Constructor for 'EventsEventBusPolicy' containing required fields as
-- arguments.
eventsEventBusPolicy
  :: Val Text -- ^ 'eebpAction'
  -> Val Text -- ^ 'eebpPrincipal'
  -> Val Text -- ^ 'eebpStatementId'
  -> EventsEventBusPolicy
eventsEventBusPolicy actionarg principalarg statementIdarg =
  EventsEventBusPolicy
  { _eventsEventBusPolicyAction = actionarg
  , _eventsEventBusPolicyCondition = Nothing
  , _eventsEventBusPolicyPrincipal = principalarg
  , _eventsEventBusPolicyStatementId = statementIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-action
eebpAction :: Lens' EventsEventBusPolicy (Val Text)
eebpAction = lens _eventsEventBusPolicyAction (\s a -> s { _eventsEventBusPolicyAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-condition
eebpCondition :: Lens' EventsEventBusPolicy (Maybe EventsEventBusPolicyCondition)
eebpCondition = lens _eventsEventBusPolicyCondition (\s a -> s { _eventsEventBusPolicyCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-principal
eebpPrincipal :: Lens' EventsEventBusPolicy (Val Text)
eebpPrincipal = lens _eventsEventBusPolicyPrincipal (\s a -> s { _eventsEventBusPolicyPrincipal = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statementid
eebpStatementId :: Lens' EventsEventBusPolicy (Val Text)
eebpStatementId = lens _eventsEventBusPolicyStatementId (\s a -> s { _eventsEventBusPolicyStatementId = a })
