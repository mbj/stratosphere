{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Events::Rule resource creates a rule that matches incoming
-- Amazon CloudWatch Events (CloudWatch Events) events and routes them to one
-- or more targets for processing. For more information, see Using CloudWatch
-- Events in the Amazon CloudWatch User Guide.

module Stratosphere.Resources.EventsRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for EventsRule. See 'eventsRule' for a more
-- convenient constructor.
data EventsRule =
  EventsRule
  { _eventsRuleDescription :: Maybe (Val Text)
  , _eventsRuleEventPattern :: Maybe Object
  , _eventsRuleName :: Maybe (Val Text)
  , _eventsRuleRoleArn :: Maybe (Val Text)
  , _eventsRuleScheduleExpression :: Maybe (Val Text)
  , _eventsRuleState :: Maybe EnabledState
  , _eventsRuleTargets :: Maybe [Object]
  } deriving (Show, Generic)

instance ToJSON EventsRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON EventsRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

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

-- | A description of the rule's purpose.
erDescription :: Lens' EventsRule (Maybe (Val Text))
erDescription = lens _eventsRuleDescription (\s a -> s { _eventsRuleDescription = a })

-- | Describes which events CloudWatch Events routes to the specified target.
-- These routed events are matched events. For more information, see Events
-- and Event Patterns in the Amazon CloudWatch User Guide.
erEventPattern :: Lens' EventsRule (Maybe Object)
erEventPattern = lens _eventsRuleEventPattern (\s a -> s { _eventsRuleEventPattern = a })

-- | A name for the rule. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the rule name. For more
-- information, see Name Type. Important If you specify a name, you cannot do
-- updates that require this resource to be replaced. You can still do updates
-- that require no or some interruption. If you must replace the resource,
-- specify a new name.
erName :: Lens' EventsRule (Maybe (Val Text))
erName = lens _eventsRuleName (\s a -> s { _eventsRuleName = a })

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management
-- (IAM) role that grants CloudWatch Events permission to make calls to target
-- services, such as AWS Lambda (Lambda) or Amazon Kinesis streams.
erRoleArn :: Lens' EventsRule (Maybe (Val Text))
erRoleArn = lens _eventsRuleRoleArn (\s a -> s { _eventsRuleRoleArn = a })

-- | The schedule or rate (frequency) that determines when CloudWatch Events
-- runs the rule. For more information, see Schedule Expression Syntax for
-- Rules in the Amazon CloudWatch User Guide.
erScheduleExpression :: Lens' EventsRule (Maybe (Val Text))
erScheduleExpression = lens _eventsRuleScheduleExpression (\s a -> s { _eventsRuleScheduleExpression = a })

-- | Indicates whether the rule is enabled. For valid values, see the State
-- parameter for the PutRule action in the Amazon CloudWatch Events API
-- Reference.
erState :: Lens' EventsRule (Maybe EnabledState)
erState = lens _eventsRuleState (\s a -> s { _eventsRuleState = a })

-- | The resources, such as Lambda functions or Amazon Kinesis streams, that
-- CloudWatch Events routes events to and invokes when the rule is triggered.
-- For information about valid targets, see the PutTargets action in the
-- Amazon CloudWatch Events API Reference.
erTargets :: Lens' EventsRule (Maybe [Object])
erTargets = lens _eventsRuleTargets (\s a -> s { _eventsRuleTargets = a })