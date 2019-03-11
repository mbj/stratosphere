{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

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

import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingScheduledActionPolicy. See
-- 'autoScalingScheduledActionPolicy' for a more convenient constructor.
data AutoScalingScheduledActionPolicy =
  AutoScalingScheduledActionPolicy
  { _autoScalingScheduledActionPolicyIgnoreUnmodifiedGroupSizeProperties :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AutoScalingScheduledActionPolicy where
  toJSON AutoScalingScheduledActionPolicy{..} =
    object $
    catMaybes
    [ fmap (("IgnoreUnmodifiedGroupSizeProperties",) . toJSON . fmap Bool') _autoScalingScheduledActionPolicyIgnoreUnmodifiedGroupSizeProperties
    ]

-- | Constructor for 'AutoScalingScheduledActionPolicy' containing required fields
-- as arguments.
autoScalingScheduledActionPolicy
  :: AutoScalingScheduledActionPolicy
autoScalingScheduledActionPolicy  =
  AutoScalingScheduledActionPolicy
  { _autoScalingScheduledActionPolicyIgnoreUnmodifiedGroupSizeProperties = Nothing
  }

-- | Specifies whether AWS CloudFormation ignores differences in group size
-- properties between your current Auto Scaling group and the Auto Scaling
-- group described in the AWS::AutoScaling::AutoScalingGroup resource of your
-- template during a stack update. If you modify any of the group size
-- property values in your template, AWS CloudFormation uses the modified
-- values and updates your Auto Scaling group.
assapIgnoreUnmodifiedGroupSizeProperties :: Lens' AutoScalingScheduledActionPolicy (Maybe (Val Bool))
assapIgnoreUnmodifiedGroupSizeProperties = lens _autoScalingScheduledActionPolicyIgnoreUnmodifiedGroupSizeProperties (\s a -> s { _autoScalingScheduledActionPolicyIgnoreUnmodifiedGroupSizeProperties = a })
