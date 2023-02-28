module Stratosphere.SageMaker.DataQualityJobDefinition (
        module Exports, DataQualityJobDefinition(..),
        mkDataQualityJobDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.DataQualityAppSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.DataQualityBaselineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.DataQualityJobInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.MonitoringOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.MonitoringResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.NetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.StoppingConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataQualityJobDefinition
  = DataQualityJobDefinition {dataQualityAppSpecification :: DataQualityAppSpecificationProperty,
                              dataQualityBaselineConfig :: (Prelude.Maybe DataQualityBaselineConfigProperty),
                              dataQualityJobInput :: DataQualityJobInputProperty,
                              dataQualityJobOutputConfig :: MonitoringOutputConfigProperty,
                              endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                              jobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                              jobResources :: MonitoringResourcesProperty,
                              networkConfig :: (Prelude.Maybe NetworkConfigProperty),
                              roleArn :: (Value Prelude.Text),
                              stoppingCondition :: (Prelude.Maybe StoppingConditionProperty),
                              tags :: (Prelude.Maybe [Tag])}
mkDataQualityJobDefinition ::
  DataQualityAppSpecificationProperty
  -> DataQualityJobInputProperty
     -> MonitoringOutputConfigProperty
        -> MonitoringResourcesProperty
           -> Value Prelude.Text -> DataQualityJobDefinition
mkDataQualityJobDefinition
  dataQualityAppSpecification
  dataQualityJobInput
  dataQualityJobOutputConfig
  jobResources
  roleArn
  = DataQualityJobDefinition
      {dataQualityAppSpecification = dataQualityAppSpecification,
       dataQualityJobInput = dataQualityJobInput,
       dataQualityJobOutputConfig = dataQualityJobOutputConfig,
       jobResources = jobResources, roleArn = roleArn,
       dataQualityBaselineConfig = Prelude.Nothing,
       endpointName = Prelude.Nothing,
       jobDefinitionName = Prelude.Nothing,
       networkConfig = Prelude.Nothing,
       stoppingCondition = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DataQualityJobDefinition where
  toResourceProperties DataQualityJobDefinition {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataQualityAppSpecification" JSON..= dataQualityAppSpecification,
                            "DataQualityJobInput" JSON..= dataQualityJobInput,
                            "DataQualityJobOutputConfig" JSON..= dataQualityJobOutputConfig,
                            "JobResources" JSON..= jobResources, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DataQualityBaselineConfig"
                                 Prelude.<$> dataQualityBaselineConfig,
                               (JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                               (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                               (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataQualityJobDefinition where
  toJSON DataQualityJobDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataQualityAppSpecification" JSON..= dataQualityAppSpecification,
               "DataQualityJobInput" JSON..= dataQualityJobInput,
               "DataQualityJobOutputConfig" JSON..= dataQualityJobOutputConfig,
               "JobResources" JSON..= jobResources, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DataQualityBaselineConfig"
                    Prelude.<$> dataQualityBaselineConfig,
                  (JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                  (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                  (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataQualityAppSpecification" DataQualityJobDefinition where
  type PropertyType "DataQualityAppSpecification" DataQualityJobDefinition = DataQualityAppSpecificationProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {dataQualityAppSpecification = newValue, ..}
instance Property "DataQualityBaselineConfig" DataQualityJobDefinition where
  type PropertyType "DataQualityBaselineConfig" DataQualityJobDefinition = DataQualityBaselineConfigProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {dataQualityBaselineConfig = Prelude.pure newValue, ..}
instance Property "DataQualityJobInput" DataQualityJobDefinition where
  type PropertyType "DataQualityJobInput" DataQualityJobDefinition = DataQualityJobInputProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition {dataQualityJobInput = newValue, ..}
instance Property "DataQualityJobOutputConfig" DataQualityJobDefinition where
  type PropertyType "DataQualityJobOutputConfig" DataQualityJobDefinition = MonitoringOutputConfigProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {dataQualityJobOutputConfig = newValue, ..}
instance Property "EndpointName" DataQualityJobDefinition where
  type PropertyType "EndpointName" DataQualityJobDefinition = Value Prelude.Text
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {endpointName = Prelude.pure newValue, ..}
instance Property "JobDefinitionName" DataQualityJobDefinition where
  type PropertyType "JobDefinitionName" DataQualityJobDefinition = Value Prelude.Text
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {jobDefinitionName = Prelude.pure newValue, ..}
instance Property "JobResources" DataQualityJobDefinition where
  type PropertyType "JobResources" DataQualityJobDefinition = MonitoringResourcesProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition {jobResources = newValue, ..}
instance Property "NetworkConfig" DataQualityJobDefinition where
  type PropertyType "NetworkConfig" DataQualityJobDefinition = NetworkConfigProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {networkConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" DataQualityJobDefinition where
  type PropertyType "RoleArn" DataQualityJobDefinition = Value Prelude.Text
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition {roleArn = newValue, ..}
instance Property "StoppingCondition" DataQualityJobDefinition where
  type PropertyType "StoppingCondition" DataQualityJobDefinition = StoppingConditionProperty
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition
        {stoppingCondition = Prelude.pure newValue, ..}
instance Property "Tags" DataQualityJobDefinition where
  type PropertyType "Tags" DataQualityJobDefinition = [Tag]
  set newValue DataQualityJobDefinition {..}
    = DataQualityJobDefinition {tags = Prelude.pure newValue, ..}