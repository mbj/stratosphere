{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | To specify how AWS CloudFormation handles rolling updates for an Auto
-- Scaling group, use the AutoScalingRollingUpdate policy.

module Stratosphere.ResourceAttributes.AutoScalingRollingUpdate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingRollingUpdate. See
-- 'autoScalingRollingUpdate' for a more convenient constructor.
data AutoScalingRollingUpdate =
  AutoScalingRollingUpdate
  { _autoScalingRollingUpdateMaxBatchSize :: Maybe (Val Integer')
  , _autoScalingRollingUpdateMinInstancesInService :: Maybe (Val Integer')
  , _autoScalingRollingUpdateMinSuccessfulInstancesPercent :: Maybe (Val Integer')
  , _autoScalingRollingUpdatePauseTime :: Maybe (Val Text)
  , _autoScalingRollingUpdateSuspendProcess :: Maybe [Val Text]
  , _autoScalingRollingUpdateWaitOnResourceSignals :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON AutoScalingRollingUpdate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON AutoScalingRollingUpdate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'AutoScalingRollingUpdate' containing required fields as
-- arguments.
autoScalingRollingUpdate
  :: AutoScalingRollingUpdate
autoScalingRollingUpdate  =
  AutoScalingRollingUpdate
  { _autoScalingRollingUpdateMaxBatchSize = Nothing
  , _autoScalingRollingUpdateMinInstancesInService = Nothing
  , _autoScalingRollingUpdateMinSuccessfulInstancesPercent = Nothing
  , _autoScalingRollingUpdatePauseTime = Nothing
  , _autoScalingRollingUpdateSuspendProcess = Nothing
  , _autoScalingRollingUpdateWaitOnResourceSignals = Nothing
  }

-- | Specifies the maximum number of instances that AWS CloudFormation
-- terminates.
asruMaxBatchSize :: Lens' AutoScalingRollingUpdate (Maybe (Val Integer'))
asruMaxBatchSize = lens _autoScalingRollingUpdateMaxBatchSize (\s a -> s { _autoScalingRollingUpdateMaxBatchSize = a })

-- | Specifies the minimum number of instances that must be in service within
-- the Auto Scaling group while AWS CloudFormation terminates obsolete
-- instances.
asruMinInstancesInService :: Lens' AutoScalingRollingUpdate (Maybe (Val Integer'))
asruMinInstancesInService = lens _autoScalingRollingUpdateMinInstancesInService (\s a -> s { _autoScalingRollingUpdateMinInstancesInService = a })

-- | Specifies the percentage of instances in an Auto Scaling rolling update
-- that must signal success for an update to succeed. You can specify a value
-- from 0 to 100. AWS CloudFormation rounds to the nearest tenth of a percent.
-- For example, if you update five instances with a minimum successful
-- percentage of 50, three instances must signal success. If an instance
-- doesn't send a signal within the time specified using the PauseTime
-- property, AWS CloudFormation assumes that the instance wasn't successfully
-- updated. If you specify this property, you must also enable the
-- WaitOnResourceSignals and PauseTime properties.
asruMinSuccessfulInstancesPercent :: Lens' AutoScalingRollingUpdate (Maybe (Val Integer'))
asruMinSuccessfulInstancesPercent = lens _autoScalingRollingUpdateMinSuccessfulInstancesPercent (\s a -> s { _autoScalingRollingUpdateMinSuccessfulInstancesPercent = a })

-- | Specifies the amount of time that AWS CloudFormation should pause after
-- making a change to a batch of instances to give these instances time to
-- start software applications. For example, you might need PauseTime when
-- scaling up the number of instances in an Auto Scaling group. If you enable
-- the WaitOnResourceSignals property, PauseTime is the amount of time AWS
-- CloudFormation should wait for the Auto Scaling group to receive the
-- required number of valid signals from added or replaced instances. If the
-- PauseTime is exceeded before the Auto Scaling group receives the required
-- number of signals, the update fails. For best results, specify a time
-- period that gives your instances sufficient time to get started. If the
-- update needs to be rolled back, a short PauseTime can cause the rollback to
-- fail. Specify PauseTime in the ISO8601 duration format (in the format
-- PT#H#M#S, where each # is the number of hours, minutes, and seconds,
-- respectively). The maximum PauseTime is one hour (PT1H).
asruPauseTime :: Lens' AutoScalingRollingUpdate (Maybe (Val Text))
asruPauseTime = lens _autoScalingRollingUpdatePauseTime (\s a -> s { _autoScalingRollingUpdatePauseTime = a })

-- | Specifies the Auto Scaling processes to suspend during a stack update.
-- Suspending processes prevents Auto Scaling from interfering with a stack
-- update. For example, you can suspend alarming so that Auto Scaling doesn't
-- execute scaling policies associated with an alarm. For valid values, see
-- the ScalingProcesses.member.N parameter for the SuspendProcesses action in
-- the Auto Scaling API Reference.
asruSuspendProcess :: Lens' AutoScalingRollingUpdate (Maybe [Val Text])
asruSuspendProcess = lens _autoScalingRollingUpdateSuspendProcess (\s a -> s { _autoScalingRollingUpdateSuspendProcess = a })

-- | Specifies whether the Auto Scaling group waits on signals from new
-- instances during an update. AWS CloudFormation suspends the update of an
-- Auto Scaling group after new Amazon EC2 instances are launched into the
-- group. AWS CloudFormation must receive a signal from each new instance
-- within the specified PauseTime before continuing the update. To signal the
-- Auto Scaling group, use the cfn-signal helper script or SignalResource API.
-- Use this property to ensure that instances have completed installing and
-- configuring applications before the Auto Scaling group update proceeds.
asruWaitOnResourceSignals :: Lens' AutoScalingRollingUpdate (Maybe (Val Bool'))
asruWaitOnResourceSignals = lens _autoScalingRollingUpdateWaitOnResourceSignals (\s a -> s { _autoScalingRollingUpdateWaitOnResourceSignals = a })