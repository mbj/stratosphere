{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html

module Stratosphere.ResourceProperties.EMRClusterSimpleScalingPolicyConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRClusterSimpleScalingPolicyConfiguration.
-- See 'emrClusterSimpleScalingPolicyConfiguration' for a more convenient
-- constructor.
data EMRClusterSimpleScalingPolicyConfiguration =
  EMRClusterSimpleScalingPolicyConfiguration
  { _eMRClusterSimpleScalingPolicyConfigurationAdjustmentType :: Maybe (Val Text)
  , _eMRClusterSimpleScalingPolicyConfigurationCoolDown :: Maybe (Val Integer)
  , _eMRClusterSimpleScalingPolicyConfigurationScalingAdjustment :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EMRClusterSimpleScalingPolicyConfiguration where
  toJSON EMRClusterSimpleScalingPolicyConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AdjustmentType",) . toJSON) _eMRClusterSimpleScalingPolicyConfigurationAdjustmentType
    , fmap (("CoolDown",) . toJSON . fmap Integer') _eMRClusterSimpleScalingPolicyConfigurationCoolDown
    , (Just . ("ScalingAdjustment",) . toJSON . fmap Integer') _eMRClusterSimpleScalingPolicyConfigurationScalingAdjustment
    ]

instance FromJSON EMRClusterSimpleScalingPolicyConfiguration where
  parseJSON (Object obj) =
    EMRClusterSimpleScalingPolicyConfiguration <$>
      (obj .:? "AdjustmentType") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "CoolDown") <*>
      fmap (fmap unInteger') (obj .: "ScalingAdjustment")
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterSimpleScalingPolicyConfiguration' containing
-- required fields as arguments.
emrClusterSimpleScalingPolicyConfiguration
  :: Val Integer -- ^ 'emrcsspcScalingAdjustment'
  -> EMRClusterSimpleScalingPolicyConfiguration
emrClusterSimpleScalingPolicyConfiguration scalingAdjustmentarg =
  EMRClusterSimpleScalingPolicyConfiguration
  { _eMRClusterSimpleScalingPolicyConfigurationAdjustmentType = Nothing
  , _eMRClusterSimpleScalingPolicyConfigurationCoolDown = Nothing
  , _eMRClusterSimpleScalingPolicyConfigurationScalingAdjustment = scalingAdjustmentarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-adjustmenttype
emrcsspcAdjustmentType :: Lens' EMRClusterSimpleScalingPolicyConfiguration (Maybe (Val Text))
emrcsspcAdjustmentType = lens _eMRClusterSimpleScalingPolicyConfigurationAdjustmentType (\s a -> s { _eMRClusterSimpleScalingPolicyConfigurationAdjustmentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-cooldown
emrcsspcCoolDown :: Lens' EMRClusterSimpleScalingPolicyConfiguration (Maybe (Val Integer))
emrcsspcCoolDown = lens _eMRClusterSimpleScalingPolicyConfigurationCoolDown (\s a -> s { _eMRClusterSimpleScalingPolicyConfigurationCoolDown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-scalingadjustment
emrcsspcScalingAdjustment :: Lens' EMRClusterSimpleScalingPolicyConfiguration (Val Integer)
emrcsspcScalingAdjustment = lens _eMRClusterSimpleScalingPolicyConfigurationScalingAdjustment (\s a -> s { _eMRClusterSimpleScalingPolicyConfigurationScalingAdjustment = a })
