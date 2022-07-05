{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html

module Stratosphere.Resources.ApplicationAutoScalingScalingPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration

-- | Full data type definition for ApplicationAutoScalingScalingPolicy. See
-- 'applicationAutoScalingScalingPolicy' for a more convenient constructor.
data ApplicationAutoScalingScalingPolicy =
  ApplicationAutoScalingScalingPolicy
  { _applicationAutoScalingScalingPolicyPolicyName :: Val Text
  , _applicationAutoScalingScalingPolicyPolicyType :: Val Text
  , _applicationAutoScalingScalingPolicyResourceId :: Maybe (Val Text)
  , _applicationAutoScalingScalingPolicyScalableDimension :: Maybe (Val Text)
  , _applicationAutoScalingScalingPolicyScalingTargetId :: Maybe (Val Text)
  , _applicationAutoScalingScalingPolicyServiceNamespace :: Maybe (Val Text)
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration :: Maybe ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration :: Maybe ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties ApplicationAutoScalingScalingPolicy where
  toResourceProperties ApplicationAutoScalingScalingPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApplicationAutoScaling::ScalingPolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("PolicyName",) . toJSON) _applicationAutoScalingScalingPolicyPolicyName
        , (Just . ("PolicyType",) . toJSON) _applicationAutoScalingScalingPolicyPolicyType
        , fmap (("ResourceId",) . toJSON) _applicationAutoScalingScalingPolicyResourceId
        , fmap (("ScalableDimension",) . toJSON) _applicationAutoScalingScalingPolicyScalableDimension
        , fmap (("ScalingTargetId",) . toJSON) _applicationAutoScalingScalingPolicyScalingTargetId
        , fmap (("ServiceNamespace",) . toJSON) _applicationAutoScalingScalingPolicyServiceNamespace
        , fmap (("StepScalingPolicyConfiguration",) . toJSON) _applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
        , fmap (("TargetTrackingScalingPolicyConfiguration",) . toJSON) _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
        ]
    }

-- | Constructor for 'ApplicationAutoScalingScalingPolicy' containing required
-- fields as arguments.
applicationAutoScalingScalingPolicy
  :: Val Text -- ^ 'aasspPolicyName'
  -> Val Text -- ^ 'aasspPolicyType'
  -> ApplicationAutoScalingScalingPolicy
applicationAutoScalingScalingPolicy policyNamearg policyTypearg =
  ApplicationAutoScalingScalingPolicy
  { _applicationAutoScalingScalingPolicyPolicyName = policyNamearg
  , _applicationAutoScalingScalingPolicyPolicyType = policyTypearg
  , _applicationAutoScalingScalingPolicyResourceId = Nothing
  , _applicationAutoScalingScalingPolicyScalableDimension = Nothing
  , _applicationAutoScalingScalingPolicyScalingTargetId = Nothing
  , _applicationAutoScalingScalingPolicyServiceNamespace = Nothing
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration = Nothing
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-policyname
aasspPolicyName :: Lens' ApplicationAutoScalingScalingPolicy (Val Text)
aasspPolicyName = lens _applicationAutoScalingScalingPolicyPolicyName (\s a -> s { _applicationAutoScalingScalingPolicyPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-policytype
aasspPolicyType :: Lens' ApplicationAutoScalingScalingPolicy (Val Text)
aasspPolicyType = lens _applicationAutoScalingScalingPolicyPolicyType (\s a -> s { _applicationAutoScalingScalingPolicyPolicyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-resourceid
aasspResourceId :: Lens' ApplicationAutoScalingScalingPolicy (Maybe (Val Text))
aasspResourceId = lens _applicationAutoScalingScalingPolicyResourceId (\s a -> s { _applicationAutoScalingScalingPolicyResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-scalabledimension
aasspScalableDimension :: Lens' ApplicationAutoScalingScalingPolicy (Maybe (Val Text))
aasspScalableDimension = lens _applicationAutoScalingScalingPolicyScalableDimension (\s a -> s { _applicationAutoScalingScalingPolicyScalableDimension = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-scalingtargetid
aasspScalingTargetId :: Lens' ApplicationAutoScalingScalingPolicy (Maybe (Val Text))
aasspScalingTargetId = lens _applicationAutoScalingScalingPolicyScalingTargetId (\s a -> s { _applicationAutoScalingScalingPolicyScalingTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-servicenamespace
aasspServiceNamespace :: Lens' ApplicationAutoScalingScalingPolicy (Maybe (Val Text))
aasspServiceNamespace = lens _applicationAutoScalingScalingPolicyServiceNamespace (\s a -> s { _applicationAutoScalingScalingPolicyServiceNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration
aasspStepScalingPolicyConfiguration :: Lens' ApplicationAutoScalingScalingPolicy (Maybe ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration)
aasspStepScalingPolicyConfiguration = lens _applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration (\s a -> s { _applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration
aasspTargetTrackingScalingPolicyConfiguration :: Lens' ApplicationAutoScalingScalingPolicy (Maybe ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration)
aasspTargetTrackingScalingPolicyConfiguration = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration = a })
