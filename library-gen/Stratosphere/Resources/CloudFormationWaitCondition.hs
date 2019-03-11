{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html

module Stratosphere.Resources.CloudFormationWaitCondition where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationWaitCondition. See
-- 'cloudFormationWaitCondition' for a more convenient constructor.
data CloudFormationWaitCondition =
  CloudFormationWaitCondition
  { _cloudFormationWaitConditionCount :: Maybe (Val Integer)
  , _cloudFormationWaitConditionHandle :: Maybe (Val Text)
  , _cloudFormationWaitConditionTimeout :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFormationWaitCondition where
  toJSON CloudFormationWaitCondition{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON . fmap Integer') _cloudFormationWaitConditionCount
    , fmap (("Handle",) . toJSON) _cloudFormationWaitConditionHandle
    , fmap (("Timeout",) . toJSON) _cloudFormationWaitConditionTimeout
    ]

-- | Constructor for 'CloudFormationWaitCondition' containing required fields
-- as arguments.
cloudFormationWaitCondition
  :: CloudFormationWaitCondition
cloudFormationWaitCondition  =
  CloudFormationWaitCondition
  { _cloudFormationWaitConditionCount = Nothing
  , _cloudFormationWaitConditionHandle = Nothing
  , _cloudFormationWaitConditionTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-count
cfwcCount :: Lens' CloudFormationWaitCondition (Maybe (Val Integer))
cfwcCount = lens _cloudFormationWaitConditionCount (\s a -> s { _cloudFormationWaitConditionCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-handle
cfwcHandle :: Lens' CloudFormationWaitCondition (Maybe (Val Text))
cfwcHandle = lens _cloudFormationWaitConditionHandle (\s a -> s { _cloudFormationWaitConditionHandle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-timeout
cfwcTimeout :: Lens' CloudFormationWaitCondition (Maybe (Val Text))
cfwcTimeout = lens _cloudFormationWaitConditionTimeout (\s a -> s { _cloudFormationWaitConditionTimeout = a })
