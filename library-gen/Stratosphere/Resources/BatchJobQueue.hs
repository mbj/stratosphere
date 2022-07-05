{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html

module Stratosphere.Resources.BatchJobQueue where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobQueueComputeEnvironmentOrder

-- | Full data type definition for BatchJobQueue. See 'batchJobQueue' for a
-- more convenient constructor.
data BatchJobQueue =
  BatchJobQueue
  { _batchJobQueueComputeEnvironmentOrder :: [BatchJobQueueComputeEnvironmentOrder]
  , _batchJobQueueJobQueueName :: Maybe (Val Text)
  , _batchJobQueuePriority :: Val Integer
  , _batchJobQueueState :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties BatchJobQueue where
  toResourceProperties BatchJobQueue{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Batch::JobQueue"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ComputeEnvironmentOrder",) . toJSON) _batchJobQueueComputeEnvironmentOrder
        , fmap (("JobQueueName",) . toJSON) _batchJobQueueJobQueueName
        , (Just . ("Priority",) . toJSON) _batchJobQueuePriority
        , fmap (("State",) . toJSON) _batchJobQueueState
        ]
    }

-- | Constructor for 'BatchJobQueue' containing required fields as arguments.
batchJobQueue
  :: [BatchJobQueueComputeEnvironmentOrder] -- ^ 'bjqComputeEnvironmentOrder'
  -> Val Integer -- ^ 'bjqPriority'
  -> BatchJobQueue
batchJobQueue computeEnvironmentOrderarg priorityarg =
  BatchJobQueue
  { _batchJobQueueComputeEnvironmentOrder = computeEnvironmentOrderarg
  , _batchJobQueueJobQueueName = Nothing
  , _batchJobQueuePriority = priorityarg
  , _batchJobQueueState = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-computeenvironmentorder
bjqComputeEnvironmentOrder :: Lens' BatchJobQueue [BatchJobQueueComputeEnvironmentOrder]
bjqComputeEnvironmentOrder = lens _batchJobQueueComputeEnvironmentOrder (\s a -> s { _batchJobQueueComputeEnvironmentOrder = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-jobqueuename
bjqJobQueueName :: Lens' BatchJobQueue (Maybe (Val Text))
bjqJobQueueName = lens _batchJobQueueJobQueueName (\s a -> s { _batchJobQueueJobQueueName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-priority
bjqPriority :: Lens' BatchJobQueue (Val Integer)
bjqPriority = lens _batchJobQueuePriority (\s a -> s { _batchJobQueuePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-state
bjqState :: Lens' BatchJobQueue (Maybe (Val Text))
bjqState = lens _batchJobQueueState (\s a -> s { _batchJobQueueState = a })
