{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | To specify how AWS CloudFormation handles replacing updates for an Auto
-- Scaling group, use the AutoScalingReplacingUpdate policy.

module Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingReplacingUpdatePolicy. See
-- 'autoScalingReplacingUpdatePolicy' for a more convenient constructor.
data AutoScalingReplacingUpdatePolicy =
  AutoScalingReplacingUpdatePolicy
  { _autoScalingReplacingUpdatePolicyWillReplace :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON AutoScalingReplacingUpdatePolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON AutoScalingReplacingUpdatePolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'AutoScalingReplacingUpdatePolicy' containing required fields
-- as arguments.
autoScalingReplacingUpdatePolicy
  :: AutoScalingReplacingUpdatePolicy
autoScalingReplacingUpdatePolicy  =
  AutoScalingReplacingUpdatePolicy
  { _autoScalingReplacingUpdatePolicyWillReplace = Nothing
  }

-- | Specifies whether an Auto Scaling group and the instances it contains are
-- replaced during an update. During replacement, AWS CloudFormation retains
-- the old group until it finishes creating the new one. This allows AWS
-- CloudFormation to roll back to the old Auto Scaling group if the update
-- doesn't succeed. While AWS CloudFormation creates the new group, it doesn't
-- detach or attach any instances. After creating the new Auto Scaling group,
-- AWS CloudFormation removes the old Auto Scaling group during the cleanup
-- process. If the update doesn't succeed, AWS CloudFormation removes the new
-- Auto Scaling group.
asrupWillReplace :: Lens' AutoScalingReplacingUpdatePolicy (Maybe (Val Bool'))
asrupWillReplace = lens _autoScalingReplacingUpdatePolicyWillReplace (\s a -> s { _autoScalingReplacingUpdatePolicyWillReplace = a })
