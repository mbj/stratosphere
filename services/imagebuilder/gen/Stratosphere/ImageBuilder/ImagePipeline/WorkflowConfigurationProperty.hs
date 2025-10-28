module Stratosphere.ImageBuilder.ImagePipeline.WorkflowConfigurationProperty (
        module Exports, WorkflowConfigurationProperty(..),
        mkWorkflowConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.WorkflowParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowconfiguration.html>
    WorkflowConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowconfiguration.html#cfn-imagebuilder-imagepipeline-workflowconfiguration-onfailure>
                                   onFailure :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowconfiguration.html#cfn-imagebuilder-imagepipeline-workflowconfiguration-parallelgroup>
                                   parallelGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowconfiguration.html#cfn-imagebuilder-imagepipeline-workflowconfiguration-parameters>
                                   parameters :: (Prelude.Maybe [WorkflowParameterProperty]),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowconfiguration.html#cfn-imagebuilder-imagepipeline-workflowconfiguration-workflowarn>
                                   workflowArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowConfigurationProperty :: WorkflowConfigurationProperty
mkWorkflowConfigurationProperty
  = WorkflowConfigurationProperty
      {onFailure = Prelude.Nothing, parallelGroup = Prelude.Nothing,
       parameters = Prelude.Nothing, workflowArn = Prelude.Nothing}
instance ToResourceProperties WorkflowConfigurationProperty where
  toResourceProperties WorkflowConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.WorkflowConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnFailure" Prelude.<$> onFailure,
                            (JSON..=) "ParallelGroup" Prelude.<$> parallelGroup,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "WorkflowArn" Prelude.<$> workflowArn])}
instance JSON.ToJSON WorkflowConfigurationProperty where
  toJSON WorkflowConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnFailure" Prelude.<$> onFailure,
               (JSON..=) "ParallelGroup" Prelude.<$> parallelGroup,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "WorkflowArn" Prelude.<$> workflowArn]))
instance Property "OnFailure" WorkflowConfigurationProperty where
  type PropertyType "OnFailure" WorkflowConfigurationProperty = Value Prelude.Text
  set newValue WorkflowConfigurationProperty {..}
    = WorkflowConfigurationProperty
        {onFailure = Prelude.pure newValue, ..}
instance Property "ParallelGroup" WorkflowConfigurationProperty where
  type PropertyType "ParallelGroup" WorkflowConfigurationProperty = Value Prelude.Text
  set newValue WorkflowConfigurationProperty {..}
    = WorkflowConfigurationProperty
        {parallelGroup = Prelude.pure newValue, ..}
instance Property "Parameters" WorkflowConfigurationProperty where
  type PropertyType "Parameters" WorkflowConfigurationProperty = [WorkflowParameterProperty]
  set newValue WorkflowConfigurationProperty {..}
    = WorkflowConfigurationProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "WorkflowArn" WorkflowConfigurationProperty where
  type PropertyType "WorkflowArn" WorkflowConfigurationProperty = Value Prelude.Text
  set newValue WorkflowConfigurationProperty {..}
    = WorkflowConfigurationProperty
        {workflowArn = Prelude.pure newValue, ..}