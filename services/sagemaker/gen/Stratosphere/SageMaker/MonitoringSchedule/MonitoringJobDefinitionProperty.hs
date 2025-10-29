module Stratosphere.SageMaker.MonitoringSchedule.MonitoringJobDefinitionProperty (
        module Exports, MonitoringJobDefinitionProperty(..),
        mkMonitoringJobDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.BaselineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringAppSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.NetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.StoppingConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringJobDefinitionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html>
    MonitoringJobDefinitionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-baselineconfig>
                                     baselineConfig :: (Prelude.Maybe BaselineConfigProperty),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-environment>
                                     environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringappspecification>
                                     monitoringAppSpecification :: MonitoringAppSpecificationProperty,
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringinputs>
                                     monitoringInputs :: [MonitoringInputProperty],
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringoutputconfig>
                                     monitoringOutputConfig :: MonitoringOutputConfigProperty,
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringresources>
                                     monitoringResources :: MonitoringResourcesProperty,
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-networkconfig>
                                     networkConfig :: (Prelude.Maybe NetworkConfigProperty),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-rolearn>
                                     roleArn :: (Value Prelude.Text),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-stoppingcondition>
                                     stoppingCondition :: (Prelude.Maybe StoppingConditionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringJobDefinitionProperty ::
  MonitoringAppSpecificationProperty
  -> [MonitoringInputProperty]
     -> MonitoringOutputConfigProperty
        -> MonitoringResourcesProperty
           -> Value Prelude.Text -> MonitoringJobDefinitionProperty
mkMonitoringJobDefinitionProperty
  monitoringAppSpecification
  monitoringInputs
  monitoringOutputConfig
  monitoringResources
  roleArn
  = MonitoringJobDefinitionProperty
      {monitoringAppSpecification = monitoringAppSpecification,
       monitoringInputs = monitoringInputs,
       monitoringOutputConfig = monitoringOutputConfig,
       monitoringResources = monitoringResources, roleArn = roleArn,
       baselineConfig = Prelude.Nothing, environment = Prelude.Nothing,
       networkConfig = Prelude.Nothing,
       stoppingCondition = Prelude.Nothing}
instance ToResourceProperties MonitoringJobDefinitionProperty where
  toResourceProperties MonitoringJobDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.MonitoringJobDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MonitoringAppSpecification" JSON..= monitoringAppSpecification,
                            "MonitoringInputs" JSON..= monitoringInputs,
                            "MonitoringOutputConfig" JSON..= monitoringOutputConfig,
                            "MonitoringResources" JSON..= monitoringResources,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BaselineConfig" Prelude.<$> baselineConfig,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                               (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition]))}
instance JSON.ToJSON MonitoringJobDefinitionProperty where
  toJSON MonitoringJobDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MonitoringAppSpecification" JSON..= monitoringAppSpecification,
               "MonitoringInputs" JSON..= monitoringInputs,
               "MonitoringOutputConfig" JSON..= monitoringOutputConfig,
               "MonitoringResources" JSON..= monitoringResources,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "BaselineConfig" Prelude.<$> baselineConfig,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "NetworkConfig" Prelude.<$> networkConfig,
                  (JSON..=) "StoppingCondition" Prelude.<$> stoppingCondition])))
instance Property "BaselineConfig" MonitoringJobDefinitionProperty where
  type PropertyType "BaselineConfig" MonitoringJobDefinitionProperty = BaselineConfigProperty
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {baselineConfig = Prelude.pure newValue, ..}
instance Property "Environment" MonitoringJobDefinitionProperty where
  type PropertyType "Environment" MonitoringJobDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {environment = Prelude.pure newValue, ..}
instance Property "MonitoringAppSpecification" MonitoringJobDefinitionProperty where
  type PropertyType "MonitoringAppSpecification" MonitoringJobDefinitionProperty = MonitoringAppSpecificationProperty
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {monitoringAppSpecification = newValue, ..}
instance Property "MonitoringInputs" MonitoringJobDefinitionProperty where
  type PropertyType "MonitoringInputs" MonitoringJobDefinitionProperty = [MonitoringInputProperty]
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty {monitoringInputs = newValue, ..}
instance Property "MonitoringOutputConfig" MonitoringJobDefinitionProperty where
  type PropertyType "MonitoringOutputConfig" MonitoringJobDefinitionProperty = MonitoringOutputConfigProperty
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {monitoringOutputConfig = newValue, ..}
instance Property "MonitoringResources" MonitoringJobDefinitionProperty where
  type PropertyType "MonitoringResources" MonitoringJobDefinitionProperty = MonitoringResourcesProperty
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {monitoringResources = newValue, ..}
instance Property "NetworkConfig" MonitoringJobDefinitionProperty where
  type PropertyType "NetworkConfig" MonitoringJobDefinitionProperty = NetworkConfigProperty
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {networkConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" MonitoringJobDefinitionProperty where
  type PropertyType "RoleArn" MonitoringJobDefinitionProperty = Value Prelude.Text
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty {roleArn = newValue, ..}
instance Property "StoppingCondition" MonitoringJobDefinitionProperty where
  type PropertyType "StoppingCondition" MonitoringJobDefinitionProperty = StoppingConditionProperty
  set newValue MonitoringJobDefinitionProperty {..}
    = MonitoringJobDefinitionProperty
        {stoppingCondition = Prelude.pure newValue, ..}