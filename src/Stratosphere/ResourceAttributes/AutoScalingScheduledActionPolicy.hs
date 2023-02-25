-- | To specify how AWS CloudFormation handles updates for the MinSize,
-- MaxSize, and DesiredCapacity properties when the
-- AWS::AutoScaling::AutoScalingGroup resource has an associated scheduled
-- action, use the AutoScalingScheduledAction policy. With scheduled actions,
-- the group size properties of an Auto Scaling group can change at any time.
-- When you update a stack with an Auto Scaling group and scheduled action,
-- AWS CloudFormation always sets the group size property values of your Auto
-- Scaling group to the values that are defined in the
-- AWS::AutoScaling::AutoScalingGroup resource of your template, even if a
-- scheduled action is in effect. If you do not want AWS CloudFormation to
-- change any of the group size property values when you have a scheduled
-- action in effect, use the AutoScalingScheduledAction update policy to
-- prevent AWS CloudFormation from changing the MinSize, MaxSize, or
-- DesiredCapacity properties unless you have modified these values in your
-- template.

module Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy where

import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.Value

import qualified Data.Aeson as JSON

-- | Full data type definition for AutoScalingScheduledActionPolicy. See
-- 'mkAutoScalingScheduledActionPolicy' for a more convenient constructor.
data AutoScalingScheduledActionPolicy = AutoScalingScheduledActionPolicy
  { ignoreUnmodifiedGroupSizeProperties :: Maybe (Value Bool)
  }
  deriving (Show, Eq)

instance Property "IgnoreUnmodifiedGroupSizeProperties" AutoScalingScheduledActionPolicy where
  type PropertyType "IgnoreUnmodifiedGroupSizeProperties" AutoScalingScheduledActionPolicy = Value Bool
  set newValue AutoScalingScheduledActionPolicy{}
    = AutoScalingScheduledActionPolicy
    { ignoreUnmodifiedGroupSizeProperties = pure newValue
    }

instance JSON.ToJSON AutoScalingScheduledActionPolicy where
  toJSON AutoScalingScheduledActionPolicy{..}
    = JSON.object
    $ catMaybes
    [ fmap (("IgnoreUnmodifiedGroupSizeProperties",) . JSON.toJSON) ignoreUnmodifiedGroupSizeProperties
    ]

-- | Constructor for 'AutoScalingScheduledActionPolicy' containing required fields
-- as arguments.
mkAutoScalingScheduledActionPolicy :: AutoScalingScheduledActionPolicy
mkAutoScalingScheduledActionPolicy
  = AutoScalingScheduledActionPolicy
  { ignoreUnmodifiedGroupSizeProperties = Nothing
  }
