{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html

module Stratosphere.ResourceProperties.EventsRuleTarget where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EventsRuleTarget. See 'eventsRuleTarget'
-- for a more convenient constructor.
data EventsRuleTarget =
  EventsRuleTarget
  { _eventsRuleTargetArn :: Val Text
  , _eventsRuleTargetId :: Val Text
  , _eventsRuleTargetInput :: Maybe (Val Text)
  , _eventsRuleTargetInputPath :: Maybe (Val Text)
  , _eventsRuleTargetRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EventsRuleTarget where
  toJSON EventsRuleTarget{..} =
    object $
    catMaybes
    [ Just ("Arn" .= _eventsRuleTargetArn)
    , Just ("Id" .= _eventsRuleTargetId)
    , ("Input" .=) <$> _eventsRuleTargetInput
    , ("InputPath" .=) <$> _eventsRuleTargetInputPath
    , ("RoleArn" .=) <$> _eventsRuleTargetRoleArn
    ]

instance FromJSON EventsRuleTarget where
  parseJSON (Object obj) =
    EventsRuleTarget <$>
      obj .: "Arn" <*>
      obj .: "Id" <*>
      obj .:? "Input" <*>
      obj .:? "InputPath" <*>
      obj .:? "RoleArn"
  parseJSON _ = mempty

-- | Constructor for 'EventsRuleTarget' containing required fields as
-- arguments.
eventsRuleTarget
  :: Val Text -- ^ 'ertArn'
  -> Val Text -- ^ 'ertId'
  -> EventsRuleTarget
eventsRuleTarget arnarg idarg =
  EventsRuleTarget
  { _eventsRuleTargetArn = arnarg
  , _eventsRuleTargetId = idarg
  , _eventsRuleTargetInput = Nothing
  , _eventsRuleTargetInputPath = Nothing
  , _eventsRuleTargetRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-arn
ertArn :: Lens' EventsRuleTarget (Val Text)
ertArn = lens _eventsRuleTargetArn (\s a -> s { _eventsRuleTargetArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-id
ertId :: Lens' EventsRuleTarget (Val Text)
ertId = lens _eventsRuleTargetId (\s a -> s { _eventsRuleTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-input
ertInput :: Lens' EventsRuleTarget (Maybe (Val Text))
ertInput = lens _eventsRuleTargetInput (\s a -> s { _eventsRuleTargetInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputpath
ertInputPath :: Lens' EventsRuleTarget (Maybe (Val Text))
ertInputPath = lens _eventsRuleTargetInputPath (\s a -> s { _eventsRuleTargetInputPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-rolearn
ertRoleArn :: Lens' EventsRuleTarget (Maybe (Val Text))
ertRoleArn = lens _eventsRuleTargetRoleArn (\s a -> s { _eventsRuleTargetRoleArn = a })
