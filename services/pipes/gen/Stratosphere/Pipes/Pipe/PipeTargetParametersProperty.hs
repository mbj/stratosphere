module Stratosphere.Pipes.Pipe.PipeTargetParametersProperty (
        module Exports, PipeTargetParametersProperty(..),
        mkPipeTargetParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetBatchJobParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetCloudWatchLogsParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetEcsTaskParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetEventBridgeEventBusParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetHttpParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetKinesisStreamParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetLambdaFunctionParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetRedshiftDataParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetSageMakerPipelineParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetSqsQueueParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetStateMachineParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetTimestreamParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html>
    PipeTargetParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-batchjobparameters>
                                  batchJobParameters :: (Prelude.Maybe PipeTargetBatchJobParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-cloudwatchlogsparameters>
                                  cloudWatchLogsParameters :: (Prelude.Maybe PipeTargetCloudWatchLogsParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-ecstaskparameters>
                                  ecsTaskParameters :: (Prelude.Maybe PipeTargetEcsTaskParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-eventbridgeeventbusparameters>
                                  eventBridgeEventBusParameters :: (Prelude.Maybe PipeTargetEventBridgeEventBusParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-httpparameters>
                                  httpParameters :: (Prelude.Maybe PipeTargetHttpParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-inputtemplate>
                                  inputTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-kinesisstreamparameters>
                                  kinesisStreamParameters :: (Prelude.Maybe PipeTargetKinesisStreamParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-lambdafunctionparameters>
                                  lambdaFunctionParameters :: (Prelude.Maybe PipeTargetLambdaFunctionParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-redshiftdataparameters>
                                  redshiftDataParameters :: (Prelude.Maybe PipeTargetRedshiftDataParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-sagemakerpipelineparameters>
                                  sageMakerPipelineParameters :: (Prelude.Maybe PipeTargetSageMakerPipelineParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-sqsqueueparameters>
                                  sqsQueueParameters :: (Prelude.Maybe PipeTargetSqsQueueParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-stepfunctionstatemachineparameters>
                                  stepFunctionStateMachineParameters :: (Prelude.Maybe PipeTargetStateMachineParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-timestreamparameters>
                                  timestreamParameters :: (Prelude.Maybe PipeTargetTimestreamParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetParametersProperty :: PipeTargetParametersProperty
mkPipeTargetParametersProperty
  = PipeTargetParametersProperty
      {haddock_workaround_ = (), batchJobParameters = Prelude.Nothing,
       cloudWatchLogsParameters = Prelude.Nothing,
       ecsTaskParameters = Prelude.Nothing,
       eventBridgeEventBusParameters = Prelude.Nothing,
       httpParameters = Prelude.Nothing, inputTemplate = Prelude.Nothing,
       kinesisStreamParameters = Prelude.Nothing,
       lambdaFunctionParameters = Prelude.Nothing,
       redshiftDataParameters = Prelude.Nothing,
       sageMakerPipelineParameters = Prelude.Nothing,
       sqsQueueParameters = Prelude.Nothing,
       stepFunctionStateMachineParameters = Prelude.Nothing,
       timestreamParameters = Prelude.Nothing}
instance ToResourceProperties PipeTargetParametersProperty where
  toResourceProperties PipeTargetParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BatchJobParameters" Prelude.<$> batchJobParameters,
                            (JSON..=) "CloudWatchLogsParameters"
                              Prelude.<$> cloudWatchLogsParameters,
                            (JSON..=) "EcsTaskParameters" Prelude.<$> ecsTaskParameters,
                            (JSON..=) "EventBridgeEventBusParameters"
                              Prelude.<$> eventBridgeEventBusParameters,
                            (JSON..=) "HttpParameters" Prelude.<$> httpParameters,
                            (JSON..=) "InputTemplate" Prelude.<$> inputTemplate,
                            (JSON..=) "KinesisStreamParameters"
                              Prelude.<$> kinesisStreamParameters,
                            (JSON..=) "LambdaFunctionParameters"
                              Prelude.<$> lambdaFunctionParameters,
                            (JSON..=) "RedshiftDataParameters"
                              Prelude.<$> redshiftDataParameters,
                            (JSON..=) "SageMakerPipelineParameters"
                              Prelude.<$> sageMakerPipelineParameters,
                            (JSON..=) "SqsQueueParameters" Prelude.<$> sqsQueueParameters,
                            (JSON..=) "StepFunctionStateMachineParameters"
                              Prelude.<$> stepFunctionStateMachineParameters,
                            (JSON..=) "TimestreamParameters"
                              Prelude.<$> timestreamParameters])}
instance JSON.ToJSON PipeTargetParametersProperty where
  toJSON PipeTargetParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BatchJobParameters" Prelude.<$> batchJobParameters,
               (JSON..=) "CloudWatchLogsParameters"
                 Prelude.<$> cloudWatchLogsParameters,
               (JSON..=) "EcsTaskParameters" Prelude.<$> ecsTaskParameters,
               (JSON..=) "EventBridgeEventBusParameters"
                 Prelude.<$> eventBridgeEventBusParameters,
               (JSON..=) "HttpParameters" Prelude.<$> httpParameters,
               (JSON..=) "InputTemplate" Prelude.<$> inputTemplate,
               (JSON..=) "KinesisStreamParameters"
                 Prelude.<$> kinesisStreamParameters,
               (JSON..=) "LambdaFunctionParameters"
                 Prelude.<$> lambdaFunctionParameters,
               (JSON..=) "RedshiftDataParameters"
                 Prelude.<$> redshiftDataParameters,
               (JSON..=) "SageMakerPipelineParameters"
                 Prelude.<$> sageMakerPipelineParameters,
               (JSON..=) "SqsQueueParameters" Prelude.<$> sqsQueueParameters,
               (JSON..=) "StepFunctionStateMachineParameters"
                 Prelude.<$> stepFunctionStateMachineParameters,
               (JSON..=) "TimestreamParameters"
                 Prelude.<$> timestreamParameters]))
instance Property "BatchJobParameters" PipeTargetParametersProperty where
  type PropertyType "BatchJobParameters" PipeTargetParametersProperty = PipeTargetBatchJobParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {batchJobParameters = Prelude.pure newValue, ..}
instance Property "CloudWatchLogsParameters" PipeTargetParametersProperty where
  type PropertyType "CloudWatchLogsParameters" PipeTargetParametersProperty = PipeTargetCloudWatchLogsParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {cloudWatchLogsParameters = Prelude.pure newValue, ..}
instance Property "EcsTaskParameters" PipeTargetParametersProperty where
  type PropertyType "EcsTaskParameters" PipeTargetParametersProperty = PipeTargetEcsTaskParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {ecsTaskParameters = Prelude.pure newValue, ..}
instance Property "EventBridgeEventBusParameters" PipeTargetParametersProperty where
  type PropertyType "EventBridgeEventBusParameters" PipeTargetParametersProperty = PipeTargetEventBridgeEventBusParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {eventBridgeEventBusParameters = Prelude.pure newValue, ..}
instance Property "HttpParameters" PipeTargetParametersProperty where
  type PropertyType "HttpParameters" PipeTargetParametersProperty = PipeTargetHttpParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {httpParameters = Prelude.pure newValue, ..}
instance Property "InputTemplate" PipeTargetParametersProperty where
  type PropertyType "InputTemplate" PipeTargetParametersProperty = Value Prelude.Text
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {inputTemplate = Prelude.pure newValue, ..}
instance Property "KinesisStreamParameters" PipeTargetParametersProperty where
  type PropertyType "KinesisStreamParameters" PipeTargetParametersProperty = PipeTargetKinesisStreamParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {kinesisStreamParameters = Prelude.pure newValue, ..}
instance Property "LambdaFunctionParameters" PipeTargetParametersProperty where
  type PropertyType "LambdaFunctionParameters" PipeTargetParametersProperty = PipeTargetLambdaFunctionParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {lambdaFunctionParameters = Prelude.pure newValue, ..}
instance Property "RedshiftDataParameters" PipeTargetParametersProperty where
  type PropertyType "RedshiftDataParameters" PipeTargetParametersProperty = PipeTargetRedshiftDataParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {redshiftDataParameters = Prelude.pure newValue, ..}
instance Property "SageMakerPipelineParameters" PipeTargetParametersProperty where
  type PropertyType "SageMakerPipelineParameters" PipeTargetParametersProperty = PipeTargetSageMakerPipelineParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {sageMakerPipelineParameters = Prelude.pure newValue, ..}
instance Property "SqsQueueParameters" PipeTargetParametersProperty where
  type PropertyType "SqsQueueParameters" PipeTargetParametersProperty = PipeTargetSqsQueueParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {sqsQueueParameters = Prelude.pure newValue, ..}
instance Property "StepFunctionStateMachineParameters" PipeTargetParametersProperty where
  type PropertyType "StepFunctionStateMachineParameters" PipeTargetParametersProperty = PipeTargetStateMachineParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {stepFunctionStateMachineParameters = Prelude.pure newValue, ..}
instance Property "TimestreamParameters" PipeTargetParametersProperty where
  type PropertyType "TimestreamParameters" PipeTargetParametersProperty = PipeTargetTimestreamParametersProperty
  set newValue PipeTargetParametersProperty {..}
    = PipeTargetParametersProperty
        {timestreamParameters = Prelude.pure newValue, ..}