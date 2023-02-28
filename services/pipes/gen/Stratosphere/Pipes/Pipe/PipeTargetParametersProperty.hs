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
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetParametersProperty
  = PipeTargetParametersProperty {batchJobParameters :: (Prelude.Maybe PipeTargetBatchJobParametersProperty),
                                  cloudWatchLogsParameters :: (Prelude.Maybe PipeTargetCloudWatchLogsParametersProperty),
                                  ecsTaskParameters :: (Prelude.Maybe PipeTargetEcsTaskParametersProperty),
                                  eventBridgeEventBusParameters :: (Prelude.Maybe PipeTargetEventBridgeEventBusParametersProperty),
                                  httpParameters :: (Prelude.Maybe PipeTargetHttpParametersProperty),
                                  inputTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                                  kinesisStreamParameters :: (Prelude.Maybe PipeTargetKinesisStreamParametersProperty),
                                  lambdaFunctionParameters :: (Prelude.Maybe PipeTargetLambdaFunctionParametersProperty),
                                  redshiftDataParameters :: (Prelude.Maybe PipeTargetRedshiftDataParametersProperty),
                                  sageMakerPipelineParameters :: (Prelude.Maybe PipeTargetSageMakerPipelineParametersProperty),
                                  sqsQueueParameters :: (Prelude.Maybe PipeTargetSqsQueueParametersProperty),
                                  stepFunctionStateMachineParameters :: (Prelude.Maybe PipeTargetStateMachineParametersProperty)}
mkPipeTargetParametersProperty :: PipeTargetParametersProperty
mkPipeTargetParametersProperty
  = PipeTargetParametersProperty
      {batchJobParameters = Prelude.Nothing,
       cloudWatchLogsParameters = Prelude.Nothing,
       ecsTaskParameters = Prelude.Nothing,
       eventBridgeEventBusParameters = Prelude.Nothing,
       httpParameters = Prelude.Nothing, inputTemplate = Prelude.Nothing,
       kinesisStreamParameters = Prelude.Nothing,
       lambdaFunctionParameters = Prelude.Nothing,
       redshiftDataParameters = Prelude.Nothing,
       sageMakerPipelineParameters = Prelude.Nothing,
       sqsQueueParameters = Prelude.Nothing,
       stepFunctionStateMachineParameters = Prelude.Nothing}
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
                              Prelude.<$> stepFunctionStateMachineParameters])}
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
                 Prelude.<$> stepFunctionStateMachineParameters]))
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