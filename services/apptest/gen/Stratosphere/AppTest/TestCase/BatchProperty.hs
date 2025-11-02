module Stratosphere.AppTest.TestCase.BatchProperty (
        BatchProperty(..), mkBatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-batch.html>
    BatchProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-batch.html#cfn-apptest-testcase-batch-batchjobname>
                   batchJobName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-batch.html#cfn-apptest-testcase-batch-batchjobparameters>
                   batchJobParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-batch.html#cfn-apptest-testcase-batch-exportdatasetnames>
                   exportDataSetNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchProperty :: Value Prelude.Text -> BatchProperty
mkBatchProperty batchJobName
  = BatchProperty
      {haddock_workaround_ = (), batchJobName = batchJobName,
       batchJobParameters = Prelude.Nothing,
       exportDataSetNames = Prelude.Nothing}
instance ToResourceProperties BatchProperty where
  toResourceProperties BatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.Batch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BatchJobName" JSON..= batchJobName]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchJobParameters" Prelude.<$> batchJobParameters,
                               (JSON..=) "ExportDataSetNames" Prelude.<$> exportDataSetNames]))}
instance JSON.ToJSON BatchProperty where
  toJSON BatchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BatchJobName" JSON..= batchJobName]
              (Prelude.catMaybes
                 [(JSON..=) "BatchJobParameters" Prelude.<$> batchJobParameters,
                  (JSON..=) "ExportDataSetNames" Prelude.<$> exportDataSetNames])))
instance Property "BatchJobName" BatchProperty where
  type PropertyType "BatchJobName" BatchProperty = Value Prelude.Text
  set newValue BatchProperty {..}
    = BatchProperty {batchJobName = newValue, ..}
instance Property "BatchJobParameters" BatchProperty where
  type PropertyType "BatchJobParameters" BatchProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue BatchProperty {..}
    = BatchProperty {batchJobParameters = Prelude.pure newValue, ..}
instance Property "ExportDataSetNames" BatchProperty where
  type PropertyType "ExportDataSetNames" BatchProperty = ValueList Prelude.Text
  set newValue BatchProperty {..}
    = BatchProperty {exportDataSetNames = Prelude.pure newValue, ..}