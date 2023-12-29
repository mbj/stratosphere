module Stratosphere.Batch.JobQueue (
        module Exports, JobQueue(..), mkJobQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobQueue.ComputeEnvironmentOrderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobQueue
  = JobQueue {computeEnvironmentOrder :: [ComputeEnvironmentOrderProperty],
              jobQueueName :: (Prelude.Maybe (Value Prelude.Text)),
              priority :: (Value Prelude.Integer),
              schedulingPolicyArn :: (Prelude.Maybe (Value Prelude.Text)),
              state :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobQueue ::
  [ComputeEnvironmentOrderProperty]
  -> Value Prelude.Integer -> JobQueue
mkJobQueue computeEnvironmentOrder priority
  = JobQueue
      {computeEnvironmentOrder = computeEnvironmentOrder,
       priority = priority, jobQueueName = Prelude.Nothing,
       schedulingPolicyArn = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties JobQueue where
  toResourceProperties JobQueue {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobQueue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputeEnvironmentOrder" JSON..= computeEnvironmentOrder,
                            "Priority" JSON..= priority]
                           (Prelude.catMaybes
                              [(JSON..=) "JobQueueName" Prelude.<$> jobQueueName,
                               (JSON..=) "SchedulingPolicyArn" Prelude.<$> schedulingPolicyArn,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON JobQueue where
  toJSON JobQueue {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputeEnvironmentOrder" JSON..= computeEnvironmentOrder,
               "Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "JobQueueName" Prelude.<$> jobQueueName,
                  (JSON..=) "SchedulingPolicyArn" Prelude.<$> schedulingPolicyArn,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComputeEnvironmentOrder" JobQueue where
  type PropertyType "ComputeEnvironmentOrder" JobQueue = [ComputeEnvironmentOrderProperty]
  set newValue JobQueue {..}
    = JobQueue {computeEnvironmentOrder = newValue, ..}
instance Property "JobQueueName" JobQueue where
  type PropertyType "JobQueueName" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {jobQueueName = Prelude.pure newValue, ..}
instance Property "Priority" JobQueue where
  type PropertyType "Priority" JobQueue = Value Prelude.Integer
  set newValue JobQueue {..} = JobQueue {priority = newValue, ..}
instance Property "SchedulingPolicyArn" JobQueue where
  type PropertyType "SchedulingPolicyArn" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {schedulingPolicyArn = Prelude.pure newValue, ..}
instance Property "State" JobQueue where
  type PropertyType "State" JobQueue = Value Prelude.Text
  set newValue JobQueue {..}
    = JobQueue {state = Prelude.pure newValue, ..}
instance Property "Tags" JobQueue where
  type PropertyType "Tags" JobQueue = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue JobQueue {..}
    = JobQueue {tags = Prelude.pure newValue, ..}