{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Use the UpdatePolicy attribute to specify how AWS CloudFormation handles
-- updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS
-- CloudFormation invokes one of three update policies depending on the type
-- of change you make or on whether a scheduled action is associated with the
-- Auto Scaling group.

module Stratosphere.ResourceAttributes.UpdatePolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy

-- | Full data type definition for UpdatePolicy. See 'updatePolicy' for a more
-- convenient constructor.
data UpdatePolicy =
  UpdatePolicy
  { _updatePolicyAutoScalingReplacingUpdate :: Maybe AutoScalingReplacingUpdatePolicy
  , _updatePolicyAutoScalingRollingUpdate :: Maybe AutoScalingRollingUpdatePolicy
  , _updatePolicyAutoScalingScheduledAction :: Maybe AutoScalingScheduledActionPolicy
  } deriving (Show, Eq, Generic)

instance ToJSON UpdatePolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

instance FromJSON UpdatePolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

-- | Constructor for 'UpdatePolicy' containing required fields as arguments.
updatePolicy
  :: UpdatePolicy
updatePolicy  =
  UpdatePolicy
  { _updatePolicyAutoScalingReplacingUpdate = Nothing
  , _updatePolicyAutoScalingRollingUpdate = Nothing
  , _updatePolicyAutoScalingScheduledAction = Nothing
  }

-- |
upAutoScalingReplacingUpdate :: Lens' UpdatePolicy (Maybe AutoScalingReplacingUpdatePolicy)
upAutoScalingReplacingUpdate = lens _updatePolicyAutoScalingReplacingUpdate (\s a -> s { _updatePolicyAutoScalingReplacingUpdate = a })

-- |
upAutoScalingRollingUpdate :: Lens' UpdatePolicy (Maybe AutoScalingRollingUpdatePolicy)
upAutoScalingRollingUpdate = lens _updatePolicyAutoScalingRollingUpdate (\s a -> s { _updatePolicyAutoScalingRollingUpdate = a })

-- |
upAutoScalingScheduledAction :: Lens' UpdatePolicy (Maybe AutoScalingScheduledActionPolicy)
upAutoScalingScheduledAction = lens _updatePolicyAutoScalingScheduledAction (\s a -> s { _updatePolicyAutoScalingScheduledAction = a })
