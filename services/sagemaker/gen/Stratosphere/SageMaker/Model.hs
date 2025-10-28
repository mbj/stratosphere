module Stratosphere.SageMaker.Model (
        module Exports, Model(..), mkModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Model.ContainerDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Model.InferenceExecutionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Model.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Model
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html>
    Model {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-containers>
           containers :: (Prelude.Maybe [ContainerDefinitionProperty]),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-enablenetworkisolation>
           enableNetworkIsolation :: (Prelude.Maybe (Value Prelude.Bool)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-executionrolearn>
           executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-inferenceexecutionconfig>
           inferenceExecutionConfig :: (Prelude.Maybe InferenceExecutionConfigProperty),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-modelname>
           modelName :: (Prelude.Maybe (Value Prelude.Text)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-primarycontainer>
           primaryContainer :: (Prelude.Maybe ContainerDefinitionProperty),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-vpcconfig>
           vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModel :: Model
mkModel
  = Model
      {containers = Prelude.Nothing,
       enableNetworkIsolation = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing,
       inferenceExecutionConfig = Prelude.Nothing,
       modelName = Prelude.Nothing, primaryContainer = Prelude.Nothing,
       tags = Prelude.Nothing, vpcConfig = Prelude.Nothing}
instance ToResourceProperties Model where
  toResourceProperties Model {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "EnableNetworkIsolation"
                              Prelude.<$> enableNetworkIsolation,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "InferenceExecutionConfig"
                              Prelude.<$> inferenceExecutionConfig,
                            (JSON..=) "ModelName" Prelude.<$> modelName,
                            (JSON..=) "PrimaryContainer" Prelude.<$> primaryContainer,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])}
instance JSON.ToJSON Model where
  toJSON Model {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "EnableNetworkIsolation"
                 Prelude.<$> enableNetworkIsolation,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "InferenceExecutionConfig"
                 Prelude.<$> inferenceExecutionConfig,
               (JSON..=) "ModelName" Prelude.<$> modelName,
               (JSON..=) "PrimaryContainer" Prelude.<$> primaryContainer,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))
instance Property "Containers" Model where
  type PropertyType "Containers" Model = [ContainerDefinitionProperty]
  set newValue Model {..}
    = Model {containers = Prelude.pure newValue, ..}
instance Property "EnableNetworkIsolation" Model where
  type PropertyType "EnableNetworkIsolation" Model = Value Prelude.Bool
  set newValue Model {..}
    = Model {enableNetworkIsolation = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" Model where
  type PropertyType "ExecutionRoleArn" Model = Value Prelude.Text
  set newValue Model {..}
    = Model {executionRoleArn = Prelude.pure newValue, ..}
instance Property "InferenceExecutionConfig" Model where
  type PropertyType "InferenceExecutionConfig" Model = InferenceExecutionConfigProperty
  set newValue Model {..}
    = Model {inferenceExecutionConfig = Prelude.pure newValue, ..}
instance Property "ModelName" Model where
  type PropertyType "ModelName" Model = Value Prelude.Text
  set newValue Model {..}
    = Model {modelName = Prelude.pure newValue, ..}
instance Property "PrimaryContainer" Model where
  type PropertyType "PrimaryContainer" Model = ContainerDefinitionProperty
  set newValue Model {..}
    = Model {primaryContainer = Prelude.pure newValue, ..}
instance Property "Tags" Model where
  type PropertyType "Tags" Model = [Tag]
  set newValue Model {..} = Model {tags = Prelude.pure newValue, ..}
instance Property "VpcConfig" Model where
  type PropertyType "VpcConfig" Model = VpcConfigProperty
  set newValue Model {..}
    = Model {vpcConfig = Prelude.pure newValue, ..}