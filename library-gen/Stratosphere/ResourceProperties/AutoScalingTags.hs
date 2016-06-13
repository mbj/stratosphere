{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The Auto Scaling Tags property is an embedded property of the
-- AWS::AutoScaling::AutoScalingGroup type. For more information about tags,
-- go to Tagging Auto Scaling Groups and Amazon EC2 Instances in the Auto
-- Scaling User Guide. AWS CloudFormation adds the following tags to all Auto
-- Scaling groups and associated instances:

module Stratosphere.ResourceProperties.AutoScalingTags where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingTags. See 'autoScalingTags' for
-- a more convenient constructor.
data AutoScalingTags =
  AutoScalingTags
  { _autoScalingTagsKey :: Val Text
  , _autoScalingTagsValue :: Val Text
  , _autoScalingTagsPropagateAtLaunch :: Val Bool'
  } deriving (Show, Generic)

instance ToJSON AutoScalingTags where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON AutoScalingTags where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'AutoScalingTags' containing required fields as
-- arguments.
autoScalingTags
  :: Val Text -- ^ 'astKey'
  -> Val Text -- ^ 'astValue'
  -> Val Bool' -- ^ 'astPropagateAtLaunch'
  -> AutoScalingTags
autoScalingTags keyarg valuearg propagateAtLauncharg =
  AutoScalingTags
  { _autoScalingTagsKey = keyarg
  , _autoScalingTagsValue = valuearg
  , _autoScalingTagsPropagateAtLaunch = propagateAtLauncharg
  }

-- | The key name of the tag.
astKey :: Lens' AutoScalingTags (Val Text)
astKey = lens _autoScalingTagsKey (\s a -> s { _autoScalingTagsKey = a })

-- | The value for the tag.
astValue :: Lens' AutoScalingTags (Val Text)
astValue = lens _autoScalingTagsValue (\s a -> s { _autoScalingTagsValue = a })

-- | Set to true if you want AWS CloudFormation to copy the tag to EC2
-- instances that are launched as part of the auto scaling group. Set to false
-- if you want the tag attached only to the auto scaling group and not copied
-- to any instances launched as part of the auto scaling group.
astPropagateAtLaunch :: Lens' AutoScalingTags (Val Bool')
astPropagateAtLaunch = lens _autoScalingTagsPropagateAtLaunch (\s a -> s { _autoScalingTagsPropagateAtLaunch = a })