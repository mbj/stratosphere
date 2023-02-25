-- | To specify how AWS CloudFormation handles replacing updates for an Auto
-- Scaling group, use the AutoScalingReplacingUpdate policy.

module Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy where

import Stratosphere.Prelude
import Stratosphere.Value

import qualified Data.Aeson as JSON

-- | Full data type definition for AutoScalingReplacingUpdatePolicy. See
-- 'mkAutoScalingReplacingUpdatePolicy' for a more convenient constructor.
data AutoScalingReplacingUpdatePolicy = AutoScalingReplacingUpdatePolicy
  { willReplace :: Maybe (Value Bool)
  }
  deriving (Show, Eq)

instance JSON.ToJSON AutoScalingReplacingUpdatePolicy where
  toJSON AutoScalingReplacingUpdatePolicy{..}
    = JSON.object
    $ catMaybes [fmap (("WillReplace",) . JSON.toJSON) willReplace]

-- | Constructor for 'AutoScalingReplacingUpdatePolicy' containing required fields
-- as arguments.
mkAutoScalingReplacingUpdatePolicy :: AutoScalingReplacingUpdatePolicy
mkAutoScalingReplacingUpdatePolicy
  = AutoScalingReplacingUpdatePolicy
  { willReplace = Nothing
  }
