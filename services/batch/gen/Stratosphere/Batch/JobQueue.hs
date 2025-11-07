module Stratosphere.Batch.JobQueue (
        module Exports, JobQueue(..), mkJobQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobQueue.ComputeEnvironmentOrderProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobQueue.JobStateTimeLimitActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobQueue.ServiceEnvironmentOrderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobQueue
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html>
    JobQueue {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-computeenvironmentorder>
              computeEnvironmentOrder :: (Prelude.Maybe [ComputeEnvironmentOrderProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-jobqueuename>
              jobQueueName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-jobqueuetype>
              jobQueueType :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-jobstatetimelimitactions>
              jobStateTimeLimitActions :: (Prelude.Maybe [JobStateTimeLimitActionProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-priority>
              priority :: (Value Prelude.Integer),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-schedulingpolicyarn>
              schedulingPolicyArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-serviceenvironmentorder>
              serviceEnvironmentOrder :: (Prelude.Maybe [ServiceEnvironmentOrderProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-state>
              state :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-tags>
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobQueue :: Value Prelude.Integer -> JobQueue
mkJobQueue priority
  = JobQueue
      {haddock_workaround_ = (), priority = priority,
       computeEnvironmentOrder = Prelude.Nothing,
       jobQueueName = Prelude.Nothing, jobQueueType = Prelude.Nothing,
       jobStateTimeLimitActions = Prelude.Nothing,
       schedulingPolicyArn = Prelude.Nothing,
       serviceEnvironmentOrder = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties JobQueue where
  toResourceProperties JobQueue {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobQueue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Priority" JSON..= priority]
                           (Prelude.catMaybes
                              [(JSON..=) "ComputeEnvironmentOrder"
                                 Prelude.<$> computeEnvironmentOrder,
                               (JSON..=) "JobQueueName" Prelude.<$> jobQueueName,
                               (JSON..=) "JobQueueType" Prelude.<$> jobQueueType,
                               (JSON..=) "JobStateTimeLimitActions"
                                 Prelude.<$> jobStateTimeLimitActions,
                               (JSON..=) "SchedulingPolicyArn" Prelude.<$> schedulingPolicyArn,
                               (JSON..=) "ServiceEnvironmentOrder"
                                 Prelude.<$> serviceEnvironmentOrder,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON JobQueue where
  toJSON JobQueue {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "ComputeEnvironmentOrder"
                    Prelude.<$> computeEnvironmentOrder,
                  (JSON..=) "JobQueueName" Prelude.<$> jobQueueName,
                  (JSON..=) "JobQueueType" Prelude.<$> jobQueueType,
                  (JSON..=) "JobStateTimeLimitActions"
                    Prelude.<$> jobStateTimeLimitActions,
                  (JSON..=) "SchedulingPolicyArn" Prelude.<$> schedulingPolicyArn,
                  (JSON..=) "ServiceEnvironmentOrder"
                    Prelude.<$> serviceEnvironmentOrder,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComputeEnvironmentOrder" JobQueue where
  type PropertyType "ComputeEnvironmentOrder" JobQueue = [ComputeEnvironmentOrderProperty]
  set newValue JobQueue {..}
    = JobQueue {computeEnvironmentOrder = Prelude.pure newValue, ..}
instance Property "JobQueueName" JobQueue where
  type PropertyType "JobQueueName" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {jobQueueName = Prelude.pure newValue, ..}
instance Property "JobQueueType" JobQueue where
  type PropertyType "JobQueueType" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {jobQueueType = Prelude.pure newValue, ..}
instance Property "JobStateTimeLimitActions" JobQueue where
  type PropertyType "JobStateTimeLimitActions" JobQueue = [JobStateTimeLimitActionProperty]
  set newValue JobQueue {..}
    = JobQueue {jobStateTimeLimitActions = Prelude.pure newValue, ..}
instance Property "Priority" JobQueue where
  type PropertyType "Priority" JobQueue = Value Prelude.Integer
  set newValue JobQueue {..} = JobQueue {priority = newValue, ..}
instance Property "SchedulingPolicyArn" JobQueue where
  type PropertyType "SchedulingPolicyArn" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {schedulingPolicyArn = Prelude.pure newValue, ..}
instance Property "ServiceEnvironmentOrder" JobQueue where
  type PropertyType "ServiceEnvironmentOrder" JobQueue = [ServiceEnvironmentOrderProperty]
  set newValue JobQueue {..}
    = JobQueue {serviceEnvironmentOrder = Prelude.pure newValue, ..}
instance Property "State" JobQueue where
  type PropertyType "State" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {state = Prelude.pure newValue, ..}
instance Property "Tags" JobQueue where
  type PropertyType "Tags" JobQueue = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue JobQueue {..}
    = JobQueue {tags = Prelude.pure newValue, ..}