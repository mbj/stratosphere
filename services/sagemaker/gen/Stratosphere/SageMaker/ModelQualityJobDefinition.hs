module Stratosphere.SageMaker.ModelQualityJobDefinition (
        module Exports, ModelQualityJobDefinition(..),
        mkModelQualityJobDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.ModelQualityAppSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.ModelQualityBaselineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.ModelQualityJobInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.MonitoringOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.MonitoringResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.NetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.StoppingConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelQualityJobDefinition
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html>
    ModelQualityJobDefinition {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-endpointname>
                               endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-jobdefinitionname>
                               jobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-jobresources>
                               jobResources :: MonitoringResourcesProperty,
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification>
                               modelQualityAppSpecification :: ModelQualityAppSpecificationProperty,
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-modelqualitybaselineconfig>
                               modelQualityBaselineConfig :: (Prelude.Maybe ModelQualityBaselineConfigProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjobinput>
                               modelQualityJobInput :: ModelQualityJobInputProperty,
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjoboutputconfig>
                               modelQualityJobOutputConfig :: MonitoringOutputConfigProperty,
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-networkconfig>
                               networkConfig :: (Prelude.Maybe NetworkConfigProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-rolearn>
                               roleArn :: (Value Prelude.Text),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-stoppingcondition>
                               stoppingCondition :: (Prelude.Maybe StoppingConditionProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelqualityjobdefinition.html#cfn-sagemaker-modelqualityjobdefinition-tags>
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelQualityJobDefinition ::
  MonitoringResourcesProperty
  -> ModelQualityAppSpecificationProperty
     -> ModelQualityJobInputProperty
        -> MonitoringOutputConfigProperty
           -> Value Prelude.Text -> ModelQualityJobDefinition
mkModelQualityJobDefinition
  jobResources
  modelQualityAppSpecification
  modelQualityJobInput
  modelQualityJobOutputConfig
  roleArn
  = ModelQualityJobDefinition
      {jobResources = jobResources,
       modelQualityAppSpecification = modelQualityAppSpecification,
       modelQualityJobInput = modelQualityJobInput,
       modelQualityJobOutputConfig = modelQualityJobOutputConfig,
       roleArn = roleArn, endpointName = Prelude.Nothing,
       jobDefinitionName = Prelude.Nothing,
       modelQualityBaselineConfig = Prelude.Nothing,
       networkConfig = Prelude.Nothing,
       stoppingCondition = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ModelQualityJobDefinition where
  toResourceProperties ModelQualityJobDefinition {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JobResources" JSON..= jobResources,
                            "ModelQualityAppSpecification"
                              JSON..= modelQualityAppSpecification,
                            "ModelQualityJobInput" JSON..= modelQualityJobInput,
                            "ModelQualityJobOutputConfig" JSON..= modelQualityJobOutputConfig,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                               (JSON..=) "ModelQualityBaselineConfig"
                                 Prelude.<$> modelQualityBaselineConfig,
                               (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                               (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ModelQualityJobDefinition where
  toJSON ModelQualityJobDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JobResources" JSON..= jobResources,
               "ModelQualityAppSpecification"
                 JSON..= modelQualityAppSpecification,
               "ModelQualityJobInput" JSON..= modelQualityJobInput,
               "ModelQualityJobOutputConfig" JSON..= modelQualityJobOutputConfig,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                  (JSON..=) "ModelQualityBaselineConfig"
                    Prelude.<$> modelQualityBaselineConfig,
                  (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                  (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EndpointName" ModelQualityJobDefinition where
  type PropertyType "EndpointName" ModelQualityJobDefinition = Value Prelude.Text
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {endpointName = Prelude.pure newValue, ..}
instance Property "JobDefinitionName" ModelQualityJobDefinition where
  type PropertyType "JobDefinitionName" ModelQualityJobDefinition = Value Prelude.Text
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {jobDefinitionName = Prelude.pure newValue, ..}
instance Property "JobResources" ModelQualityJobDefinition where
  type PropertyType "JobResources" ModelQualityJobDefinition = MonitoringResourcesProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition {jobResources = newValue, ..}
instance Property "ModelQualityAppSpecification" ModelQualityJobDefinition where
  type PropertyType "ModelQualityAppSpecification" ModelQualityJobDefinition = ModelQualityAppSpecificationProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {modelQualityAppSpecification = newValue, ..}
instance Property "ModelQualityBaselineConfig" ModelQualityJobDefinition where
  type PropertyType "ModelQualityBaselineConfig" ModelQualityJobDefinition = ModelQualityBaselineConfigProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {modelQualityBaselineConfig = Prelude.pure newValue, ..}
instance Property "ModelQualityJobInput" ModelQualityJobDefinition where
  type PropertyType "ModelQualityJobInput" ModelQualityJobDefinition = ModelQualityJobInputProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition {modelQualityJobInput = newValue, ..}
instance Property "ModelQualityJobOutputConfig" ModelQualityJobDefinition where
  type PropertyType "ModelQualityJobOutputConfig" ModelQualityJobDefinition = MonitoringOutputConfigProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {modelQualityJobOutputConfig = newValue, ..}
instance Property "NetworkConfig" ModelQualityJobDefinition where
  type PropertyType "NetworkConfig" ModelQualityJobDefinition = NetworkConfigProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {networkConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" ModelQualityJobDefinition where
  type PropertyType "RoleArn" ModelQualityJobDefinition = Value Prelude.Text
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition {roleArn = newValue, ..}
instance Property "StoppingCondition" ModelQualityJobDefinition where
  type PropertyType "StoppingCondition" ModelQualityJobDefinition = StoppingConditionProperty
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition
        {stoppingCondition = Prelude.pure newValue, ..}
instance Property "Tags" ModelQualityJobDefinition where
  type PropertyType "Tags" ModelQualityJobDefinition = [Tag]
  set newValue ModelQualityJobDefinition {..}
    = ModelQualityJobDefinition {tags = Prelude.pure newValue, ..}