{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingaction.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigSimpleScalingPolicyConfiguration

-- | Full data type definition for EMRInstanceGroupConfigScalingAction. See
-- 'emrInstanceGroupConfigScalingAction' for a more convenient constructor.
data EMRInstanceGroupConfigScalingAction =
  EMRInstanceGroupConfigScalingAction
  { _eMRInstanceGroupConfigScalingActionMarket :: Maybe (Val Text)
  , _eMRInstanceGroupConfigScalingActionSimpleScalingPolicyConfiguration :: EMRInstanceGroupConfigSimpleScalingPolicyConfiguration
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigScalingAction where
  toJSON EMRInstanceGroupConfigScalingAction{..} =
    object $
    catMaybes
    [ fmap (("Market",) . toJSON) _eMRInstanceGroupConfigScalingActionMarket
    , (Just . ("SimpleScalingPolicyConfiguration",) . toJSON) _eMRInstanceGroupConfigScalingActionSimpleScalingPolicyConfiguration
    ]

-- | Constructor for 'EMRInstanceGroupConfigScalingAction' containing required
-- fields as arguments.
emrInstanceGroupConfigScalingAction
  :: EMRInstanceGroupConfigSimpleScalingPolicyConfiguration -- ^ 'emrigcsaSimpleScalingPolicyConfiguration'
  -> EMRInstanceGroupConfigScalingAction
emrInstanceGroupConfigScalingAction simpleScalingPolicyConfigurationarg =
  EMRInstanceGroupConfigScalingAction
  { _eMRInstanceGroupConfigScalingActionMarket = Nothing
  , _eMRInstanceGroupConfigScalingActionSimpleScalingPolicyConfiguration = simpleScalingPolicyConfigurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingaction.html#cfn-elasticmapreduce-instancegroupconfig-scalingaction-market
emrigcsaMarket :: Lens' EMRInstanceGroupConfigScalingAction (Maybe (Val Text))
emrigcsaMarket = lens _eMRInstanceGroupConfigScalingActionMarket (\s a -> s { _eMRInstanceGroupConfigScalingActionMarket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingaction.html#cfn-elasticmapreduce-instancegroupconfig-scalingaction-simplescalingpolicyconfiguration
emrigcsaSimpleScalingPolicyConfiguration :: Lens' EMRInstanceGroupConfigScalingAction EMRInstanceGroupConfigSimpleScalingPolicyConfiguration
emrigcsaSimpleScalingPolicyConfiguration = lens _eMRInstanceGroupConfigScalingActionSimpleScalingPolicyConfiguration (\s a -> s { _eMRInstanceGroupConfigScalingActionSimpleScalingPolicyConfiguration = a })
