{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitconditionhandle.html

module Stratosphere.Resources.CloudFormationWaitConditionHandle where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFormationWaitConditionHandle. See
-- | 'cloudFormationWaitConditionHandle' for a more convenient constructor.
data CloudFormationWaitConditionHandle =
  CloudFormationWaitConditionHandle
  { 
  } deriving (Show, Generic)

instance ToJSON CloudFormationWaitConditionHandle where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON CloudFormationWaitConditionHandle where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'CloudFormationWaitConditionHandle' containing required
-- | fields as arguments.
cloudFormationWaitConditionHandle
  :: CloudFormationWaitConditionHandle
cloudFormationWaitConditionHandle  =
  CloudFormationWaitConditionHandle
  { 
  }


