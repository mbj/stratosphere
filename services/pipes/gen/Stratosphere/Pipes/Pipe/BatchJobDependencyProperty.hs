module Stratosphere.Pipes.Pipe.BatchJobDependencyProperty (
        BatchJobDependencyProperty(..), mkBatchJobDependencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchJobDependencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-batchjobdependency.html>
    BatchJobDependencyProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-batchjobdependency.html#cfn-pipes-pipe-batchjobdependency-jobid>
                                jobId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-batchjobdependency.html#cfn-pipes-pipe-batchjobdependency-type>
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchJobDependencyProperty :: BatchJobDependencyProperty
mkBatchJobDependencyProperty
  = BatchJobDependencyProperty
      {haddock_workaround_ = (), jobId = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties BatchJobDependencyProperty where
  toResourceProperties BatchJobDependencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.BatchJobDependency",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JobId" Prelude.<$> jobId,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON BatchJobDependencyProperty where
  toJSON BatchJobDependencyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JobId" Prelude.<$> jobId,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "JobId" BatchJobDependencyProperty where
  type PropertyType "JobId" BatchJobDependencyProperty = Value Prelude.Text
  set newValue BatchJobDependencyProperty {..}
    = BatchJobDependencyProperty {jobId = Prelude.pure newValue, ..}
instance Property "Type" BatchJobDependencyProperty where
  type PropertyType "Type" BatchJobDependencyProperty = Value Prelude.Text
  set newValue BatchJobDependencyProperty {..}
    = BatchJobDependencyProperty {type' = Prelude.pure newValue, ..}