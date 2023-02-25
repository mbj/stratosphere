-- | Use the UpdatePolicy attribute to specify how AWS CloudFormation handles
-- updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS
-- CloudFormation invokes one of three update policies depending on the type
-- of change you make or on whether a scheduled action is associated with the
-- Auto Scaling group.

module Stratosphere.ResourceAttributes.UpdatePolicy where

import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy

import qualified Data.Aeson as JSON

-- | Full data type definition for UpdatePolicy. See 'mkUpdatePolicy' for a more
-- convenient constructor.
data UpdatePolicy = UpdatePolicy
  { replacingUpdate :: Maybe AutoScalingReplacingUpdatePolicy
  , rollingUpdate   :: Maybe AutoScalingRollingUpdatePolicy
  , scheduledAction :: Maybe AutoScalingScheduledActionPolicy
  }
  deriving (Show, Eq, Generic)

instance Property "ReplacingUpdate" UpdatePolicy where
  type PropertyType "ReplacingUpdate" UpdatePolicy = AutoScalingReplacingUpdatePolicy
  set newValue UpdatePolicy{..} = UpdatePolicy{replacingUpdate = pure newValue, ..}

instance Property "RollingUpdate" UpdatePolicy where
  type PropertyType "RollingUpdate" UpdatePolicy = AutoScalingRollingUpdatePolicy
  set newValue UpdatePolicy{..} = UpdatePolicy{rollingUpdate = pure newValue, ..}

instance Property "ScheduledAction" UpdatePolicy where
  type PropertyType "ScheduledAction" UpdatePolicy = AutoScalingScheduledActionPolicy
  set newValue UpdatePolicy{..} = UpdatePolicy{scheduledAction = pure newValue, ..}

instance JSON.ToJSON UpdatePolicy where
  toJSON UpdatePolicy{..}
    = JSON.object
    $ catMaybes
    [ fmap (("ReplacingUpdate",) . JSON.toJSON) replacingUpdate
    , fmap (("RollingUpdate",) . JSON.toJSON) rollingUpdate
    , fmap (("ScheduledAction",) . JSON.toJSON) scheduledAction
    ]

-- | Constructor for 'UpdatePolicy' containing required fields as arguments.
mkUpdatePolicy :: UpdatePolicy
mkUpdatePolicy =
  UpdatePolicy
  { replacingUpdate = Nothing
  , rollingUpdate   = Nothing
  , scheduledAction = Nothing
  }
