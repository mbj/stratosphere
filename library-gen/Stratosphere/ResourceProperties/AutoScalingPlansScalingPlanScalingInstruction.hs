{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanScalingInstruction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanTargetTrackingConfiguration

-- | Full data type definition for
-- AutoScalingPlansScalingPlanScalingInstruction. See
-- 'autoScalingPlansScalingPlanScalingInstruction' for a more convenient
-- constructor.
data AutoScalingPlansScalingPlanScalingInstruction =
  AutoScalingPlansScalingPlanScalingInstruction
  { _autoScalingPlansScalingPlanScalingInstructionCustomizedLoadMetricSpecification :: Maybe AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification
  , _autoScalingPlansScalingPlanScalingInstructionDisableDynamicScaling :: Maybe (Val Bool)
  , _autoScalingPlansScalingPlanScalingInstructionMaxCapacity :: Val Integer
  , _autoScalingPlansScalingPlanScalingInstructionMinCapacity :: Val Integer
  , _autoScalingPlansScalingPlanScalingInstructionPredefinedLoadMetricSpecification :: Maybe AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification
  , _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior :: Maybe (Val Text)
  , _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBuffer :: Maybe (Val Integer)
  , _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMode :: Maybe (Val Text)
  , _autoScalingPlansScalingPlanScalingInstructionResourceId :: Val Text
  , _autoScalingPlansScalingPlanScalingInstructionScalableDimension :: Val Text
  , _autoScalingPlansScalingPlanScalingInstructionScalingPolicyUpdateBehavior :: Maybe (Val Text)
  , _autoScalingPlansScalingPlanScalingInstructionScheduledActionBufferTime :: Maybe (Val Integer)
  , _autoScalingPlansScalingPlanScalingInstructionServiceNamespace :: Val Text
  , _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations :: [AutoScalingPlansScalingPlanTargetTrackingConfiguration]
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanScalingInstruction where
  toJSON AutoScalingPlansScalingPlanScalingInstruction{..} =
    object $
    catMaybes
    [ fmap (("CustomizedLoadMetricSpecification",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionCustomizedLoadMetricSpecification
    , fmap (("DisableDynamicScaling",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionDisableDynamicScaling
    , (Just . ("MaxCapacity",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionMaxCapacity
    , (Just . ("MinCapacity",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionMinCapacity
    , fmap (("PredefinedLoadMetricSpecification",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionPredefinedLoadMetricSpecification
    , fmap (("PredictiveScalingMaxCapacityBehavior",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior
    , fmap (("PredictiveScalingMaxCapacityBuffer",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBuffer
    , fmap (("PredictiveScalingMode",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMode
    , (Just . ("ResourceId",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionResourceId
    , (Just . ("ScalableDimension",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionScalableDimension
    , fmap (("ScalingPolicyUpdateBehavior",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionScalingPolicyUpdateBehavior
    , fmap (("ScheduledActionBufferTime",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionScheduledActionBufferTime
    , (Just . ("ServiceNamespace",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionServiceNamespace
    , (Just . ("TargetTrackingConfigurations",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations
    ]

-- | Constructor for 'AutoScalingPlansScalingPlanScalingInstruction'
-- containing required fields as arguments.
autoScalingPlansScalingPlanScalingInstruction
  :: Val Integer -- ^ 'aspspsiMaxCapacity'
  -> Val Integer -- ^ 'aspspsiMinCapacity'
  -> Val Text -- ^ 'aspspsiResourceId'
  -> Val Text -- ^ 'aspspsiScalableDimension'
  -> Val Text -- ^ 'aspspsiServiceNamespace'
  -> [AutoScalingPlansScalingPlanTargetTrackingConfiguration] -- ^ 'aspspsiTargetTrackingConfigurations'
  -> AutoScalingPlansScalingPlanScalingInstruction
autoScalingPlansScalingPlanScalingInstruction maxCapacityarg minCapacityarg resourceIdarg scalableDimensionarg serviceNamespacearg targetTrackingConfigurationsarg =
  AutoScalingPlansScalingPlanScalingInstruction
  { _autoScalingPlansScalingPlanScalingInstructionCustomizedLoadMetricSpecification = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionDisableDynamicScaling = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionMaxCapacity = maxCapacityarg
  , _autoScalingPlansScalingPlanScalingInstructionMinCapacity = minCapacityarg
  , _autoScalingPlansScalingPlanScalingInstructionPredefinedLoadMetricSpecification = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBuffer = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMode = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionResourceId = resourceIdarg
  , _autoScalingPlansScalingPlanScalingInstructionScalableDimension = scalableDimensionarg
  , _autoScalingPlansScalingPlanScalingInstructionScalingPolicyUpdateBehavior = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionScheduledActionBufferTime = Nothing
  , _autoScalingPlansScalingPlanScalingInstructionServiceNamespace = serviceNamespacearg
  , _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations = targetTrackingConfigurationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-customizedloadmetricspecification
aspspsiCustomizedLoadMetricSpecification :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification)
aspspsiCustomizedLoadMetricSpecification = lens _autoScalingPlansScalingPlanScalingInstructionCustomizedLoadMetricSpecification (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionCustomizedLoadMetricSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-disabledynamicscaling
aspspsiDisableDynamicScaling :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe (Val Bool))
aspspsiDisableDynamicScaling = lens _autoScalingPlansScalingPlanScalingInstructionDisableDynamicScaling (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionDisableDynamicScaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-maxcapacity
aspspsiMaxCapacity :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Integer)
aspspsiMaxCapacity = lens _autoScalingPlansScalingPlanScalingInstructionMaxCapacity (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-mincapacity
aspspsiMinCapacity :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Integer)
aspspsiMinCapacity = lens _autoScalingPlansScalingPlanScalingInstructionMinCapacity (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionMinCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predefinedloadmetricspecification
aspspsiPredefinedLoadMetricSpecification :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe AutoScalingPlansScalingPlanPredefinedLoadMetricSpecification)
aspspsiPredefinedLoadMetricSpecification = lens _autoScalingPlansScalingPlanScalingInstructionPredefinedLoadMetricSpecification (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionPredefinedLoadMetricSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmaxcapacitybehavior
aspspsiPredictiveScalingMaxCapacityBehavior :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe (Val Text))
aspspsiPredictiveScalingMaxCapacityBehavior = lens _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmaxcapacitybuffer
aspspsiPredictiveScalingMaxCapacityBuffer :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe (Val Integer))
aspspsiPredictiveScalingMaxCapacityBuffer = lens _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBuffer (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMaxCapacityBuffer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmode
aspspsiPredictiveScalingMode :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe (Val Text))
aspspsiPredictiveScalingMode = lens _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMode (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionPredictiveScalingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-resourceid
aspspsiResourceId :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Text)
aspspsiResourceId = lens _autoScalingPlansScalingPlanScalingInstructionResourceId (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalabledimension
aspspsiScalableDimension :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Text)
aspspsiScalableDimension = lens _autoScalingPlansScalingPlanScalingInstructionScalableDimension (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionScalableDimension = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalingpolicyupdatebehavior
aspspsiScalingPolicyUpdateBehavior :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe (Val Text))
aspspsiScalingPolicyUpdateBehavior = lens _autoScalingPlansScalingPlanScalingInstructionScalingPolicyUpdateBehavior (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionScalingPolicyUpdateBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scheduledactionbuffertime
aspspsiScheduledActionBufferTime :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Maybe (Val Integer))
aspspsiScheduledActionBufferTime = lens _autoScalingPlansScalingPlanScalingInstructionScheduledActionBufferTime (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionScheduledActionBufferTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-servicenamespace
aspspsiServiceNamespace :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Text)
aspspsiServiceNamespace = lens _autoScalingPlansScalingPlanScalingInstructionServiceNamespace (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionServiceNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-targettrackingconfigurations
aspspsiTargetTrackingConfigurations :: Lens' AutoScalingPlansScalingPlanScalingInstruction [AutoScalingPlansScalingPlanTargetTrackingConfiguration]
aspspsiTargetTrackingConfigurations = lens _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations = a })
