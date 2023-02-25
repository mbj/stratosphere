-- | To specify how AWS CloudFormation handles rolling updates for an Auto
-- Scaling group, use the AutoScalingRollingUpdatePolicy policy.

module Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy where

import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.Value

import qualified Data.Aeson as JSON

-- | Full data type definition for AutoScalingRollingUpdatePolicy. See
-- 'mkAutoScalingRollingUpdatePolicy' for a more convenient constructor.
data AutoScalingRollingUpdatePolicy = AutoScalingRollingUpdatePolicy
  { maxBatchSize                  :: Maybe (Value Integer)
  , minInstancesInService         :: Maybe (Value Integer)
  , minSuccessfulInstancesPercent :: Maybe (Value Integer)
  , pauseTime                     :: Maybe (Value Text)
  , suspendProcesses              :: Maybe (ValueList Text)
  , waitOnResourceSignals         :: Maybe (Value Bool)
  }
  deriving (Show, Eq)

instance Property "MaxBatchSize" AutoScalingRollingUpdatePolicy where
  type PropertyType "MaxBatchSize" AutoScalingRollingUpdatePolicy = Value Integer
  set newValue AutoScalingRollingUpdatePolicy{..}
    = AutoScalingRollingUpdatePolicy
    { maxBatchSize = pure newValue
    , ..
    }

instance Property "MinInstancesInService" AutoScalingRollingUpdatePolicy where
  type PropertyType "MinInstancesInService" AutoScalingRollingUpdatePolicy = Value Integer
  set newValue AutoScalingRollingUpdatePolicy{..}
    = AutoScalingRollingUpdatePolicy
    { minInstancesInService = pure newValue
    , ..
    }

instance Property "MinSuccessfulInstancesPercent" AutoScalingRollingUpdatePolicy where
  type PropertyType "MinSuccessfulInstancesPercent" AutoScalingRollingUpdatePolicy = Value Integer
  set newValue AutoScalingRollingUpdatePolicy{..}
    = AutoScalingRollingUpdatePolicy
    { minSuccessfulInstancesPercent = pure newValue
    , ..
    }

instance Property "PauseTime" AutoScalingRollingUpdatePolicy where
  type PropertyType "PauseTime" AutoScalingRollingUpdatePolicy = Value Text
  set newValue AutoScalingRollingUpdatePolicy{..}
    = AutoScalingRollingUpdatePolicy
    { pauseTime = pure newValue
    , ..
    }

instance Property "SuspendProcesses" AutoScalingRollingUpdatePolicy where
  type PropertyType "SuspendProcesses" AutoScalingRollingUpdatePolicy = ValueList Text
  set newValue AutoScalingRollingUpdatePolicy{..}
    = AutoScalingRollingUpdatePolicy
    { suspendProcesses = pure newValue
    , ..
    }

instance Property "WaitOnResourceSignals" AutoScalingRollingUpdatePolicy where
  type PropertyType "WaitOnResourceSignals" AutoScalingRollingUpdatePolicy = Value Bool
  set newValue AutoScalingRollingUpdatePolicy{..}
    = AutoScalingRollingUpdatePolicy
    { waitOnResourceSignals = pure newValue
    , ..
    }

instance JSON.ToJSON AutoScalingRollingUpdatePolicy where
  toJSON AutoScalingRollingUpdatePolicy{..}
    = JSON.object
    $ catMaybes
    [ fmap (("MaxBatchSize",) . JSON.toJSON) maxBatchSize
    , fmap (("MinInstancesInService",) . JSON.toJSON) minInstancesInService
    , fmap (("MinSuccessfulInstancesPercent",) . JSON.toJSON) minSuccessfulInstancesPercent
    , fmap (("PauseTime",) . JSON.toJSON) pauseTime
    , fmap (("SuspendProcesses",) . JSON.toJSON) suspendProcesses
    , fmap (("WaitOnResourceSignals",) . JSON.toJSON) waitOnResourceSignals
    ]

-- | Constructor for 'AutoScalingRollingUpdatePolicy' containing required fields as
-- arguments.
mkAutoScalingRollingUpdatePolicy :: AutoScalingRollingUpdatePolicy
mkAutoScalingRollingUpdatePolicy
  = AutoScalingRollingUpdatePolicy
  { maxBatchSize                  = Nothing
  , minInstancesInService         = Nothing
  , minSuccessfulInstancesPercent = Nothing
  , pauseTime                     = Nothing
  , suspendProcesses              = Nothing
  , waitOnResourceSignals         = Nothing
  }
