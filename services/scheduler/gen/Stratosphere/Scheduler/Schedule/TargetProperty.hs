module Stratosphere.Scheduler.Schedule.TargetProperty (
        module Exports, TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.DeadLetterConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.EcsParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.EventBridgeParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.KinesisParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.RetryPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.SageMakerPipelineParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.SqsParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetProperty
  = TargetProperty {arn :: (Value Prelude.Text),
                    deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
                    ecsParameters :: (Prelude.Maybe EcsParametersProperty),
                    eventBridgeParameters :: (Prelude.Maybe EventBridgeParametersProperty),
                    input :: (Prelude.Maybe (Value Prelude.Text)),
                    kinesisParameters :: (Prelude.Maybe KinesisParametersProperty),
                    retryPolicy :: (Prelude.Maybe RetryPolicyProperty),
                    roleArn :: (Value Prelude.Text),
                    sageMakerPipelineParameters :: (Prelude.Maybe SageMakerPipelineParametersProperty),
                    sqsParameters :: (Prelude.Maybe SqsParametersProperty)}
mkTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TargetProperty
mkTargetProperty arn roleArn
  = TargetProperty
      {arn = arn, roleArn = roleArn, deadLetterConfig = Prelude.Nothing,
       ecsParameters = Prelude.Nothing,
       eventBridgeParameters = Prelude.Nothing, input = Prelude.Nothing,
       kinesisParameters = Prelude.Nothing, retryPolicy = Prelude.Nothing,
       sageMakerPipelineParameters = Prelude.Nothing,
       sqsParameters = Prelude.Nothing}
instance ToResourceProperties TargetProperty where
  toResourceProperties TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.Target",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                               (JSON..=) "EcsParameters" Prelude.<$> ecsParameters,
                               (JSON..=) "EventBridgeParameters"
                                 Prelude.<$> eventBridgeParameters,
                               (JSON..=) "Input" Prelude.<$> input,
                               (JSON..=) "KinesisParameters" Prelude.<$> kinesisParameters,
                               (JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                               (JSON..=) "SageMakerPipelineParameters"
                                 Prelude.<$> sageMakerPipelineParameters,
                               (JSON..=) "SqsParameters" Prelude.<$> sqsParameters]))}
instance JSON.ToJSON TargetProperty where
  toJSON TargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                  (JSON..=) "EcsParameters" Prelude.<$> ecsParameters,
                  (JSON..=) "EventBridgeParameters"
                    Prelude.<$> eventBridgeParameters,
                  (JSON..=) "Input" Prelude.<$> input,
                  (JSON..=) "KinesisParameters" Prelude.<$> kinesisParameters,
                  (JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                  (JSON..=) "SageMakerPipelineParameters"
                    Prelude.<$> sageMakerPipelineParameters,
                  (JSON..=) "SqsParameters" Prelude.<$> sqsParameters])))
instance Property "Arn" TargetProperty where
  type PropertyType "Arn" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {arn = newValue, ..}
instance Property "DeadLetterConfig" TargetProperty where
  type PropertyType "DeadLetterConfig" TargetProperty = DeadLetterConfigProperty
  set newValue TargetProperty {..}
    = TargetProperty {deadLetterConfig = Prelude.pure newValue, ..}
instance Property "EcsParameters" TargetProperty where
  type PropertyType "EcsParameters" TargetProperty = EcsParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {ecsParameters = Prelude.pure newValue, ..}
instance Property "EventBridgeParameters" TargetProperty where
  type PropertyType "EventBridgeParameters" TargetProperty = EventBridgeParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty
        {eventBridgeParameters = Prelude.pure newValue, ..}
instance Property "Input" TargetProperty where
  type PropertyType "Input" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {input = Prelude.pure newValue, ..}
instance Property "KinesisParameters" TargetProperty where
  type PropertyType "KinesisParameters" TargetProperty = KinesisParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {kinesisParameters = Prelude.pure newValue, ..}
instance Property "RetryPolicy" TargetProperty where
  type PropertyType "RetryPolicy" TargetProperty = RetryPolicyProperty
  set newValue TargetProperty {..}
    = TargetProperty {retryPolicy = Prelude.pure newValue, ..}
instance Property "RoleArn" TargetProperty where
  type PropertyType "RoleArn" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {roleArn = newValue, ..}
instance Property "SageMakerPipelineParameters" TargetProperty where
  type PropertyType "SageMakerPipelineParameters" TargetProperty = SageMakerPipelineParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty
        {sageMakerPipelineParameters = Prelude.pure newValue, ..}
instance Property "SqsParameters" TargetProperty where
  type PropertyType "SqsParameters" TargetProperty = SqsParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {sqsParameters = Prelude.pure newValue, ..}