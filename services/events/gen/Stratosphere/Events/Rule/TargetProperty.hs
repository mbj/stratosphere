module Stratosphere.Events.Rule.TargetProperty (
        module Exports, TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Rule.AppSyncParametersProperty as Exports
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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html>
    TargetProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-appsyncparameters>
                    appSyncParameters :: (Prelude.Maybe AppSyncParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-arn>
                    arn :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-batchparameters>
                    batchParameters :: (Prelude.Maybe BatchParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-deadletterconfig>
                    deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-ecsparameters>
                    ecsParameters :: (Prelude.Maybe EcsParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-httpparameters>
                    httpParameters :: (Prelude.Maybe HttpParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-id>
                    id :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-input>
                    input :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputpath>
                    inputPath :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputtransformer>
                    inputTransformer :: (Prelude.Maybe InputTransformerProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-kinesisparameters>
                    kinesisParameters :: (Prelude.Maybe KinesisParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-redshiftdataparameters>
                    redshiftDataParameters :: (Prelude.Maybe RedshiftDataParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-retrypolicy>
                    retryPolicy :: (Prelude.Maybe RetryPolicyProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-rolearn>
                    roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-runcommandparameters>
                    runCommandParameters :: (Prelude.Maybe RunCommandParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sagemakerpipelineparameters>
                    sageMakerPipelineParameters :: (Prelude.Maybe SageMakerPipelineParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sqsparameters>
                    sqsParameters :: (Prelude.Maybe SqsParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TargetProperty
mkTargetProperty arn id
  = TargetProperty
      {haddock_workaround_ = (), arn = arn, id = id,
       appSyncParameters = Prelude.Nothing,
       batchParameters = Prelude.Nothing,
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
                              [(JSON..=) "AppSyncParameters" Prelude.<$> appSyncParameters,
                               (JSON..=) "BatchParameters" Prelude.<$> batchParameters,
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
                 [(JSON..=) "AppSyncParameters" Prelude.<$> appSyncParameters,
                  (JSON..=) "BatchParameters" Prelude.<$> batchParameters,
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
instance Property "AppSyncParameters" TargetProperty where
  type PropertyType "AppSyncParameters" TargetProperty = AppSyncParametersProperty
  set newValue TargetProperty {..}
    = TargetProperty {appSyncParameters = Prelude.pure newValue, ..}
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