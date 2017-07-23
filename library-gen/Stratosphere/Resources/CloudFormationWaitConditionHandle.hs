{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitconditionhandle.html

module Stratosphere.Resources.CloudFormationWaitConditionHandle where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFormationWaitConditionHandle. See
-- 'cloudFormationWaitConditionHandle' for a more convenient constructor.
data CloudFormationWaitConditionHandle =
  CloudFormationWaitConditionHandle
  { 
  } deriving (Show, Eq)

instance ToJSON CloudFormationWaitConditionHandle where
  toJSON _ = toJSON ([] :: [String])

instance FromJSON CloudFormationWaitConditionHandle where
  parseJSON (Array _) = return CloudFormationWaitConditionHandle
  parseJSON _ = mempty

-- | Constructor for 'CloudFormationWaitConditionHandle' containing required
-- fields as arguments.
cloudFormationWaitConditionHandle
  :: CloudFormationWaitConditionHandle
cloudFormationWaitConditionHandle  =
  CloudFormationWaitConditionHandle
  { 
  }


