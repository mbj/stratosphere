{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a scheduled scaling action for an Auto Scaling group, changing
-- the number of servers available for your application in response to
-- predictable load changes.

module Stratosphere.Resources.ScheduledAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ScheduledAction. See 'scheduledAction' for
-- a more convenient constructor.
data ScheduledAction =
  ScheduledAction
  { _scheduledActionAutoScalingGroupName :: Val Text
  , _scheduledActionDesiredCapacity :: Maybe (Val Integer')
  , _scheduledActionEndTime :: Maybe (Val Text)
  , _scheduledActionMaxSize :: Maybe (Val Integer')
  , _scheduledActionMinSize :: Maybe (Val Integer')
  , _scheduledActionRecurrence :: Maybe (Val Text)
  , _scheduledActionStartTime :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ScheduledAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON ScheduledAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'ScheduledAction' containing required fields as
-- arguments.
scheduledAction
  :: Val Text -- ^ 'saAutoScalingGroupName'
  -> ScheduledAction
scheduledAction autoScalingGroupNamearg =
  ScheduledAction
  { _scheduledActionAutoScalingGroupName = autoScalingGroupNamearg
  , _scheduledActionDesiredCapacity = Nothing
  , _scheduledActionEndTime = Nothing
  , _scheduledActionMaxSize = Nothing
  , _scheduledActionMinSize = Nothing
  , _scheduledActionRecurrence = Nothing
  , _scheduledActionStartTime = Nothing
  }

-- | The name or ARN of the Auto Scaling group.
saAutoScalingGroupName :: Lens' ScheduledAction (Val Text)
saAutoScalingGroupName = lens _scheduledActionAutoScalingGroupName (\s a -> s { _scheduledActionAutoScalingGroupName = a })

-- | The number of Amazon EC2 instances that should be running in the Auto
-- Scaling group.
saDesiredCapacity :: Lens' ScheduledAction (Maybe (Val Integer'))
saDesiredCapacity = lens _scheduledActionDesiredCapacity (\s a -> s { _scheduledActionDesiredCapacity = a })

-- | The time in UTC for this schedule to end. For example,
-- 2010-06-01T00:00:00Z.
saEndTime :: Lens' ScheduledAction (Maybe (Val Text))
saEndTime = lens _scheduledActionEndTime (\s a -> s { _scheduledActionEndTime = a })

-- | The maximum number of Amazon EC2 instances in the Auto Scaling group.
saMaxSize :: Lens' ScheduledAction (Maybe (Val Integer'))
saMaxSize = lens _scheduledActionMaxSize (\s a -> s { _scheduledActionMaxSize = a })

-- | The minimum number of Amazon EC2 instances in the Auto Scaling group.
saMinSize :: Lens' ScheduledAction (Maybe (Val Integer'))
saMinSize = lens _scheduledActionMinSize (\s a -> s { _scheduledActionMinSize = a })

-- | The time in UTC when recurring future actions will start. You specify the
-- start time by following the Unix cron syntax format. For more information
-- about cron syntax, go to http://en.wikipedia.org/wiki/Cron. Specifying the
-- StartTime and EndTime properties with Recurrence property forms the start
-- and stop boundaries of the recurring action.
saRecurrence :: Lens' ScheduledAction (Maybe (Val Text))
saRecurrence = lens _scheduledActionRecurrence (\s a -> s { _scheduledActionRecurrence = a })

-- | The time in UTC for this schedule to start. For example,
-- 2010-06-01T00:00:00Z.
saStartTime :: Lens' ScheduledAction (Maybe (Val Text))
saStartTime = lens _scheduledActionStartTime (\s a -> s { _scheduledActionStartTime = a })