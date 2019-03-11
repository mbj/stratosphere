{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html

module Stratosphere.ResourceProperties.BatchJobQueueComputeEnvironmentOrder where

import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobQueueComputeEnvironmentOrder. See
-- 'batchJobQueueComputeEnvironmentOrder' for a more convenient constructor.
data BatchJobQueueComputeEnvironmentOrder =
  BatchJobQueueComputeEnvironmentOrder
  { _batchJobQueueComputeEnvironmentOrderComputeEnvironment :: Val Text
  , _batchJobQueueComputeEnvironmentOrderOrder :: Val Integer
  } deriving (Show, Eq)

instance ToJSON BatchJobQueueComputeEnvironmentOrder where
  toJSON BatchJobQueueComputeEnvironmentOrder{..} =
    object $
    catMaybes
    [ (Just . ("ComputeEnvironment",) . toJSON) _batchJobQueueComputeEnvironmentOrderComputeEnvironment
    , (Just . ("Order",) . toJSON . fmap Integer') _batchJobQueueComputeEnvironmentOrderOrder
    ]

-- | Constructor for 'BatchJobQueueComputeEnvironmentOrder' containing
-- required fields as arguments.
batchJobQueueComputeEnvironmentOrder
  :: Val Text -- ^ 'bjqceoComputeEnvironment'
  -> Val Integer -- ^ 'bjqceoOrder'
  -> BatchJobQueueComputeEnvironmentOrder
batchJobQueueComputeEnvironmentOrder computeEnvironmentarg orderarg =
  BatchJobQueueComputeEnvironmentOrder
  { _batchJobQueueComputeEnvironmentOrderComputeEnvironment = computeEnvironmentarg
  , _batchJobQueueComputeEnvironmentOrderOrder = orderarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html#cfn-batch-jobqueue-computeenvironmentorder-computeenvironment
bjqceoComputeEnvironment :: Lens' BatchJobQueueComputeEnvironmentOrder (Val Text)
bjqceoComputeEnvironment = lens _batchJobQueueComputeEnvironmentOrderComputeEnvironment (\s a -> s { _batchJobQueueComputeEnvironmentOrderComputeEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html#cfn-batch-jobqueue-computeenvironmentorder-order
bjqceoOrder :: Lens' BatchJobQueueComputeEnvironmentOrder (Val Integer)
bjqceoOrder = lens _batchJobQueueComputeEnvironmentOrderOrder (\s a -> s { _batchJobQueueComputeEnvironmentOrderOrder = a })
