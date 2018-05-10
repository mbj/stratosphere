{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanScalingInstruction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanTargetTrackingConfiguration

-- | Full data type definition for
-- AutoScalingPlansScalingPlanScalingInstruction. See
-- 'autoScalingPlansScalingPlanScalingInstruction' for a more convenient
-- constructor.
data AutoScalingPlansScalingPlanScalingInstruction =
  AutoScalingPlansScalingPlanScalingInstruction
  { _autoScalingPlansScalingPlanScalingInstructionMaxCapacity :: Val Integer
  , _autoScalingPlansScalingPlanScalingInstructionMinCapacity :: Val Integer
  , _autoScalingPlansScalingPlanScalingInstructionResourceId :: Val Text
  , _autoScalingPlansScalingPlanScalingInstructionScalableDimension :: Val Text
  , _autoScalingPlansScalingPlanScalingInstructionServiceNamespace :: Val Text
  , _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations :: [AutoScalingPlansScalingPlanTargetTrackingConfiguration]
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanScalingInstruction where
  toJSON AutoScalingPlansScalingPlanScalingInstruction{..} =
    object $
    catMaybes
    [ (Just . ("MaxCapacity",) . toJSON . fmap Integer') _autoScalingPlansScalingPlanScalingInstructionMaxCapacity
    , (Just . ("MinCapacity",) . toJSON . fmap Integer') _autoScalingPlansScalingPlanScalingInstructionMinCapacity
    , (Just . ("ResourceId",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionResourceId
    , (Just . ("ScalableDimension",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionScalableDimension
    , (Just . ("ServiceNamespace",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionServiceNamespace
    , (Just . ("TargetTrackingConfigurations",) . toJSON) _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations
    ]

instance FromJSON AutoScalingPlansScalingPlanScalingInstruction where
  parseJSON (Object obj) =
    AutoScalingPlansScalingPlanScalingInstruction <$>
      fmap (fmap unInteger') (obj .: "MaxCapacity") <*>
      fmap (fmap unInteger') (obj .: "MinCapacity") <*>
      (obj .: "ResourceId") <*>
      (obj .: "ScalableDimension") <*>
      (obj .: "ServiceNamespace") <*>
      (obj .: "TargetTrackingConfigurations")
  parseJSON _ = mempty

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
  { _autoScalingPlansScalingPlanScalingInstructionMaxCapacity = maxCapacityarg
  , _autoScalingPlansScalingPlanScalingInstructionMinCapacity = minCapacityarg
  , _autoScalingPlansScalingPlanScalingInstructionResourceId = resourceIdarg
  , _autoScalingPlansScalingPlanScalingInstructionScalableDimension = scalableDimensionarg
  , _autoScalingPlansScalingPlanScalingInstructionServiceNamespace = serviceNamespacearg
  , _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations = targetTrackingConfigurationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-maxcapacity
aspspsiMaxCapacity :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Integer)
aspspsiMaxCapacity = lens _autoScalingPlansScalingPlanScalingInstructionMaxCapacity (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-mincapacity
aspspsiMinCapacity :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Integer)
aspspsiMinCapacity = lens _autoScalingPlansScalingPlanScalingInstructionMinCapacity (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionMinCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-resourceid
aspspsiResourceId :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Text)
aspspsiResourceId = lens _autoScalingPlansScalingPlanScalingInstructionResourceId (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalabledimension
aspspsiScalableDimension :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Text)
aspspsiScalableDimension = lens _autoScalingPlansScalingPlanScalingInstructionScalableDimension (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionScalableDimension = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-servicenamespace
aspspsiServiceNamespace :: Lens' AutoScalingPlansScalingPlanScalingInstruction (Val Text)
aspspsiServiceNamespace = lens _autoScalingPlansScalingPlanScalingInstructionServiceNamespace (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionServiceNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-targettrackingconfigurations
aspspsiTargetTrackingConfigurations :: Lens' AutoScalingPlansScalingPlanScalingInstruction [AutoScalingPlansScalingPlanTargetTrackingConfiguration]
aspspsiTargetTrackingConfigurations = lens _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations (\s a -> s { _autoScalingPlansScalingPlanScalingInstructionTargetTrackingConfigurations = a })
