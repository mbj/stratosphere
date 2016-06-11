{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::AutoScaling::ScalingPolicy resource adds a scaling policy to an
-- auto scaling group. A scaling policy specifies whether to scale the auto
-- scaling group up or down, and by how much. For more information on scaling
-- policies, see Scaling by Policy in the Auto Scaling Developer Guide. You
-- can use a scaling policy together with an CloudWatch alarm. An CloudWatch
-- alarm can automatically initiate actions on your behalf, based on
-- parameters you specify. A scaling policy is one type of action that an
-- alarm can initiate. For a snippet showing how to create an Auto Scaling
-- policy that is triggered by an CloudWatch alarm, see Auto Scaling Policy
-- Triggered by CloudWatch Alarm. This type supports updates. For more
-- information about updating this resource, see PutScalingPolicy.

module Stratosphere.Resources.ScalingPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.StepAdjustments

-- | Full data type definition for ScalingPolicy. See 'scalingPolicy' for a
-- more convenient constructor.
data ScalingPolicy =
  ScalingPolicy
  { _scalingPolicyAdjustmentType :: Val Text
  , _scalingPolicyAutoScalingGroupName :: Val Text
  , _scalingPolicyCooldown :: Maybe (Val Text)
  , _scalingPolicyEstimatedInstanceWarmup :: Maybe (Val Integer')
  , _scalingPolicyMetricAggregationType :: Maybe (Val Text)
  , _scalingPolicyMinAdjustmentMagnitude :: Maybe (Val Integer')
  , _scalingPolicyPolicyType :: Maybe (Val Text)
  , _scalingPolicyScalingAdjustment :: Maybe (Val Integer')
  , _scalingPolicyStepAdjustments :: Maybe [StepAdjustments]
  } deriving (Show, Generic)

instance ToJSON ScalingPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON ScalingPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'ScalingPolicy' containing required fields as arguments.
scalingPolicy
  :: Val Text -- ^ 'spAdjustmentType'
  -> Val Text -- ^ 'spAutoScalingGroupName'
  -> ScalingPolicy
scalingPolicy adjustmentTypearg autoScalingGroupNamearg =
  ScalingPolicy
  { _scalingPolicyAdjustmentType = adjustmentTypearg
  , _scalingPolicyAutoScalingGroupName = autoScalingGroupNamearg
  , _scalingPolicyCooldown = Nothing
  , _scalingPolicyEstimatedInstanceWarmup = Nothing
  , _scalingPolicyMetricAggregationType = Nothing
  , _scalingPolicyMinAdjustmentMagnitude = Nothing
  , _scalingPolicyPolicyType = Nothing
  , _scalingPolicyScalingAdjustment = Nothing
  , _scalingPolicyStepAdjustments = Nothing
  }

-- | Specifies whether the ScalingAdjustment is an absolute number or a
-- percentage of the current capacity. Valid values are ChangeInCapacity,
-- ExactCapacity, and PercentChangeInCapacity.
spAdjustmentType :: Lens' ScalingPolicy (Val Text)
spAdjustmentType = lens _scalingPolicyAdjustmentType (\s a -> s { _scalingPolicyAdjustmentType = a })

-- | The name or Amazon Resource Name (ARN) of the Auto Scaling Group that you
-- want to attach the policy to.
spAutoScalingGroupName :: Lens' ScalingPolicy (Val Text)
spAutoScalingGroupName = lens _scalingPolicyAutoScalingGroupName (\s a -> s { _scalingPolicyAutoScalingGroupName = a })

-- | The amount of time, in seconds, after a scaling activity completes before
-- any further trigger-related scaling activities can start. Do not specify
-- this property if you are using the StepScaling policy type.
spCooldown :: Lens' ScalingPolicy (Maybe (Val Text))
spCooldown = lens _scalingPolicyCooldown (\s a -> s { _scalingPolicyCooldown = a })

-- | The estimated time, in seconds, until a newly launched instance can send
-- metrics to CloudWatch. By default, Auto Scaling uses the cooldown period,
-- as specified in the Cooldown property. Do not specify this property if you
-- are using the SimpleScaling policy type.
spEstimatedInstanceWarmup :: Lens' ScalingPolicy (Maybe (Val Integer'))
spEstimatedInstanceWarmup = lens _scalingPolicyEstimatedInstanceWarmup (\s a -> s { _scalingPolicyEstimatedInstanceWarmup = a })

-- | The aggregation type for the CloudWatch metrics. You can specify Minimum,
-- Maximum, or Average. By default, AWS CloudFormation specifies Average. Do
-- not specify this property if you are using the SimpleScaling policy type.
spMetricAggregationType :: Lens' ScalingPolicy (Maybe (Val Text))
spMetricAggregationType = lens _scalingPolicyMetricAggregationType (\s a -> s { _scalingPolicyMetricAggregationType = a })

-- | For the PercentChangeInCapacity adjustment type, the minimum number of
-- instances to scale. The scaling policy changes the desired capacity of the
-- Auto Scaling group by a minimum of this many instances. This property
-- replaces the MinAdjustmentStep property.
spMinAdjustmentMagnitude :: Lens' ScalingPolicy (Maybe (Val Integer'))
spMinAdjustmentMagnitude = lens _scalingPolicyMinAdjustmentMagnitude (\s a -> s { _scalingPolicyMinAdjustmentMagnitude = a })

-- | An Auto Scaling policy type. You can specify SimpleScaling or
-- StepScaling. By default, AWS CloudFormation specifies SimpleScaling. For
-- more information, see Scaling Policy Types in the Auto Scaling User Guide.
spPolicyType :: Lens' ScalingPolicy (Maybe (Val Text))
spPolicyType = lens _scalingPolicyPolicyType (\s a -> s { _scalingPolicyPolicyType = a })

-- | The number of instances by which to scale. The AdjustmentType property
-- determines whether AWS CloudFormation interprets this number as an absolute
-- number (when the ExactCapacityvalue is specified) or as a percentage of the
-- existing Auto Scaling group size (when the PercentChangeInCapacity value is
-- specified). A positive value adds to the current capacity and a negative
-- value subtracts from the current capacity.
spScalingAdjustment :: Lens' ScalingPolicy (Maybe (Val Integer'))
spScalingAdjustment = lens _scalingPolicyScalingAdjustment (\s a -> s { _scalingPolicyScalingAdjustment = a })

-- | A set of adjustments that enable you to scale based on the size of the
-- alarm breach.
spStepAdjustments :: Lens' ScalingPolicy (Maybe [StepAdjustments])
spStepAdjustments = lens _scalingPolicyStepAdjustments (\s a -> s { _scalingPolicyStepAdjustments = a })