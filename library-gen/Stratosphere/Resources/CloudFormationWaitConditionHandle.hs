{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitconditionhandle.html

module Stratosphere.Resources.CloudFormationWaitConditionHandle where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationWaitConditionHandle. See
-- 'cloudFormationWaitConditionHandle' for a more convenient constructor.
data CloudFormationWaitConditionHandle =
  CloudFormationWaitConditionHandle
  { 
  } deriving (Show, Eq)

instance ToResourceProperties CloudFormationWaitConditionHandle where
  toResourceProperties _ =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFormation::WaitConditionHandle"
    , resourcePropertiesProperties = keyMapEmpty
    }

-- | Constructor for 'CloudFormationWaitConditionHandle' containing required
-- fields as arguments.
cloudFormationWaitConditionHandle
  :: CloudFormationWaitConditionHandle
cloudFormationWaitConditionHandle  =
  CloudFormationWaitConditionHandle
  { 
  }


