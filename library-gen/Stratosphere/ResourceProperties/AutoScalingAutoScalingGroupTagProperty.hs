{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupTagProperty where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingAutoScalingGroupTagProperty. See
-- | 'autoScalingAutoScalingGroupTagProperty' for a more convenient
-- | constructor.
data AutoScalingAutoScalingGroupTagProperty =
  AutoScalingAutoScalingGroupTagProperty
  { _autoScalingAutoScalingGroupTagPropertyKey :: Val Text
  , _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch :: Val Bool'
  , _autoScalingAutoScalingGroupTagPropertyValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON AutoScalingAutoScalingGroupTagProperty where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON AutoScalingAutoScalingGroupTagProperty where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

-- | Constructor for 'AutoScalingAutoScalingGroupTagProperty' containing
-- | required fields as arguments.
autoScalingAutoScalingGroupTagProperty
  :: Val Text -- ^ 'asasgtpKey'
  -> Val Bool' -- ^ 'asasgtpPropagateAtLaunch'
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
asasgtpPropagateAtLaunch :: Lens' AutoScalingAutoScalingGroupTagProperty (Val Bool')
asasgtpPropagateAtLaunch = lens _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch (\s a -> s { _autoScalingAutoScalingGroupTagPropertyPropagateAtLaunch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Value
asasgtpValue :: Lens' AutoScalingAutoScalingGroupTagProperty (Val Text)
asasgtpValue = lens _autoScalingAutoScalingGroupTagPropertyValue (\s a -> s { _autoScalingAutoScalingGroupTagPropertyValue = a })
