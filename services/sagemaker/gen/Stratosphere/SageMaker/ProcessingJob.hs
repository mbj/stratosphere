module Stratosphere.SageMaker.ProcessingJob (
        module Exports, ProcessingJob(..), mkProcessingJob
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.AppSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.ExperimentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.NetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.ProcessingInputsObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.ProcessingOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.ProcessingResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.StoppingConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProcessingJob
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html>
    ProcessingJob {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-appspecification>
                   appSpecification :: AppSpecificationProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-environment>
                   environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-experimentconfig>
                   experimentConfig :: (Prelude.Maybe ExperimentConfigProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-networkconfig>
                   networkConfig :: (Prelude.Maybe NetworkConfigProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-processinginputs>
                   processingInputs :: (Prelude.Maybe [ProcessingInputsObjectProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-processingjobname>
                   processingJobName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-processingoutputconfig>
                   processingOutputConfig :: (Prelude.Maybe ProcessingOutputConfigProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-processingresources>
                   processingResources :: ProcessingResourcesProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-rolearn>
                   roleArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-stoppingcondition>
                   stoppingCondition :: (Prelude.Maybe StoppingConditionProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-processingjob.html#cfn-sagemaker-processingjob-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessingJob ::
  AppSpecificationProperty
  -> ProcessingResourcesProperty
     -> Value Prelude.Text -> ProcessingJob
mkProcessingJob appSpecification processingResources roleArn
  = ProcessingJob
      {haddock_workaround_ = (), appSpecification = appSpecification,
       processingResources = processingResources, roleArn = roleArn,
       environment = Prelude.Nothing, experimentConfig = Prelude.Nothing,
       networkConfig = Prelude.Nothing,
       processingInputs = Prelude.Nothing,
       processingJobName = Prelude.Nothing,
       processingOutputConfig = Prelude.Nothing,
       stoppingCondition = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ProcessingJob where
  toResourceProperties ProcessingJob {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppSpecification" JSON..= appSpecification,
                            "ProcessingResources" JSON..= processingResources,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "ExperimentConfig" Prelude.<$> experimentConfig,
                               (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                               (JSON..=) "ProcessingInputs" Prelude.<$> processingInputs,
                               (JSON..=) "ProcessingJobName" Prelude.<$> processingJobName,
                               (JSON..=) "ProcessingOutputConfig"
                                 Prelude.<$> processingOutputConfig,
                               (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ProcessingJob where
  toJSON ProcessingJob {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppSpecification" JSON..= appSpecification,
               "ProcessingResources" JSON..= processingResources,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "ExperimentConfig" Prelude.<$> experimentConfig,
                  (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                  (JSON..=) "ProcessingInputs" Prelude.<$> processingInputs,
                  (JSON..=) "ProcessingJobName" Prelude.<$> processingJobName,
                  (JSON..=) "ProcessingOutputConfig"
                    Prelude.<$> processingOutputConfig,
                  (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppSpecification" ProcessingJob where
  type PropertyType "AppSpecification" ProcessingJob = AppSpecificationProperty
  set newValue ProcessingJob {..}
    = ProcessingJob {appSpecification = newValue, ..}
instance Property "Environment" ProcessingJob where
  type PropertyType "Environment" ProcessingJob = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ProcessingJob {..}
    = ProcessingJob {environment = Prelude.pure newValue, ..}
instance Property "ExperimentConfig" ProcessingJob where
  type PropertyType "ExperimentConfig" ProcessingJob = ExperimentConfigProperty
  set newValue ProcessingJob {..}
    = ProcessingJob {experimentConfig = Prelude.pure newValue, ..}
instance Property "NetworkConfig" ProcessingJob where
  type PropertyType "NetworkConfig" ProcessingJob = NetworkConfigProperty
  set newValue ProcessingJob {..}
    = ProcessingJob {networkConfig = Prelude.pure newValue, ..}
instance Property "ProcessingInputs" ProcessingJob where
  type PropertyType "ProcessingInputs" ProcessingJob = [ProcessingInputsObjectProperty]
  set newValue ProcessingJob {..}
    = ProcessingJob {processingInputs = Prelude.pure newValue, ..}
instance Property "ProcessingJobName" ProcessingJob where
  type PropertyType "ProcessingJobName" ProcessingJob = Value Prelude.Text
  set newValue ProcessingJob {..}
    = ProcessingJob {processingJobName = Prelude.pure newValue, ..}
instance Property "ProcessingOutputConfig" ProcessingJob where
  type PropertyType "ProcessingOutputConfig" ProcessingJob = ProcessingOutputConfigProperty
  set newValue ProcessingJob {..}
    = ProcessingJob
        {processingOutputConfig = Prelude.pure newValue, ..}
instance Property "ProcessingResources" ProcessingJob where
  type PropertyType "ProcessingResources" ProcessingJob = ProcessingResourcesProperty
  set newValue ProcessingJob {..}
    = ProcessingJob {processingResources = newValue, ..}
instance Property "RoleArn" ProcessingJob where
  type PropertyType "RoleArn" ProcessingJob = Value Prelude.Text
  set newValue ProcessingJob {..}
    = ProcessingJob {roleArn = newValue, ..}
instance Property "StoppingCondition" ProcessingJob where
  type PropertyType "StoppingCondition" ProcessingJob = StoppingConditionProperty
  set newValue ProcessingJob {..}
    = ProcessingJob {stoppingCondition = Prelude.pure newValue, ..}
instance Property "Tags" ProcessingJob where
  type PropertyType "Tags" ProcessingJob = [Tag]
  set newValue ProcessingJob {..}
    = ProcessingJob {tags = Prelude.pure newValue, ..}