module Stratosphere.SageMaker.ModelExplainabilityJobDefinition (
        module Exports, ModelExplainabilityJobDefinition(..),
        mkModelExplainabilityJobDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityAppSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityBaselineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityJobInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.MonitoringOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.MonitoringResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.NetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.StoppingConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelExplainabilityJobDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html>
    ModelExplainabilityJobDefinition {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-endpointname>
                                      endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-jobdefinitionname>
                                      jobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-jobresources>
                                      jobResources :: MonitoringResourcesProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification>
                                      modelExplainabilityAppSpecification :: ModelExplainabilityAppSpecificationProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilitybaselineconfig>
                                      modelExplainabilityBaselineConfig :: (Prelude.Maybe ModelExplainabilityBaselineConfigProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityjobinput>
                                      modelExplainabilityJobInput :: ModelExplainabilityJobInputProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityjoboutputconfig>
                                      modelExplainabilityJobOutputConfig :: MonitoringOutputConfigProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-networkconfig>
                                      networkConfig :: (Prelude.Maybe NetworkConfigProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-rolearn>
                                      roleArn :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-stoppingcondition>
                                      stoppingCondition :: (Prelude.Maybe StoppingConditionProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelexplainabilityjobdefinition.html#cfn-sagemaker-modelexplainabilityjobdefinition-tags>
                                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelExplainabilityJobDefinition ::
  MonitoringResourcesProperty
  -> ModelExplainabilityAppSpecificationProperty
     -> ModelExplainabilityJobInputProperty
        -> MonitoringOutputConfigProperty
           -> Value Prelude.Text -> ModelExplainabilityJobDefinition
mkModelExplainabilityJobDefinition
  jobResources
  modelExplainabilityAppSpecification
  modelExplainabilityJobInput
  modelExplainabilityJobOutputConfig
  roleArn
  = ModelExplainabilityJobDefinition
      {haddock_workaround_ = (), jobResources = jobResources,
       modelExplainabilityAppSpecification = modelExplainabilityAppSpecification,
       modelExplainabilityJobInput = modelExplainabilityJobInput,
       modelExplainabilityJobOutputConfig = modelExplainabilityJobOutputConfig,
       roleArn = roleArn, endpointName = Prelude.Nothing,
       jobDefinitionName = Prelude.Nothing,
       modelExplainabilityBaselineConfig = Prelude.Nothing,
       networkConfig = Prelude.Nothing,
       stoppingCondition = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ModelExplainabilityJobDefinition where
  toResourceProperties ModelExplainabilityJobDefinition {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JobResources" JSON..= jobResources,
                            "ModelExplainabilityAppSpecification"
                              JSON..= modelExplainabilityAppSpecification,
                            "ModelExplainabilityJobInput" JSON..= modelExplainabilityJobInput,
                            "ModelExplainabilityJobOutputConfig"
                              JSON..= modelExplainabilityJobOutputConfig,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                               (JSON..=) "ModelExplainabilityBaselineConfig"
                                 Prelude.<$> modelExplainabilityBaselineConfig,
                               (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                               (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ModelExplainabilityJobDefinition where
  toJSON ModelExplainabilityJobDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JobResources" JSON..= jobResources,
               "ModelExplainabilityAppSpecification"
                 JSON..= modelExplainabilityAppSpecification,
               "ModelExplainabilityJobInput" JSON..= modelExplainabilityJobInput,
               "ModelExplainabilityJobOutputConfig"
                 JSON..= modelExplainabilityJobOutputConfig,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                  (JSON..=) "ModelExplainabilityBaselineConfig"
                    Prelude.<$> modelExplainabilityBaselineConfig,
                  (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                  (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EndpointName" ModelExplainabilityJobDefinition where
  type PropertyType "EndpointName" ModelExplainabilityJobDefinition = Value Prelude.Text
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {endpointName = Prelude.pure newValue, ..}
instance Property "JobDefinitionName" ModelExplainabilityJobDefinition where
  type PropertyType "JobDefinitionName" ModelExplainabilityJobDefinition = Value Prelude.Text
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {jobDefinitionName = Prelude.pure newValue, ..}
instance Property "JobResources" ModelExplainabilityJobDefinition where
  type PropertyType "JobResources" ModelExplainabilityJobDefinition = MonitoringResourcesProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition {jobResources = newValue, ..}
instance Property "ModelExplainabilityAppSpecification" ModelExplainabilityJobDefinition where
  type PropertyType "ModelExplainabilityAppSpecification" ModelExplainabilityJobDefinition = ModelExplainabilityAppSpecificationProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {modelExplainabilityAppSpecification = newValue, ..}
instance Property "ModelExplainabilityBaselineConfig" ModelExplainabilityJobDefinition where
  type PropertyType "ModelExplainabilityBaselineConfig" ModelExplainabilityJobDefinition = ModelExplainabilityBaselineConfigProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {modelExplainabilityBaselineConfig = Prelude.pure newValue, ..}
instance Property "ModelExplainabilityJobInput" ModelExplainabilityJobDefinition where
  type PropertyType "ModelExplainabilityJobInput" ModelExplainabilityJobDefinition = ModelExplainabilityJobInputProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {modelExplainabilityJobInput = newValue, ..}
instance Property "ModelExplainabilityJobOutputConfig" ModelExplainabilityJobDefinition where
  type PropertyType "ModelExplainabilityJobOutputConfig" ModelExplainabilityJobDefinition = MonitoringOutputConfigProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {modelExplainabilityJobOutputConfig = newValue, ..}
instance Property "NetworkConfig" ModelExplainabilityJobDefinition where
  type PropertyType "NetworkConfig" ModelExplainabilityJobDefinition = NetworkConfigProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {networkConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" ModelExplainabilityJobDefinition where
  type PropertyType "RoleArn" ModelExplainabilityJobDefinition = Value Prelude.Text
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition {roleArn = newValue, ..}
instance Property "StoppingCondition" ModelExplainabilityJobDefinition where
  type PropertyType "StoppingCondition" ModelExplainabilityJobDefinition = StoppingConditionProperty
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {stoppingCondition = Prelude.pure newValue, ..}
instance Property "Tags" ModelExplainabilityJobDefinition where
  type PropertyType "Tags" ModelExplainabilityJobDefinition = [Tag]
  set newValue ModelExplainabilityJobDefinition {..}
    = ModelExplainabilityJobDefinition
        {tags = Prelude.pure newValue, ..}