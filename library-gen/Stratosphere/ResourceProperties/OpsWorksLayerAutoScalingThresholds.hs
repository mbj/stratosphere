{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html

module Stratosphere.ResourceProperties.OpsWorksLayerAutoScalingThresholds where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for OpsWorksLayerAutoScalingThresholds. See
-- 'opsWorksLayerAutoScalingThresholds' for a more convenient constructor.
data OpsWorksLayerAutoScalingThresholds =
  OpsWorksLayerAutoScalingThresholds
  { _opsWorksLayerAutoScalingThresholdsCpuThreshold :: Maybe (Val Double)
  , _opsWorksLayerAutoScalingThresholdsIgnoreMetricsTime :: Maybe (Val Integer)
  , _opsWorksLayerAutoScalingThresholdsInstanceCount :: Maybe (Val Integer)
  , _opsWorksLayerAutoScalingThresholdsLoadThreshold :: Maybe (Val Double)
  , _opsWorksLayerAutoScalingThresholdsMemoryThreshold :: Maybe (Val Double)
  , _opsWorksLayerAutoScalingThresholdsThresholdsWaitTime :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON OpsWorksLayerAutoScalingThresholds where
  toJSON OpsWorksLayerAutoScalingThresholds{..} =
    object $
    catMaybes
    [ fmap (("CpuThreshold",) . toJSON . fmap Double') _opsWorksLayerAutoScalingThresholdsCpuThreshold
    , fmap (("IgnoreMetricsTime",) . toJSON . fmap Integer') _opsWorksLayerAutoScalingThresholdsIgnoreMetricsTime
    , fmap (("InstanceCount",) . toJSON . fmap Integer') _opsWorksLayerAutoScalingThresholdsInstanceCount
    , fmap (("LoadThreshold",) . toJSON . fmap Double') _opsWorksLayerAutoScalingThresholdsLoadThreshold
    , fmap (("MemoryThreshold",) . toJSON . fmap Double') _opsWorksLayerAutoScalingThresholdsMemoryThreshold
    , fmap (("ThresholdsWaitTime",) . toJSON . fmap Integer') _opsWorksLayerAutoScalingThresholdsThresholdsWaitTime
    ]

instance FromJSON OpsWorksLayerAutoScalingThresholds where
  parseJSON (Object obj) =
    OpsWorksLayerAutoScalingThresholds <$>
      fmap (fmap (fmap unDouble')) (obj .:? "CpuThreshold") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "IgnoreMetricsTime") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "InstanceCount") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "LoadThreshold") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "MemoryThreshold") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ThresholdsWaitTime")
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksLayerAutoScalingThresholds' containing required
-- fields as arguments.
opsWorksLayerAutoScalingThresholds
  :: OpsWorksLayerAutoScalingThresholds
opsWorksLayerAutoScalingThresholds  =
  OpsWorksLayerAutoScalingThresholds
  { _opsWorksLayerAutoScalingThresholdsCpuThreshold = Nothing
  , _opsWorksLayerAutoScalingThresholdsIgnoreMetricsTime = Nothing
  , _opsWorksLayerAutoScalingThresholdsInstanceCount = Nothing
  , _opsWorksLayerAutoScalingThresholdsLoadThreshold = Nothing
  , _opsWorksLayerAutoScalingThresholdsMemoryThreshold = Nothing
  , _opsWorksLayerAutoScalingThresholdsThresholdsWaitTime = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-cputhreshold
owlastCpuThreshold :: Lens' OpsWorksLayerAutoScalingThresholds (Maybe (Val Double))
owlastCpuThreshold = lens _opsWorksLayerAutoScalingThresholdsCpuThreshold (\s a -> s { _opsWorksLayerAutoScalingThresholdsCpuThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-ignoremetricstime
owlastIgnoreMetricsTime :: Lens' OpsWorksLayerAutoScalingThresholds (Maybe (Val Integer))
owlastIgnoreMetricsTime = lens _opsWorksLayerAutoScalingThresholdsIgnoreMetricsTime (\s a -> s { _opsWorksLayerAutoScalingThresholdsIgnoreMetricsTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-instancecount
owlastInstanceCount :: Lens' OpsWorksLayerAutoScalingThresholds (Maybe (Val Integer))
owlastInstanceCount = lens _opsWorksLayerAutoScalingThresholdsInstanceCount (\s a -> s { _opsWorksLayerAutoScalingThresholdsInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-loadthreshold
owlastLoadThreshold :: Lens' OpsWorksLayerAutoScalingThresholds (Maybe (Val Double))
owlastLoadThreshold = lens _opsWorksLayerAutoScalingThresholdsLoadThreshold (\s a -> s { _opsWorksLayerAutoScalingThresholdsLoadThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-memorythreshold
owlastMemoryThreshold :: Lens' OpsWorksLayerAutoScalingThresholds (Maybe (Val Double))
owlastMemoryThreshold = lens _opsWorksLayerAutoScalingThresholdsMemoryThreshold (\s a -> s { _opsWorksLayerAutoScalingThresholdsMemoryThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-thresholdwaittime
owlastThresholdsWaitTime :: Lens' OpsWorksLayerAutoScalingThresholds (Maybe (Val Integer))
owlastThresholdsWaitTime = lens _opsWorksLayerAutoScalingThresholdsThresholdsWaitTime (\s a -> s { _opsWorksLayerAutoScalingThresholdsThresholdsWaitTime = a })
