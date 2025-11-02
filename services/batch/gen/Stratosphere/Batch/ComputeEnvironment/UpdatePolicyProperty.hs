module Stratosphere.Batch.ComputeEnvironment.UpdatePolicyProperty (
        UpdatePolicyProperty(..), mkUpdatePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdatePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-updatepolicy.html>
    UpdatePolicyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-updatepolicy.html#cfn-batch-computeenvironment-updatepolicy-jobexecutiontimeoutminutes>
                          jobExecutionTimeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-updatepolicy.html#cfn-batch-computeenvironment-updatepolicy-terminatejobsonupdate>
                          terminateJobsOnUpdate :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdatePolicyProperty :: UpdatePolicyProperty
mkUpdatePolicyProperty
  = UpdatePolicyProperty
      {haddock_workaround_ = (),
       jobExecutionTimeoutMinutes = Prelude.Nothing,
       terminateJobsOnUpdate = Prelude.Nothing}
instance ToResourceProperties UpdatePolicyProperty where
  toResourceProperties UpdatePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.UpdatePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JobExecutionTimeoutMinutes"
                              Prelude.<$> jobExecutionTimeoutMinutes,
                            (JSON..=) "TerminateJobsOnUpdate"
                              Prelude.<$> terminateJobsOnUpdate])}
instance JSON.ToJSON UpdatePolicyProperty where
  toJSON UpdatePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JobExecutionTimeoutMinutes"
                 Prelude.<$> jobExecutionTimeoutMinutes,
               (JSON..=) "TerminateJobsOnUpdate"
                 Prelude.<$> terminateJobsOnUpdate]))
instance Property "JobExecutionTimeoutMinutes" UpdatePolicyProperty where
  type PropertyType "JobExecutionTimeoutMinutes" UpdatePolicyProperty = Value Prelude.Integer
  set newValue UpdatePolicyProperty {..}
    = UpdatePolicyProperty
        {jobExecutionTimeoutMinutes = Prelude.pure newValue, ..}
instance Property "TerminateJobsOnUpdate" UpdatePolicyProperty where
  type PropertyType "TerminateJobsOnUpdate" UpdatePolicyProperty = Value Prelude.Bool
  set newValue UpdatePolicyProperty {..}
    = UpdatePolicyProperty
        {terminateJobsOnUpdate = Prelude.pure newValue, ..}