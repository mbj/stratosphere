module Stratosphere.SageMaker.InferenceComponent.InferenceComponentDeploymentConfigProperty (
        module Exports, InferenceComponentDeploymentConfigProperty(..),
        mkInferenceComponentDeploymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.AutoRollbackConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentRollingUpdatePolicyProperty as Exports
import Stratosphere.ResourceProperties
data InferenceComponentDeploymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig.html>
    InferenceComponentDeploymentConfigProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig-autorollbackconfiguration>
                                                autoRollbackConfiguration :: (Prelude.Maybe AutoRollbackConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig-rollingupdatepolicy>
                                                rollingUpdatePolicy :: (Prelude.Maybe InferenceComponentRollingUpdatePolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentDeploymentConfigProperty ::
  InferenceComponentDeploymentConfigProperty
mkInferenceComponentDeploymentConfigProperty
  = InferenceComponentDeploymentConfigProperty
      {haddock_workaround_ = (),
       autoRollbackConfiguration = Prelude.Nothing,
       rollingUpdatePolicy = Prelude.Nothing}
instance ToResourceProperties InferenceComponentDeploymentConfigProperty where
  toResourceProperties
    InferenceComponentDeploymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentDeploymentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoRollbackConfiguration"
                              Prelude.<$> autoRollbackConfiguration,
                            (JSON..=) "RollingUpdatePolicy" Prelude.<$> rollingUpdatePolicy])}
instance JSON.ToJSON InferenceComponentDeploymentConfigProperty where
  toJSON InferenceComponentDeploymentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoRollbackConfiguration"
                 Prelude.<$> autoRollbackConfiguration,
               (JSON..=) "RollingUpdatePolicy" Prelude.<$> rollingUpdatePolicy]))
instance Property "AutoRollbackConfiguration" InferenceComponentDeploymentConfigProperty where
  type PropertyType "AutoRollbackConfiguration" InferenceComponentDeploymentConfigProperty = AutoRollbackConfigurationProperty
  set newValue InferenceComponentDeploymentConfigProperty {..}
    = InferenceComponentDeploymentConfigProperty
        {autoRollbackConfiguration = Prelude.pure newValue, ..}
instance Property "RollingUpdatePolicy" InferenceComponentDeploymentConfigProperty where
  type PropertyType "RollingUpdatePolicy" InferenceComponentDeploymentConfigProperty = InferenceComponentRollingUpdatePolicyProperty
  set newValue InferenceComponentDeploymentConfigProperty {..}
    = InferenceComponentDeploymentConfigProperty
        {rollingUpdatePolicy = Prelude.pure newValue, ..}