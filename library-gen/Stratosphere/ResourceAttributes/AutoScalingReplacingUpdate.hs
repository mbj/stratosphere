{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | To specify how AWS CloudFormation handles replacing updates for an Auto
-- Scaling group, use the AutoScalingReplacingUpdate policy.

module Stratosphere.ResourceAttributes.AutoScalingReplacingUpdate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingReplacingUpdate. See
-- 'autoScalingReplacingUpdate' for a more convenient constructor.
data AutoScalingReplacingUpdate =
  AutoScalingReplacingUpdate
  { _autoScalingReplacingUpdateWillReplace :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON AutoScalingReplacingUpdate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON AutoScalingReplacingUpdate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'AutoScalingReplacingUpdate' containing required fields
-- as arguments.
autoScalingReplacingUpdate
  :: AutoScalingReplacingUpdate
autoScalingReplacingUpdate  =
  AutoScalingReplacingUpdate
  { _autoScalingReplacingUpdateWillReplace = Nothing
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
asruWillReplace :: Lens' AutoScalingReplacingUpdate (Maybe (Val Bool'))
asruWillReplace = lens _autoScalingReplacingUpdateWillReplace (\s a -> s { _autoScalingReplacingUpdateWillReplace = a })