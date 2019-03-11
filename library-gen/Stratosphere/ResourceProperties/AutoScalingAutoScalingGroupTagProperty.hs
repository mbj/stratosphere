{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupTagProperty where

import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingAutoScalingGroupTagProperty. See
-- 'autoScalingAutoScalingGroupTagProperty' for a more convenient
-- constructor.
data AutoScalingAutoScalingGroupTagProperty =
  AutoScalingAutoScalingGroupTagProperty
  { _autoScalingAutoScalingGroupTagPropertyKey :: Val Text
  , _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch :: Val Bool
  , _autoScalingAutoScalingGroupTagPropertyValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupTagProperty where
  toJSON AutoScalingAutoScalingGroupTagProperty{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _autoScalingAutoScalingGroupTagPropertyKey
    , (Just . ("PropagateAtLaunch",) . toJSON . fmap Bool') _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch
    , (Just . ("Value",) . toJSON) _autoScalingAutoScalingGroupTagPropertyValue
    ]

-- | Constructor for 'AutoScalingAutoScalingGroupTagProperty' containing
-- required fields as arguments.
autoScalingAutoScalingGroupTagProperty
  :: Val Text -- ^ 'asasgtpKey'
  -> Val Bool -- ^ 'asasgtpPropagateAtLaunch'
  -> Val Text -- ^ 'asasgtpValue'
  -> AutoScalingAutoScalingGroupTagProperty
autoScalingAutoScalingGroupTagProperty keyarg propagateAtLauncharg valuearg =
  AutoScalingAutoScalingGroupTagProperty
  { _autoScalingAutoScalingGroupTagPropertyKey = keyarg
  , _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch = propagateAtLauncharg
  , _autoScalingAutoScalingGroupTagPropertyValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Key
asasgtpKey :: Lens' AutoScalingAutoScalingGroupTagProperty (Val Text)
asasgtpKey = lens _autoScalingAutoScalingGroupTagPropertyKey (\s a -> s { _autoScalingAutoScalingGroupTagPropertyKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-PropagateAtLaunch
asasgtpPropagateAtLaunch :: Lens' AutoScalingAutoScalingGroupTagProperty (Val Bool)
asasgtpPropagateAtLaunch = lens _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch (\s a -> s { _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Value
asasgtpValue :: Lens' AutoScalingAutoScalingGroupTagProperty (Val Text)
asasgtpValue = lens _autoScalingAutoScalingGroupTagPropertyValue (\s a -> s { _autoScalingAutoScalingGroupTagPropertyValue = a })
