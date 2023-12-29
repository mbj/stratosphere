module Stratosphere.SageMaker.ModelBiasJobDefinition (
        module Exports, ModelBiasJobDefinition(..),
        mkModelBiasJobDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.ModelBiasAppSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.ModelBiasBaselineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.ModelBiasJobInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.MonitoringOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.MonitoringResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.NetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.StoppingConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelBiasJobDefinition
  = ModelBiasJobDefinition {endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                            jobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                            jobResources :: MonitoringResourcesProperty,
                            modelBiasAppSpecification :: ModelBiasAppSpecificationProperty,
                            modelBiasBaselineConfig :: (Prelude.Maybe ModelBiasBaselineConfigProperty),
                            modelBiasJobInput :: ModelBiasJobInputProperty,
                            modelBiasJobOutputConfig :: MonitoringOutputConfigProperty,
                            networkConfig :: (Prelude.Maybe NetworkConfigProperty),
                            roleArn :: (Value Prelude.Text),
                            stoppingCondition :: (Prelude.Maybe StoppingConditionProperty),
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelBiasJobDefinition ::
  MonitoringResourcesProperty
  -> ModelBiasAppSpecificationProperty
     -> ModelBiasJobInputProperty
        -> MonitoringOutputConfigProperty
           -> Value Prelude.Text -> ModelBiasJobDefinition
mkModelBiasJobDefinition
  jobResources
  modelBiasAppSpecification
  modelBiasJobInput
  modelBiasJobOutputConfig
  roleArn
  = ModelBiasJobDefinition
      {jobResources = jobResources,
       modelBiasAppSpecification = modelBiasAppSpecification,
       modelBiasJobInput = modelBiasJobInput,
       modelBiasJobOutputConfig = modelBiasJobOutputConfig,
       roleArn = roleArn, endpointName = Prelude.Nothing,
       jobDefinitionName = Prelude.Nothing,
       modelBiasBaselineConfig = Prelude.Nothing,
       networkConfig = Prelude.Nothing,
       stoppingCondition = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ModelBiasJobDefinition where
  toResourceProperties ModelBiasJobDefinition {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JobResources" JSON..= jobResources,
                            "ModelBiasAppSpecification" JSON..= modelBiasAppSpecification,
                            "ModelBiasJobInput" JSON..= modelBiasJobInput,
                            "ModelBiasJobOutputConfig" JSON..= modelBiasJobOutputConfig,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                               (JSON..=) "ModelBiasBaselineConfig"
                                 Prelude.<$> modelBiasBaselineConfig,
                               (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                               (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ModelBiasJobDefinition where
  toJSON ModelBiasJobDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JobResources" JSON..= jobResources,
               "ModelBiasAppSpecification" JSON..= modelBiasAppSpecification,
               "ModelBiasJobInput" JSON..= modelBiasJobInput,
               "ModelBiasJobOutputConfig" JSON..= modelBiasJobOutputConfig,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                  (JSON..=) "ModelBiasBaselineConfig"
                    Prelude.<$> modelBiasBaselineConfig,
                  (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                  (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EndpointName" ModelBiasJobDefinition where
  type PropertyType "EndpointName" ModelBiasJobDefinition = Value Prelude.Text
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {endpointName = Prelude.pure newValue, ..}
instance Property "JobDefinitionName" ModelBiasJobDefinition where
  type PropertyType "JobDefinitionName" ModelBiasJobDefinition = Value Prelude.Text
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition
        {jobDefinitionName = Prelude.pure newValue, ..}
instance Property "JobResources" ModelBiasJobDefinition where
  type PropertyType "JobResources" ModelBiasJobDefinition = MonitoringResourcesProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {jobResources = newValue, ..}
instance Property "ModelBiasAppSpecification" ModelBiasJobDefinition where
  type PropertyType "ModelBiasAppSpecification" ModelBiasJobDefinition = ModelBiasAppSpecificationProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {modelBiasAppSpecification = newValue, ..}
instance Property "ModelBiasBaselineConfig" ModelBiasJobDefinition where
  type PropertyType "ModelBiasBaselineConfig" ModelBiasJobDefinition = ModelBiasBaselineConfigProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition
        {modelBiasBaselineConfig = Prelude.pure newValue, ..}
instance Property "ModelBiasJobInput" ModelBiasJobDefinition where
  type PropertyType "ModelBiasJobInput" ModelBiasJobDefinition = ModelBiasJobInputProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {modelBiasJobInput = newValue, ..}
instance Property "ModelBiasJobOutputConfig" ModelBiasJobDefinition where
  type PropertyType "ModelBiasJobOutputConfig" ModelBiasJobDefinition = MonitoringOutputConfigProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {modelBiasJobOutputConfig = newValue, ..}
instance Property "NetworkConfig" ModelBiasJobDefinition where
  type PropertyType "NetworkConfig" ModelBiasJobDefinition = NetworkConfigProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition
        {networkConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" ModelBiasJobDefinition where
  type PropertyType "RoleArn" ModelBiasJobDefinition = Value Prelude.Text
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {roleArn = newValue, ..}
instance Property "StoppingCondition" ModelBiasJobDefinition where
  type PropertyType "StoppingCondition" ModelBiasJobDefinition = StoppingConditionProperty
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition
        {stoppingCondition = Prelude.pure newValue, ..}
instance Property "Tags" ModelBiasJobDefinition where
  type PropertyType "Tags" ModelBiasJobDefinition = [Tag]
  set newValue ModelBiasJobDefinition {..}
    = ModelBiasJobDefinition {tags = Prelude.pure newValue, ..}