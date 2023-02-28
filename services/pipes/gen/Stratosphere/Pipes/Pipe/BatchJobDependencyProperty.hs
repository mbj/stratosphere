module Stratosphere.Pipes.Pipe.BatchJobDependencyProperty (
        BatchJobDependencyProperty(..), mkBatchJobDependencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchJobDependencyProperty
  = BatchJobDependencyProperty {jobId :: (Prelude.Maybe (Value Prelude.Text)),
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
mkBatchJobDependencyProperty :: BatchJobDependencyProperty
mkBatchJobDependencyProperty
  = BatchJobDependencyProperty
      {jobId = Prelude.Nothing, type' = Prelude.Nothing}
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