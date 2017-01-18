{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html

module Stratosphere.ResourceProperties.EventsRuleTarget where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EventsRuleTarget. See 'eventsRuleTarget'
-- | for a more convenient constructor.
data EventsRuleTarget =
  EventsRuleTarget
  { _eventsRuleTargetArn :: Val Text
  , _eventsRuleTargetId :: Val Text
  , _eventsRuleTargetInput :: Maybe (Val Text)
  , _eventsRuleTargetInputPath :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EventsRuleTarget where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON EventsRuleTarget where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'EventsRuleTarget' containing required fields as
-- | arguments.
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
