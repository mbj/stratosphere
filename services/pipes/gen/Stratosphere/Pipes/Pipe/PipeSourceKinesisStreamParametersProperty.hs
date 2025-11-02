module Stratosphere.Pipes.Pipe.PipeSourceKinesisStreamParametersProperty (
        module Exports, PipeSourceKinesisStreamParametersProperty(..),
        mkPipeSourceKinesisStreamParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.DeadLetterConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceKinesisStreamParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html>
    PipeSourceKinesisStreamParametersProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-batchsize>
                                               batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-deadletterconfig>
                                               deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-maximumbatchingwindowinseconds>
                                               maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-maximumrecordageinseconds>
                                               maximumRecordAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-maximumretryattempts>
                                               maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-onpartialbatchitemfailure>
                                               onPartialBatchItemFailure :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-parallelizationfactor>
                                               parallelizationFactor :: (Prelude.Maybe (Value Prelude.Integer)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-startingposition>
                                               startingPosition :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcekinesisstreamparameters.html#cfn-pipes-pipe-pipesourcekinesisstreamparameters-startingpositiontimestamp>
                                               startingPositionTimestamp :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceKinesisStreamParametersProperty ::
  Value Prelude.Text -> PipeSourceKinesisStreamParametersProperty
mkPipeSourceKinesisStreamParametersProperty startingPosition
  = PipeSourceKinesisStreamParametersProperty
      {haddock_workaround_ = (), startingPosition = startingPosition,
       batchSize = Prelude.Nothing, deadLetterConfig = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       maximumRecordAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing,
       onPartialBatchItemFailure = Prelude.Nothing,
       parallelizationFactor = Prelude.Nothing,
       startingPositionTimestamp = Prelude.Nothing}
instance ToResourceProperties PipeSourceKinesisStreamParametersProperty where
  toResourceProperties PipeSourceKinesisStreamParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceKinesisStreamParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StartingPosition" JSON..= startingPosition]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "MaximumRecordAgeInSeconds"
                                 Prelude.<$> maximumRecordAgeInSeconds,
                               (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                               (JSON..=) "OnPartialBatchItemFailure"
                                 Prelude.<$> onPartialBatchItemFailure,
                               (JSON..=) "ParallelizationFactor"
                                 Prelude.<$> parallelizationFactor,
                               (JSON..=) "StartingPositionTimestamp"
                                 Prelude.<$> startingPositionTimestamp]))}
instance JSON.ToJSON PipeSourceKinesisStreamParametersProperty where
  toJSON PipeSourceKinesisStreamParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StartingPosition" JSON..= startingPosition]
              (Prelude.catMaybes
                 [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "MaximumRecordAgeInSeconds"
                    Prelude.<$> maximumRecordAgeInSeconds,
                  (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                  (JSON..=) "OnPartialBatchItemFailure"
                    Prelude.<$> onPartialBatchItemFailure,
                  (JSON..=) "ParallelizationFactor"
                    Prelude.<$> parallelizationFactor,
                  (JSON..=) "StartingPositionTimestamp"
                    Prelude.<$> startingPositionTimestamp])))
instance Property "BatchSize" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "BatchSize" PipeSourceKinesisStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "DeadLetterConfig" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "DeadLetterConfig" PipeSourceKinesisStreamParametersProperty = DeadLetterConfigProperty
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {deadLetterConfig = Prelude.pure newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceKinesisStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRecordAgeInSeconds" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "MaximumRecordAgeInSeconds" PipeSourceKinesisStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {maximumRecordAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "MaximumRetryAttempts" PipeSourceKinesisStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {maximumRetryAttempts = Prelude.pure newValue, ..}
instance Property "OnPartialBatchItemFailure" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "OnPartialBatchItemFailure" PipeSourceKinesisStreamParametersProperty = Value Prelude.Text
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {onPartialBatchItemFailure = Prelude.pure newValue, ..}
instance Property "ParallelizationFactor" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "ParallelizationFactor" PipeSourceKinesisStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {parallelizationFactor = Prelude.pure newValue, ..}
instance Property "StartingPosition" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "StartingPosition" PipeSourceKinesisStreamParametersProperty = Value Prelude.Text
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {startingPosition = newValue, ..}
instance Property "StartingPositionTimestamp" PipeSourceKinesisStreamParametersProperty where
  type PropertyType "StartingPositionTimestamp" PipeSourceKinesisStreamParametersProperty = Value Prelude.Text
  set newValue PipeSourceKinesisStreamParametersProperty {..}
    = PipeSourceKinesisStreamParametersProperty
        {startingPositionTimestamp = Prelude.pure newValue, ..}