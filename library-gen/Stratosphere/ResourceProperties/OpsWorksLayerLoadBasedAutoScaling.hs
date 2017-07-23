{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html

module Stratosphere.ResourceProperties.OpsWorksLayerLoadBasedAutoScaling where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.OpsWorksLayerAutoScalingThresholds

-- | Full data type definition for OpsWorksLayerLoadBasedAutoScaling. See
-- 'opsWorksLayerLoadBasedAutoScaling' for a more convenient constructor.
data OpsWorksLayerLoadBasedAutoScaling =
  OpsWorksLayerLoadBasedAutoScaling
  { _opsWorksLayerLoadBasedAutoScalingDownScaling :: Maybe OpsWorksLayerAutoScalingThresholds
  , _opsWorksLayerLoadBasedAutoScalingEnable :: Maybe (Val Bool)
  , _opsWorksLayerLoadBasedAutoScalingUpScaling :: Maybe OpsWorksLayerAutoScalingThresholds
  } deriving (Show, Eq)

instance ToJSON OpsWorksLayerLoadBasedAutoScaling where
  toJSON OpsWorksLayerLoadBasedAutoScaling{..} =
    object $
    catMaybes
    [ fmap (("DownScaling",) . toJSON) _opsWorksLayerLoadBasedAutoScalingDownScaling
    , fmap (("Enable",) . toJSON . fmap Bool') _opsWorksLayerLoadBasedAutoScalingEnable
    , fmap (("UpScaling",) . toJSON) _opsWorksLayerLoadBasedAutoScalingUpScaling
    ]

instance FromJSON OpsWorksLayerLoadBasedAutoScaling where
  parseJSON (Object obj) =
    OpsWorksLayerLoadBasedAutoScaling <$>
      (obj .:? "DownScaling") <*>
      fmap (fmap (fmap unBool')) (obj .:? "Enable") <*>
      (obj .:? "UpScaling")
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksLayerLoadBasedAutoScaling' containing required
-- fields as arguments.
opsWorksLayerLoadBasedAutoScaling
  :: OpsWorksLayerLoadBasedAutoScaling
opsWorksLayerLoadBasedAutoScaling  =
  OpsWorksLayerLoadBasedAutoScaling
  { _opsWorksLayerLoadBasedAutoScalingDownScaling = Nothing
  , _opsWorksLayerLoadBasedAutoScalingEnable = Nothing
  , _opsWorksLayerLoadBasedAutoScalingUpScaling = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-downscaling
owllbasDownScaling :: Lens' OpsWorksLayerLoadBasedAutoScaling (Maybe OpsWorksLayerAutoScalingThresholds)
owllbasDownScaling = lens _opsWorksLayerLoadBasedAutoScalingDownScaling (\s a -> s { _opsWorksLayerLoadBasedAutoScalingDownScaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-enable
owllbasEnable :: Lens' OpsWorksLayerLoadBasedAutoScaling (Maybe (Val Bool))
owllbasEnable = lens _opsWorksLayerLoadBasedAutoScalingEnable (\s a -> s { _opsWorksLayerLoadBasedAutoScalingEnable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-upscaling
owllbasUpScaling :: Lens' OpsWorksLayerLoadBasedAutoScaling (Maybe OpsWorksLayerAutoScalingThresholds)
owllbasUpScaling = lens _opsWorksLayerLoadBasedAutoScalingUpScaling (\s a -> s { _opsWorksLayerLoadBasedAutoScalingUpScaling = a })
