module Stratosphere.Events.Rule.TargetProperty (
        module Exports, TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Rule.BatchParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.DeadLetterConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.EcsParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.HttpParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.InputTransformerProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.KinesisParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.RedshiftDataParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.RetryPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.RunCommandParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.SageMakerPipelineParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.SqsParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetProperty
  = TargetProperty {arn :: (Value Prelude.Text),
                    batchParameters :: (Prelude.Maybe BatchParametersProperty),
                    deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
                    ecsParameters :: (Prelude.Maybe EcsParametersProperty),
                    httpParameters :: (Prelude.Maybe HttpParametersProperty),
                    id :: (Value Prelude.Text),
                    input :: (Prelude.Maybe (Value Prelude.Text)),
                    inputPath :: (Prelude.Maybe (Value Prelude.Text)),
                    inputTransformer :: (Prelude.Maybe InputTransformerProperty),
                    kinesisParameters :: (Prelude.Maybe KinesisParametersProperty),
                    redshiftDataParameters :: (Prelude.Maybe RedshiftDataParametersProperty),
                    retryPolicy :: (Prelude.Maybe RetryPolicyProperty),
                    roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    runCommandParameters :: (Prelude.Maybe RunCommandParametersProperty),
                    sageMakerPipelineParameters :: (Prelude.Maybe SageMakerPipelineParametersProperty),
                    sqsParameters :: (Prelude.Maybe SqsParametersProperty)}
mkTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TargetProperty
mkTargetProperty arn id
  = TargetProperty
      {arn = arn, id = id, batchParameters = Prelude.Nothing,
       deadLetterConfig = Prelude.Nothing,
       ecsParameters = Prelude.Nothing, httpParameters = Prelude.Nothing,
       input = Prelude.Nothing, inputPath = Prelude.Nothing,
       inputTransformer = Prelude.Nothing,
       kinesisParameters = Prelude.Nothing,
       redshiftDataParameters = Prelude.Nothing,
       retryPolicy = Prelude.Nothing, roleArn = Prelude.Nothing,
       runCommandParameters = Prelude.Nothing,
       sageMakerPipelineParameters = Prelude.Nothing,
       sqsParameters = Prelude.Nothing}
instance ToResourceProperties TargetProperty where
  toResourceProperties TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.Target",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn, "Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchParameters" Prelude.<$> batchParameters,
                               (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                               (JSON..=) "EcsParameters" Prelude.<$> ecsParameters,
                               (JSON..=) "HttpParameters" Prelude.<$> httpParameters,
                               (JSON..=) "Input" Prelude.<$> input,
                               (JSON..=) "InputPath" Prelude.<$> inputPath,
                               (JSON..=) "InputTransformer" Prelude.<$> inputTransformer,
                               (JSON..=) "KinesisParameters" Prelude.<$> kinesisParameters,
                               (JSON..=) "RedshiftDataParameters"
                                 Prelude.<$> redshiftDataParameters,
                               (JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "RunCommandParameters" Prelude.<$> runCommandParameters,
                               (JSON..=) "SageMakerPipelineParameters"
                                 Prelude.<$> sageMakerPipelineParameters,
                               (JSON..=) "SqsParameters" Prelude.<$> sqsParameters]))}
instance JSON.ToJSON TargetProperty where
  toJSON TargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn, "Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "BatchParameters" Prelude.<$> batchParameters,
                  (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                  (JSON..=) "EcsParameters" Prelude.<$> ecsParameters,
                  (JSON..=) "HttpParameters" Prelude.<$> httpParameters,
                  (JSON..=) "Input" Prelude.<$> input,
                  (JSON..=) "InputPath" Prelude.<$> inputPath,
                  (JSON..=) "InputTransformer" Prelude.<$> inputTransformer,
                  (JSON..=) "KinesisParameters" Prelude.<$> kinesisParameters,
                  (JSON..=) "RedshiftDataParameters"
                    Prelude.<$> redshiftDataParameters,
                  (JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "RunCommandParameters" Prelude.<$> runCommandParameters,
                  (JSON..=) "SageMakerPipelineParameters"
                    Prelude.<$> sageMakerPipelineParameters,
                  (JSON..=) "SqsParameters" Prelude.<$> sqsParameters])))
instance Property "Arn" TargetProperty where
  type PropertyType "Arn" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {arn = newValue, ..}
instance Property "BatchParameters" TargetProperty where
  type PropertyType "BatchParameters" TargetProperty = BatchParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {batchParameters = Prelude.pure newValue, ..}
instance Property "DeadLetterConfig" TargetProperty where
  type PropertyType "DeadLetterConfig" TargetProperty = DeadLetterConfigProperty
  set newValue TargetProperty {..}
    = TargetProperty {deadLetterConfig = Prelude.pure newValue, ..}
instance Property "EcsParameters" TargetProperty where
  type PropertyType "EcsParameters" TargetProperty = EcsParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {ecsParameters = Prelude.pure newValue, ..}
instance Property "HttpParameters" TargetProperty where
  type PropertyType "HttpParameters" TargetProperty = HttpParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {httpParameters = Prelude.pure newValue, ..}
instance Property "Id" TargetProperty where
  type PropertyType "Id" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {id = newValue, ..}
instance Property "Input" TargetProperty where
  type PropertyType "Input" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {input = Prelude.pure newValue, ..}
instance Property "InputPath" TargetProperty where
  type PropertyType "InputPath" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {inputPath = Prelude.pure newValue, ..}
instance Property "InputTransformer" TargetProperty where
  type PropertyType "InputTransformer" TargetProperty = InputTransformerProperty
  set newValue TargetProperty {..}
    = TargetProperty {inputTransformer = Prelude.pure newValue, ..}
instance Property "KinesisParameters" TargetProperty where
  type PropertyType "KinesisParameters" TargetProperty = KinesisParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {kinesisParameters = Prelude.pure newValue, ..}
instance Property "RedshiftDataParameters" TargetProperty where
  type PropertyType "RedshiftDataParameters" TargetProperty = RedshiftDataParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty
        {redshiftDataParameters = Prelude.pure newValue, ..}
instance Property "RetryPolicy" TargetProperty where
  type PropertyType "RetryPolicy" TargetProperty = RetryPolicyProperty
  set newValue TargetProperty {..}
    = TargetProperty {retryPolicy = Prelude.pure newValue, ..}
instance Property "RoleArn" TargetProperty where
  type PropertyType "RoleArn" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {roleArn = Prelude.pure newValue, ..}
instance Property "RunCommandParameters" TargetProperty where
  type PropertyType "RunCommandParameters" TargetProperty = RunCommandParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {runCommandParameters = Prelude.pure newValue, ..}
instance Property "SageMakerPipelineParameters" TargetProperty where
  type PropertyType "SageMakerPipelineParameters" TargetProperty = SageMakerPipelineParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty
        {sageMakerPipelineParameters = Prelude.pure newValue, ..}
instance Property "SqsParameters" TargetProperty where
  type PropertyType "SqsParameters" TargetProperty = SqsParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {sqsParameters = Prelude.pure newValue, ..}